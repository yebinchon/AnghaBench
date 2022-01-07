; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-firmware.c_cx18_init_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-firmware.c_cx18_init_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }

@CX18_PLL_POWER_DOWN = common dso_local global i32 0, align 4
@CX18_ADEC_CONTROL = common dso_local global i32 0, align 4
@CX18_FAST_CLOCK_PLL_INT = common dso_local global i32 0, align 4
@CX18_FAST_CLOCK_PLL_FRAC = common dso_local global i32 0, align 4
@CX18_FAST_CLOCK_PLL_POST = common dso_local global i32 0, align 4
@CX18_FAST_CLOCK_PLL_PRESCALE = common dso_local global i32 0, align 4
@CX18_FAST_CLOCK_PLL_ADJUST_BANDWIDTH = common dso_local global i32 0, align 4
@CX18_SLOW_CLOCK_PLL_INT = common dso_local global i32 0, align 4
@CX18_SLOW_CLOCK_PLL_FRAC = common dso_local global i32 0, align 4
@CX18_SLOW_CLOCK_PLL_POST = common dso_local global i32 0, align 4
@CX18_MPEG_CLOCK_PLL_INT = common dso_local global i32 0, align 4
@CX18_MPEG_CLOCK_PLL_FRAC = common dso_local global i32 0, align 4
@CX18_MPEG_CLOCK_PLL_POST = common dso_local global i32 0, align 4
@CX18_CLOCK_SELECT1 = common dso_local global i32 0, align 4
@CX18_CLOCK_SELECT2 = common dso_local global i32 0, align 4
@CX18_HALF_CLOCK_SELECT1 = common dso_local global i32 0, align 4
@CX18_HALF_CLOCK_SELECT2 = common dso_local global i32 0, align 4
@CX18_CLOCK_ENABLE1 = common dso_local global i32 0, align 4
@CX18_CLOCK_ENABLE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_init_power(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cx18*, %struct.cx18** %3, align 8
  %6 = load i32, i32* @CX18_PLL_POWER_DOWN, align 4
  %7 = call i32 @cx18_write_reg(%struct.cx18* %5, i32 8, i32 %6)
  %8 = load %struct.cx18*, %struct.cx18** %3, align 8
  %9 = load i32, i32* @CX18_ADEC_CONTROL, align 4
  %10 = call i32 @cx18_write_reg_expect(%struct.cx18* %8, i32 131072, i32 %9, i32 0, i32 131074)
  %11 = load %struct.cx18*, %struct.cx18** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 13, i32 17
  %16 = load i32, i32* @CX18_FAST_CLOCK_PLL_INT, align 4
  %17 = call i32 @cx18_write_reg(%struct.cx18* %11, i32 %15, i32 %16)
  %18 = load %struct.cx18*, %struct.cx18** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 32489271, i32 3728343
  %23 = load i32, i32* @CX18_FAST_CLOCK_PLL_FRAC, align 4
  %24 = call i32 @cx18_write_reg(%struct.cx18* %18, i32 %22, i32 %23)
  %25 = load %struct.cx18*, %struct.cx18** %3, align 8
  %26 = load i32, i32* @CX18_FAST_CLOCK_PLL_POST, align 4
  %27 = call i32 @cx18_write_reg(%struct.cx18* %25, i32 2, i32 %26)
  %28 = load %struct.cx18*, %struct.cx18** %3, align 8
  %29 = load i32, i32* @CX18_FAST_CLOCK_PLL_PRESCALE, align 4
  %30 = call i32 @cx18_write_reg(%struct.cx18* %28, i32 1, i32 %29)
  %31 = load %struct.cx18*, %struct.cx18** %3, align 8
  %32 = load i32, i32* @CX18_FAST_CLOCK_PLL_ADJUST_BANDWIDTH, align 4
  %33 = call i32 @cx18_write_reg(%struct.cx18* %31, i32 4, i32 %32)
  %34 = load %struct.cx18*, %struct.cx18** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 13, i32 12
  %39 = load i32, i32* @CX18_SLOW_CLOCK_PLL_INT, align 4
  %40 = call i32 @cx18_write_reg(%struct.cx18* %34, i32 %38, i32 %39)
  %41 = load %struct.cx18*, %struct.cx18** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 3195716, i32 19174015
  %46 = load i32, i32* @CX18_SLOW_CLOCK_PLL_FRAC, align 4
  %47 = call i32 @cx18_write_reg(%struct.cx18* %41, i32 %45, i32 %46)
  %48 = load %struct.cx18*, %struct.cx18** %3, align 8
  %49 = load i32, i32* @CX18_SLOW_CLOCK_PLL_POST, align 4
  %50 = call i32 @cx18_write_reg(%struct.cx18* %48, i32 3, i32 %49)
  %51 = load %struct.cx18*, %struct.cx18** %3, align 8
  %52 = load i32, i32* @CX18_MPEG_CLOCK_PLL_INT, align 4
  %53 = call i32 @cx18_write_reg(%struct.cx18* %51, i32 15, i32 %52)
  %54 = load %struct.cx18*, %struct.cx18** %3, align 8
  %55 = load i32, i32* @CX18_MPEG_CLOCK_PLL_FRAC, align 4
  %56 = call i32 @cx18_write_reg(%struct.cx18* %54, i32 2876158, i32 %55)
  %57 = load %struct.cx18*, %struct.cx18** %3, align 8
  %58 = load i32, i32* @CX18_MPEG_CLOCK_PLL_POST, align 4
  %59 = call i32 @cx18_write_reg(%struct.cx18* %57, i32 8, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %2
  %63 = load %struct.cx18*, %struct.cx18** %3, align 8
  %64 = load i32, i32* @CX18_CLOCK_SELECT1, align 4
  %65 = call i32 @cx18_write_reg_expect(%struct.cx18* %63, i32 -65504, i32 %64, i32 32, i32 -1)
  %66 = load %struct.cx18*, %struct.cx18** %3, align 8
  %67 = load i32, i32* @CX18_CLOCK_SELECT2, align 4
  %68 = call i32 @cx18_write_reg_expect(%struct.cx18* %66, i32 -65532, i32 %67, i32 4, i32 -1)
  br label %76

69:                                               ; preds = %2
  %70 = load %struct.cx18*, %struct.cx18** %3, align 8
  %71 = load i32, i32* @CX18_CLOCK_SELECT1, align 4
  %72 = call i32 @cx18_write_reg_expect(%struct.cx18* %70, i32 393220, i32 %71, i32 4, i32 393222)
  %73 = load %struct.cx18*, %struct.cx18** %3, align 8
  %74 = load i32, i32* @CX18_CLOCK_SELECT2, align 4
  %75 = call i32 @cx18_write_reg_expect(%struct.cx18* %73, i32 393222, i32 %74, i32 6, i32 393222)
  br label %76

76:                                               ; preds = %69, %62
  %77 = load %struct.cx18*, %struct.cx18** %3, align 8
  %78 = load i32, i32* @CX18_HALF_CLOCK_SELECT1, align 4
  %79 = call i32 @cx18_write_reg_expect(%struct.cx18* %77, i32 -65534, i32 %78, i32 2, i32 -1)
  %80 = load %struct.cx18*, %struct.cx18** %3, align 8
  %81 = load i32, i32* @CX18_HALF_CLOCK_SELECT2, align 4
  %82 = call i32 @cx18_write_reg_expect(%struct.cx18* %80, i32 -65276, i32 %81, i32 260, i32 -1)
  %83 = load %struct.cx18*, %struct.cx18** %3, align 8
  %84 = load i32, i32* @CX18_CLOCK_ENABLE1, align 4
  %85 = call i32 @cx18_write_reg_expect(%struct.cx18* %83, i32 -28634, i32 %84, i32 36902, i32 -1)
  %86 = load %struct.cx18*, %struct.cx18** %3, align 8
  %87 = load i32, i32* @CX18_CLOCK_ENABLE2, align 4
  %88 = call i32 @cx18_write_reg_expect(%struct.cx18* %86, i32 -52987, i32 %87, i32 12549, i32 -1)
  ret void
}

declare dso_local i32 @cx18_write_reg(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_write_reg_expect(%struct.cx18*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
