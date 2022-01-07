; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_main.c_lmc_mii_readreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_main.c_lmc_mii_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"lmc_mii_readreg in\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"lmc_mii_readreg: done sync\00", align 1
@csr_9 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"lmc_mii_readreg: done1\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"lmc_mii_readreg out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lmc_mii_readreg(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 5
  %13 = or i32 251904, %12
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lmc_trace(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = call i32 @LMC_MII_SYNC(%struct.TYPE_6__* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @lmc_trace(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 15, i32* %7, align 4
  br label %26

26:                                               ; preds = %48, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 131072, i32 0
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = load i32, i32* @csr_9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @LMC_CSR_WRITE(%struct.TYPE_6__* %37, i32 %38, i32 %39)
  %41 = call i32 (...) @lmc_delay()
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = load i32, i32* @csr_9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, 65536
  %46 = call i32 @LMC_CSR_WRITE(%struct.TYPE_6__* %42, i32 %43, i32 %45)
  %47 = call i32 (...) @lmc_delay()
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %7, align 4
  br label %26

51:                                               ; preds = %26
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @lmc_trace(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 19, i32* %7, align 4
  br label %56

56:                                               ; preds = %78, %51
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = load i32, i32* @csr_9, align 4
  %62 = call i32 @LMC_CSR_WRITE(%struct.TYPE_6__* %60, i32 %61, i32 262144)
  %63 = call i32 (...) @lmc_delay()
  %64 = load i32, i32* %9, align 4
  %65 = shl i32 %64, 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = load i32, i32* @csr_9, align 4
  %68 = call i32 @LMC_CSR_READ(%struct.TYPE_6__* %66, i32 %67)
  %69 = and i32 %68, 524288
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = or i32 %65, %72
  store i32 %73, i32* %9, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = load i32, i32* @csr_9, align 4
  %76 = call i32 @LMC_CSR_WRITE(%struct.TYPE_6__* %74, i32 %75, i32 327680)
  %77 = call i32 (...) @lmc_delay()
  br label %78

78:                                               ; preds = %59
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %7, align 4
  br label %56

81:                                               ; preds = %56
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @lmc_trace(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 1
  %88 = and i32 %87, 65535
  ret i32 %88
}

declare dso_local i32 @lmc_trace(i32, i8*) #1

declare dso_local i32 @LMC_MII_SYNC(%struct.TYPE_6__*) #1

declare dso_local i32 @LMC_CSR_WRITE(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @lmc_delay(...) #1

declare dso_local i32 @LMC_CSR_READ(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
