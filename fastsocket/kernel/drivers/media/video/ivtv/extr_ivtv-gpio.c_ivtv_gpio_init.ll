; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-gpio.c_ivtv_gpio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-gpio.c_ivtv_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_11__, %struct.TYPE_12__, %struct.TYPE_13__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"GPIO initial dir: %08x out: %08x\0A\00", align 1
@IVTV_REG_GPIO_DIR = common dso_local global i32 0, align 4
@IVTV_REG_GPIO_OUT = common dso_local global i32 0, align 4
@subdev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s-gpio\00", align 1
@IVTV_HW_GPIO = common dso_local global i32 0, align 4
@gpio_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_gpio_init(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %6 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %5, i32 0, i32 3
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %20 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %102

29:                                               ; preds = %18
  %30 = load i32, i32* @IVTV_REG_GPIO_DIR, align 4
  %31 = call i32 @read_reg(i32 %30)
  %32 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %33 = call i32 @read_reg(i32 %32)
  %34 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %44 = call i32 @write_reg(i32 %42, i32 %43)
  %45 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %46 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %45, i32 0, i32 3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @IVTV_REG_GPIO_DIR, align 4
  %54 = call i32 @write_reg(i32 %52, i32 %53)
  %55 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %56 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %55, i32 0, i32 0
  %57 = call i32 @v4l2_subdev_init(%struct.TYPE_11__* %56, i32* @subdev_ops)
  %58 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %59 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %63 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @snprintf(i32 %61, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @IVTV_HW_GPIO, align 4
  %68 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %69 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %72 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %71, i32 0, i32 2
  %73 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_13__* %72, i32 1)
  %74 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %75 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %74, i32 0, i32 2
  %76 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %77 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_13__* %75, i32* @gpio_ctrl_ops, i32 %76, i32 0, i32 1, i32 1, i32 0)
  %78 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %79 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %29
  %84 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %85 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %2, align 4
  br label %102

88:                                               ; preds = %29
  %89 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %90 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %89, i32 0, i32 2
  %91 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %92 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %93, align 8
  %94 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %95 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %94, i32 0, i32 2
  %96 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_13__* %95)
  %97 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %98 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %97, i32 0, i32 1
  %99 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %100 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %99, i32 0, i32 0
  %101 = call i32 @v4l2_device_register_subdev(%struct.TYPE_12__* %98, %struct.TYPE_11__* %100)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %88, %83, %28
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i32, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_13__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_13__*) #1

declare dso_local i32 @v4l2_device_register_subdev(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
