; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-gpio.c_subdev_s_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-gpio.c_subdev_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32 }
%struct.ivtv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@IVTV_REG_GPIO_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @subdev_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subdev_s_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_tuner*, align 8
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.ivtv* @sd_to_ivtv(%struct.v4l2_subdev* %8)
  store %struct.ivtv* %9, %struct.ivtv** %5, align 8
  %10 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %41 [
    i32 132, label %19
    i32 130, label %26
    i32 129, label %33
    i32 128, label %40
    i32 131, label %40
  ]

19:                                               ; preds = %2
  %20 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %21 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  br label %48

26:                                               ; preds = %2
  %27 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %28 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %48

33:                                               ; preds = %2
  %34 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  br label %48

40:                                               ; preds = %2, %2
  br label %41

41:                                               ; preds = %2, %40
  %42 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %43 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41, %33, %26, %19
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %53 = call i32 @read_reg(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %57, %58
  %60 = or i32 %56, %59
  %61 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %62 = call i32 @write_reg(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %51, %48
  ret i32 0
}

declare dso_local %struct.ivtv* @sd_to_ivtv(%struct.v4l2_subdev*) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
