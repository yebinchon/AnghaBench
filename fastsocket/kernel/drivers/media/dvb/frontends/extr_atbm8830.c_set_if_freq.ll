; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_atbm8830.c_set_if_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_atbm8830.c_set_if_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atbm_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@REG_TUNER_BASEBAND = common dso_local global i64 0, align 8
@REG_IF_FREQ = common dso_local global i64 0, align 8
@REG_ADC_CONFIG = common dso_local global i64 0, align 8
@REG_SWAP_I_Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atbm_state*, i64)* @set_if_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_if_freq(%struct.atbm_state* %0, i64 %1) #0 {
  %3 = alloca %struct.atbm_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.atbm_state* %0, %struct.atbm_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %10 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %17, %18
  %20 = mul nsw i64 62832, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %5, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @do_div(i32 %24, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @do_div(i32 %28, i32 1000)
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  %32 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %33 = load i64, i64* @REG_TUNER_BASEBAND, align 8
  %34 = call i32 @atbm8830_write_reg(%struct.atbm_state* %32, i64 %33, i32 1)
  %35 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %36 = load i64, i64* @REG_IF_FREQ, align 8
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @atbm8830_write_reg(%struct.atbm_state* %35, i64 %36, i32 %38)
  %40 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %41 = load i64, i64* @REG_IF_FREQ, align 8
  %42 = add nsw i64 %41, 1
  %43 = load i64, i64* %7, align 8
  %44 = ashr i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @atbm8830_write_reg(%struct.atbm_state* %40, i64 %42, i32 %45)
  %47 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %48 = load i64, i64* @REG_IF_FREQ, align 8
  %49 = add nsw i64 %48, 2
  %50 = load i64, i64* %7, align 8
  %51 = ashr i64 %50, 16
  %52 = trunc i64 %51 to i32
  %53 = call i32 @atbm8830_write_reg(%struct.atbm_state* %47, i64 %49, i32 %52)
  %54 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %55 = load i64, i64* @REG_ADC_CONFIG, align 8
  %56 = call i32 @atbm8830_read_reg(%struct.atbm_state* %54, i64 %55, i32* %8)
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 252
  store i32 %58, i32* %8, align 4
  %59 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %60 = load i64, i64* @REG_ADC_CONFIG, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @atbm8830_write_reg(%struct.atbm_state* %59, i64 %60, i32 %61)
  br label %93

63:                                               ; preds = %2
  %64 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %65 = load i64, i64* @REG_TUNER_BASEBAND, align 8
  %66 = call i32 @atbm8830_write_reg(%struct.atbm_state* %64, i64 %65, i32 0)
  %67 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %68 = load i64, i64* @REG_ADC_CONFIG, align 8
  %69 = call i32 @atbm8830_read_reg(%struct.atbm_state* %67, i64 %68, i32* %8)
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 252
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, 2
  store i32 %73, i32* %8, align 4
  %74 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %75 = load i64, i64* @REG_ADC_CONFIG, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @atbm8830_write_reg(%struct.atbm_state* %74, i64 %75, i32 %76)
  %78 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %79 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %63
  %85 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %86 = load i64, i64* @REG_SWAP_I_Q, align 8
  %87 = call i32 @atbm8830_write_reg(%struct.atbm_state* %85, i64 %86, i32 3)
  br label %92

88:                                               ; preds = %63
  %89 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %90 = load i64, i64* @REG_SWAP_I_Q, align 8
  %91 = call i32 @atbm8830_write_reg(%struct.atbm_state* %89, i64 %90, i32 1)
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %16
  ret i32 0
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @atbm8830_write_reg(%struct.atbm_state*, i64, i32) #1

declare dso_local i32 @atbm8830_read_reg(%struct.atbm_state*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
