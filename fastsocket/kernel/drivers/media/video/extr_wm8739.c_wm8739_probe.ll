; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_wm8739.c_wm8739_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_wm8739.c_wm8739_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm8739_state = type { i32, %struct.TYPE_6__, i8*, i8*, i8*, %struct.v4l2_subdev }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_6__* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8739_ops = common dso_local global i32 0, align 4
@wm8739_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BALANCE = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@R6 = common dso_local global i32 0, align 4
@R7 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8739_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8739_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8739_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = call i32 @i2c_check_functionality(%struct.TYPE_7__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %111

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @v4l_info(%struct.i2c_client* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.wm8739_state* @kzalloc(i32 40, i32 %30)
  store %struct.wm8739_state* %31, %struct.wm8739_state** %6, align 8
  %32 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %33 = icmp eq %struct.wm8739_state* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %111

37:                                               ; preds = %18
  %38 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %39 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %38, i32 0, i32 5
  store %struct.v4l2_subdev* %39, %struct.v4l2_subdev** %7, align 8
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %40, %struct.i2c_client* %41, i32* @wm8739_ops)
  %43 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %44 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %43, i32 0, i32 1
  %45 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__* %44, i32 2)
  %46 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %47 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %46, i32 0, i32 1
  %48 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %49 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %47, i32* @wm8739_ctrl_ops, i32 %48, i32 0, i32 65535, i32 655, i32 50736)
  %50 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %51 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %53 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %52, i32 0, i32 1
  %54 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %55 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %53, i32* @wm8739_ctrl_ops, i32 %54, i32 0, i32 1, i32 1, i32 0)
  %56 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %57 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %59 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %58, i32 0, i32 1
  %60 = load i32, i32* @V4L2_CID_AUDIO_BALANCE, align 4
  %61 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_6__* %59, i32* @wm8739_ctrl_ops, i32 %60, i32 0, i32 65535, i32 655, i32 32768)
  %62 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %63 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %65 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %64, i32 0, i32 1
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %66, i32 0, i32 0
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %67, align 8
  %68 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %69 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %37
  %74 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %75 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %79 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %78, i32 0, i32 1
  %80 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__* %79)
  %81 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %82 = call i32 @kfree(%struct.wm8739_state* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %111

84:                                               ; preds = %37
  %85 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %86 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %85, i32 0, i32 2
  %87 = call i32 @v4l2_ctrl_cluster(i32 3, i8** %86)
  %88 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %89 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %88, i32 0, i32 0
  store i32 48000, i32* %89, align 8
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %91 = load i32, i32* @R15, align 4
  %92 = call i32 @wm8739_write(%struct.v4l2_subdev* %90, i32 %91, i32 0)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %94 = load i32, i32* @R5, align 4
  %95 = call i32 @wm8739_write(%struct.v4l2_subdev* %93, i32 %94, i32 0)
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %97 = load i32, i32* @R6, align 4
  %98 = call i32 @wm8739_write(%struct.v4l2_subdev* %96, i32 %97, i32 0)
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %100 = load i32, i32* @R7, align 4
  %101 = call i32 @wm8739_write(%struct.v4l2_subdev* %99, i32 %100, i32 73)
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %103 = load i32, i32* @R8, align 4
  %104 = call i32 @wm8739_write(%struct.v4l2_subdev* %102, i32 %103, i32 0)
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %106 = load i32, i32* @R9, align 4
  %107 = call i32 @wm8739_write(%struct.v4l2_subdev* %105, i32 %106, i32 1)
  %108 = load %struct.wm8739_state*, %struct.wm8739_state** %6, align 8
  %109 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %108, i32 0, i32 1
  %110 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_6__* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %84, %73, %34, %15
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.wm8739_state* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.wm8739_state*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @wm8739_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
