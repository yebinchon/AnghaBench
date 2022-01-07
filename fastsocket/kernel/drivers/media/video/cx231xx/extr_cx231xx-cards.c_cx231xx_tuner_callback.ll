; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-cards.c_cx231xx_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-cards.c_cx231xx_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TUNER_XC5000 = common dso_local global i64 0, align 8
@XC5000_TUNER_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Tuner CB: RESET: cmd %d : tuner type %d \0A\00", align 1
@TUNER_NXP_TDA18271 = common dso_local global i64 0, align 8
@CX231XX_BOARD_PV_PLAYTV_USB_HYBRID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_tuner_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cx231xx*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.cx231xx*
  store %struct.cx231xx* %12, %struct.cx231xx** %10, align 8
  %13 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TUNER_XC5000, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @XC5000_TUNER_RESET, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @cx231xx_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %26)
  %28 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %29 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %30 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cx231xx_set_gpio_value(%struct.cx231xx* %28, i32 %34, i32 1)
  %36 = call i32 @msleep(i32 10)
  %37 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %38 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %39 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cx231xx_set_gpio_value(%struct.cx231xx* %37, i32 %43, i32 0)
  %45 = call i32 @msleep(i32 330)
  %46 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %47 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %48 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cx231xx_set_gpio_value(%struct.cx231xx* %46, i32 %52, i32 1)
  %54 = call i32 @msleep(i32 10)
  br label %55

55:                                               ; preds = %22, %18
  br label %80

56:                                               ; preds = %4
  %57 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %58 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TUNER_NXP_TDA18271, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %75 [
    i32 128, label %64
  ]

64:                                               ; preds = %62
  %65 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %66 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CX231XX_BOARD_PV_PLAYTV_USB_HYBRID, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @cx231xx_set_agc_analog_digital_mux_select(%struct.cx231xx* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %64
  br label %78

75:                                               ; preds = %62
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %75, %74
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %55
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @cx231xx_info(i8*, i32, i64) #1

declare dso_local i32 @cx231xx_set_gpio_value(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cx231xx_set_agc_analog_digital_mux_select(%struct.cx231xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
