; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_data_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.n2rng = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@N2RNG_FLAG_READY = common dso_local global i32 0, align 4
@N2RNG_FLAG_BUFFER_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RNG error, restesting\0A\00", align 1
@N2RNG_FLAG_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i32*)* @n2rng_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_data_read(%struct.hwrng* %0, i32* %1) #0 {
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.n2rng*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %10 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.n2rng*
  store %struct.n2rng* %12, %struct.n2rng** %5, align 8
  %13 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %14 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %13, i32 0, i32 0
  %15 = call i64 @__pa(i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %17 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @N2RNG_FLAG_READY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %82

23:                                               ; preds = %2
  %24 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %25 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @N2RNG_FLAG_BUFFER_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load i32, i32* @N2RNG_FLAG_BUFFER_VALID, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %34 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %38 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  store i32 4, i32* %7, align 4
  br label %81

41:                                               ; preds = %23
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @n2rng_generic_read_data(i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %48 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 32
  %51 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %52 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %54 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %4, align 8
  store i32 %55, i32* %56, align 4
  store i32 4, i32* %7, align 4
  br label %80

57:                                               ; preds = %41
  %58 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %59 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @N2RNG_FLAG_READY, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %66 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %70 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @N2RNG_FLAG_SHUTDOWN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %57
  %76 = load %struct.n2rng*, %struct.n2rng** %5, align 8
  %77 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %76, i32 0, i32 3
  %78 = call i32 @schedule_delayed_work(i32* %77, i32 0)
  br label %79

79:                                               ; preds = %75, %57
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %46
  br label %81

81:                                               ; preds = %80, %30
  br label %82

82:                                               ; preds = %81, %22
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i64 @__pa(i32*) #1

declare dso_local i32 @n2rng_generic_read_data(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
