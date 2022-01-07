; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_wm8775.c_wm8775_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_wm8775.c_wm8775_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm8775_state = type { i32, %struct.TYPE_5__, i32, %struct.v4l2_subdev }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_5__* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8775_ops = common dso_local global i32 0, align 4
@wm8775_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@R23 = common dso_local global i32 0, align 4
@R7 = common dso_local global i32 0, align 4
@R11 = common dso_local global i32 0, align 4
@R12 = common dso_local global i32 0, align 4
@R13 = common dso_local global i32 0, align 4
@R14 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@R16 = common dso_local global i32 0, align 4
@R17 = common dso_local global i32 0, align 4
@R18 = common dso_local global i32 0, align 4
@R19 = common dso_local global i32 0, align 4
@R20 = common dso_local global i32 0, align 4
@R21 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8775_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8775_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8775_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = call i32 @i2c_check_functionality(%struct.TYPE_6__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %114

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @v4l_info(%struct.i2c_client* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.wm8775_state* @kzalloc(i32 24, i32 %30)
  store %struct.wm8775_state* %31, %struct.wm8775_state** %6, align 8
  %32 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %33 = icmp eq %struct.wm8775_state* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %114

37:                                               ; preds = %18
  %38 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %39 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %38, i32 0, i32 3
  store %struct.v4l2_subdev* %39, %struct.v4l2_subdev** %7, align 8
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %40, %struct.i2c_client* %41, i32* @wm8775_ops)
  %43 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %44 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %43, i32 0, i32 0
  store i32 2, i32* %44, align 8
  %45 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %46 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %45, i32 0, i32 1
  %47 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__* %46, i32 1)
  %48 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %49 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %48, i32 0, i32 1
  %50 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %51 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_5__* %49, i32* @wm8775_ctrl_ops, i32 %50, i32 0, i32 1, i32 1, i32 0)
  %52 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %53 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %55 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %54, i32 0, i32 1
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %56, i32 0, i32 0
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %57, align 8
  %58 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %59 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %37
  %64 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %65 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %69 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %68, i32 0, i32 1
  %70 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__* %69)
  %71 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %72 = call i32 @kfree(%struct.wm8775_state* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %114

74:                                               ; preds = %37
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %76 = load i32, i32* @R23, align 4
  %77 = call i32 @wm8775_write(%struct.v4l2_subdev* %75, i32 %76, i32 0)
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %79 = load i32, i32* @R7, align 4
  %80 = call i32 @wm8775_write(%struct.v4l2_subdev* %78, i32 %79, i32 0)
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %82 = load i32, i32* @R11, align 4
  %83 = call i32 @wm8775_write(%struct.v4l2_subdev* %81, i32 %82, i32 33)
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %85 = load i32, i32* @R12, align 4
  %86 = call i32 @wm8775_write(%struct.v4l2_subdev* %84, i32 %85, i32 258)
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %88 = load i32, i32* @R13, align 4
  %89 = call i32 @wm8775_write(%struct.v4l2_subdev* %87, i32 %88, i32 0)
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %91 = load i32, i32* @R14, align 4
  %92 = call i32 @wm8775_write(%struct.v4l2_subdev* %90, i32 %91, i32 468)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %94 = load i32, i32* @R15, align 4
  %95 = call i32 @wm8775_write(%struct.v4l2_subdev* %93, i32 %94, i32 468)
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %97 = load i32, i32* @R16, align 4
  %98 = call i32 @wm8775_write(%struct.v4l2_subdev* %96, i32 %97, i32 447)
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %100 = load i32, i32* @R17, align 4
  %101 = call i32 @wm8775_write(%struct.v4l2_subdev* %99, i32 %100, i32 389)
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %103 = load i32, i32* @R18, align 4
  %104 = call i32 @wm8775_write(%struct.v4l2_subdev* %102, i32 %103, i32 162)
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %106 = load i32, i32* @R19, align 4
  %107 = call i32 @wm8775_write(%struct.v4l2_subdev* %105, i32 %106, i32 5)
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %109 = load i32, i32* @R20, align 4
  %110 = call i32 @wm8775_write(%struct.v4l2_subdev* %108, i32 %109, i32 122)
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %112 = load i32, i32* @R21, align 4
  %113 = call i32 @wm8775_write(%struct.v4l2_subdev* %111, i32 %112, i32 258)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %74, %63, %34, %15
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.wm8775_state* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.wm8775_state*) #1

declare dso_local i32 @wm8775_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
