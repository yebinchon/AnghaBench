; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_media.c_lmc_t1_set_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_media.c_lmc_t1_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, i64)* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i64 }

@LMC_CTL_CIRCUIT_TYPE_T1 = common dso_local global i64 0, align 8
@LMC_CTL_CIRCUIT_TYPE_E1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*)* @lmc_t1_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmc_t1_set_status(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %6 = icmp eq %struct.TYPE_15__* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_14__*, i64)*, i32 (%struct.TYPE_14__*, i64)** %11, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 %12(%struct.TYPE_14__* %13, i64 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = call i32 @lmc_set_protocol(%struct.TYPE_14__* %19, %struct.TYPE_15__* null)
  br label %70

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LMC_CTL_CIRCUIT_TYPE_T1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LMC_CTL_CIRCUIT_TYPE_E1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_14__*, i64)*, i32 (%struct.TYPE_14__*, i64)** %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = load i64, i64* @LMC_CTL_CIRCUIT_TYPE_E1, align 8
  %42 = call i32 %39(%struct.TYPE_14__* %40, i64 %41)
  br label %66

43:                                               ; preds = %27, %21
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LMC_CTL_CIRCUIT_TYPE_E1, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LMC_CTL_CIRCUIT_TYPE_T1, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_14__*, i64)*, i32 (%struct.TYPE_14__*, i64)** %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = load i64, i64* @LMC_CTL_CIRCUIT_TYPE_T1, align 8
  %64 = call i32 %61(%struct.TYPE_14__* %62, i64 %63)
  br label %65

65:                                               ; preds = %56, %49, %43
  br label %66

66:                                               ; preds = %65, %34
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = call i32 @lmc_set_protocol(%struct.TYPE_14__* %67, %struct.TYPE_15__* %68)
  br label %70

70:                                               ; preds = %66, %7
  ret void
}

declare dso_local i32 @lmc_set_protocol(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
