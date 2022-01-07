; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_swstate_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_swstate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { i32, i32, %struct.n2rng_unit*, i32, i32, i32, i32 }
%struct.n2rng_unit = type { i32* }

@N2RNG_FLAG_CONTROL = common dso_local global i32 0, align 4
@N2RNG_HEALTH_CHECK_SEC_DEFAULT = common dso_local global i32 0, align 4
@N2RNG_ACCUM_CYCLES_DEFAULT = common dso_local global i32 0, align 4
@N2RNG_WD_TIMEO_DEFAULT = common dso_local global i32 0, align 4
@CONTROL_DEFAULT_0 = common dso_local global i32 0, align 4
@CONTROL_DEFAULT_1 = common dso_local global i32 0, align 4
@CONTROL_DEFAULT_2 = common dso_local global i32 0, align 4
@CONTROL_DEFAULT_3 = common dso_local global i32 0, align 4
@HV_RNG_STATE_UNCONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.n2rng*)* @n2rng_control_swstate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n2rng_control_swstate_init(%struct.n2rng* %0) #0 {
  %2 = alloca %struct.n2rng*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.n2rng_unit*, align 8
  store %struct.n2rng* %0, %struct.n2rng** %2, align 8
  %5 = load i32, i32* @N2RNG_FLAG_CONTROL, align 4
  %6 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %7 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @N2RNG_HEALTH_CHECK_SEC_DEFAULT, align 4
  %11 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %12 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @N2RNG_ACCUM_CYCLES_DEFAULT, align 4
  %14 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %15 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @N2RNG_WD_TIMEO_DEFAULT, align 4
  %17 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %18 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %52, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %22 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %27 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %26, i32 0, i32 2
  %28 = load %struct.n2rng_unit*, %struct.n2rng_unit** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %28, i64 %30
  store %struct.n2rng_unit* %31, %struct.n2rng_unit** %4, align 8
  %32 = load i32, i32* @CONTROL_DEFAULT_0, align 4
  %33 = load %struct.n2rng_unit*, %struct.n2rng_unit** %4, align 8
  %34 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @CONTROL_DEFAULT_1, align 4
  %38 = load %struct.n2rng_unit*, %struct.n2rng_unit** %4, align 8
  %39 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @CONTROL_DEFAULT_2, align 4
  %43 = load %struct.n2rng_unit*, %struct.n2rng_unit** %4, align 8
  %44 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @CONTROL_DEFAULT_3, align 4
  %48 = load %struct.n2rng_unit*, %struct.n2rng_unit** %4, align 8
  %49 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %25
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load i32, i32* @HV_RNG_STATE_UNCONFIGURED, align 4
  %57 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %58 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
