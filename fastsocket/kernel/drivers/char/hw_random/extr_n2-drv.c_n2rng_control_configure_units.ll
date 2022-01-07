; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_configure_units.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_control_configure_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { i32, i32, %struct.n2rng_unit* }
%struct.n2rng_unit = type { i32* }

@RNG_CTL_WAIT_SHIFT = common dso_local global i32 0, align 4
@RNG_CTL_ASEL_SHIFT = common dso_local global i32 0, align 4
@RNG_CTL_LFSR = common dso_local global i32 0, align 4
@RNG_CTL_VCO_SHIFT = common dso_local global i32 0, align 4
@RNG_CTL_ES1 = common dso_local global i32 0, align 4
@RNG_CTL_ES2 = common dso_local global i32 0, align 4
@RNG_CTL_ES3 = common dso_local global i32 0, align 4
@HV_RNG_STATE_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2rng*)* @n2rng_control_configure_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_control_configure_units(%struct.n2rng* %0) #0 {
  %2 = alloca %struct.n2rng*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.n2rng_unit*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.n2rng* %0, %struct.n2rng** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %80, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %12 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %83

15:                                               ; preds = %9
  %16 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %17 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %16, i32 0, i32 2
  %18 = load %struct.n2rng_unit*, %struct.n2rng_unit** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %18, i64 %20
  store %struct.n2rng_unit* %21, %struct.n2rng_unit** %5, align 8
  %22 = load %struct.n2rng_unit*, %struct.n2rng_unit** %5, align 8
  %23 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = call i64 @__pa(i32* %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %28 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RNG_CTL_WAIT_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @RNG_CTL_ASEL_SHIFT, align 4
  %33 = shl i32 2, %32
  %34 = or i32 %31, %33
  %35 = load i32, i32* @RNG_CTL_LFSR, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %56, %15
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @RNG_CTL_VCO_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %41, %44
  %46 = load i32, i32* @RNG_CTL_ES1, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  %50 = load %struct.n2rng_unit*, %struct.n2rng_unit** %5, align 8
  %51 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @RNG_CTL_ES1, align 4
  %62 = load i32, i32* @RNG_CTL_ES2, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @RNG_CTL_ES3, align 4
  %65 = or i32 %63, %64
  %66 = or i32 %60, %65
  %67 = load %struct.n2rng_unit*, %struct.n2rng_unit** %5, align 8
  %68 = getelementptr inbounds %struct.n2rng_unit, %struct.n2rng_unit* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32 %66, i32* %70, align 4
  %71 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @HV_RNG_STATE_CONFIGURED, align 4
  %75 = call i32 @n2rng_generic_write_control(%struct.n2rng* %71, i64 %72, i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %59
  br label %83

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %9

83:                                               ; preds = %78, %9
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @__pa(i32*) #1

declare dso_local i32 @n2rng_generic_write_control(%struct.n2rng*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
