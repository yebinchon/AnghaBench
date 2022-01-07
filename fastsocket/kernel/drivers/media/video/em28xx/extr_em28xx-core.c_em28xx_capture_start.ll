; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_capture_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CHIP_ID_EM2874 = common dso_local global i64 0, align 8
@EM2874_R5F_TS_ENABLE = common dso_local global i32 0, align 4
@EM2874_TS1_CAPTURE_ENABLE = common dso_local global i32 0, align 4
@EM28XX_R0C_USBSUSP = common dso_local global i32 0, align 4
@EM28XX_R12_VINENABLE = common dso_local global i32 0, align 4
@EM28XX_ANALOG_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_capture_start(%struct.em28xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %8 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHIP_ID_EM2874, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %17 = load i32, i32* @EM2874_R5F_TS_ENABLE, align 4
  %18 = load i32, i32* @EM2874_TS1_CAPTURE_ENABLE, align 4
  %19 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %16, i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %76

21:                                               ; preds = %12
  %22 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %23 = load i32, i32* @EM2874_R5F_TS_ENABLE, align 4
  %24 = load i32, i32* @EM2874_TS1_CAPTURE_ENABLE, align 4
  %25 = load i32, i32* @EM2874_TS1_CAPTURE_ENABLE, align 4
  %26 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %2
  %29 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %30 = load i32, i32* @EM28XX_R0C_USBSUSP, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 16, i32 0
  %35 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %29, i32 %30, i32 %34, i32 16)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %76

40:                                               ; preds = %28
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %45 = load i32, i32* @EM28XX_R12_VINENABLE, align 4
  %46 = call i32 @em28xx_write_reg(%struct.em28xx* %44, i32 %45, i32 39)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %76

48:                                               ; preds = %40
  %49 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %50 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %56 = call i32 @em28xx_write_reg(%struct.em28xx* %55, i32 19, i32 12)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %59 = call i32 @em28xx_write_reg(%struct.em28xx* %58, i32 72, i32 0)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %61 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EM28XX_ANALOG_MODE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %67 = load i32, i32* @EM28XX_R12_VINENABLE, align 4
  %68 = call i32 @em28xx_write_reg(%struct.em28xx* %66, i32 %67, i32 103)
  store i32 %68, i32* %6, align 4
  br label %73

69:                                               ; preds = %57
  %70 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %71 = load i32, i32* @EM28XX_R12_VINENABLE, align 4
  %72 = call i32 @em28xx_write_reg(%struct.em28xx* %70, i32 %71, i32 55)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = call i32 @msleep(i32 6)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %43, %38, %21, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i32, i32, i32) #1

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
