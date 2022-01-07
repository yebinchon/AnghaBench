; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_media.c_lmc_ssi_set_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_media.c_lmc_ssi_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_17__, i64 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)*, i32 (%struct.TYPE_16__*, i64)* }
%struct.TYPE_17__ = type { i64, i64 }

@LMC_CTL_CLOCK_SOURCE_INT = common dso_local global i64 0, align 8
@LMC_CTL_CLOCK_SOURCE_EXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_17__*)* @lmc_ssi_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmc_ssi_set_status(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %6 = icmp eq %struct.TYPE_17__* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load i32 (%struct.TYPE_16__*, i64)*, i32 (%struct.TYPE_16__*, i64)** %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 %12(%struct.TYPE_16__* %13, i64 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)** %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = call i32 %23(%struct.TYPE_16__* %24, %struct.TYPE_17__* %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = call i32 @lmc_set_protocol(%struct.TYPE_16__* %28, %struct.TYPE_17__* null)
  br label %103

30:                                               ; preds = %2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LMC_CTL_CLOCK_SOURCE_INT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LMC_CTL_CLOCK_SOURCE_EXT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_16__*, i64)*, i32 (%struct.TYPE_16__*, i64)** %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = load i64, i64* @LMC_CTL_CLOCK_SOURCE_INT, align 8
  %51 = call i32 %48(%struct.TYPE_16__* %49, i64 %50)
  %52 = load i64, i64* @LMC_CTL_CLOCK_SOURCE_INT, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  br label %81

55:                                               ; preds = %36, %30
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LMC_CTL_CLOCK_SOURCE_EXT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LMC_CTL_CLOCK_SOURCE_INT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_16__*, i64)*, i32 (%struct.TYPE_16__*, i64)** %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = load i64, i64* @LMC_CTL_CLOCK_SOURCE_EXT, align 8
  %76 = call i32 %73(%struct.TYPE_16__* %74, i64 %75)
  %77 = load i64, i64* @LMC_CTL_CLOCK_SOURCE_EXT, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %68, %61, %55
  br label %81

81:                                               ; preds = %80, %43
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)** %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = call i32 %95(%struct.TYPE_16__* %96, %struct.TYPE_17__* %97)
  br label %99

99:                                               ; preds = %90, %81
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = call i32 @lmc_set_protocol(%struct.TYPE_16__* %100, %struct.TYPE_17__* %101)
  br label %103

103:                                              ; preds = %99, %7
  ret void
}

declare dso_local i32 @lmc_set_protocol(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
