; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_selftest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@RNG_CTL_ASEL_SHIFT = common dso_local global i32 0, align 4
@RNG_CTL_LFSR = common dso_local global i32 0, align 4
@SELFTEST_TICKS = common dso_local global i32 0, align 4
@RNG_CTL_WAIT_SHIFT = common dso_local global i32 0, align 4
@HV_RNG_STATE_HEALTHCHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2rng*, i64)* @n2rng_control_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_control_selftest(%struct.n2rng* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.n2rng*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.n2rng* %0, %struct.n2rng** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @RNG_CTL_ASEL_SHIFT, align 4
  %8 = shl i32 2, %7
  %9 = load %struct.n2rng*, %struct.n2rng** %4, align 8
  %10 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @RNG_CTL_ASEL_SHIFT, align 4
  %14 = shl i32 2, %13
  %15 = load %struct.n2rng*, %struct.n2rng** %4, align 8
  %16 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @RNG_CTL_ASEL_SHIFT, align 4
  %20 = shl i32 2, %19
  %21 = load %struct.n2rng*, %struct.n2rng** %4, align 8
  %22 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @RNG_CTL_ASEL_SHIFT, align 4
  %26 = shl i32 2, %25
  %27 = load i32, i32* @RNG_CTL_LFSR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SELFTEST_TICKS, align 4
  %30 = sub nsw i32 %29, 2
  %31 = load i32, i32* @RNG_CTL_WAIT_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %28, %32
  %34 = load %struct.n2rng*, %struct.n2rng** %4, align 8
  %35 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %33, i32* %37, align 4
  %38 = load %struct.n2rng*, %struct.n2rng** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.n2rng*, %struct.n2rng** %4, align 8
  %41 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @HV_RNG_STATE_HEALTHCHECK, align 4
  %44 = load %struct.n2rng*, %struct.n2rng** %4, align 8
  %45 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.n2rng*, %struct.n2rng** %4, align 8
  %48 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load %struct.n2rng*, %struct.n2rng** %4, align 8
  %56 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @n2rng_entropy_diag_read(%struct.n2rng* %38, i64 %39, i32* %42, i32 %43, i32 %46, i32 4, i32* %54, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %2
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %2
  %64 = load %struct.n2rng*, %struct.n2rng** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @n2rng_check_selftest_buffer(%struct.n2rng* %64, i64 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @n2rng_entropy_diag_read(%struct.n2rng*, i64, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @n2rng_check_selftest_buffer(%struct.n2rng*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
