; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_dynamic_pcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_dynamic_pcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.dynpcc_info }
%struct.dynpcc_info = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@PCC_P3_THRESHOLD = common dso_local global i64 0, align 8
@PCC_P3 = common dso_local global i32 0, align 4
@PCC_P2_THRESHOLD = common dso_local global i64 0, align 8
@PCC_INTR_THRESHOLD = common dso_local global i64 0, align 8
@PCC_P2 = common dso_local global i32 0, align 4
@PCC_P1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_dynamic_pcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_dynamic_pcc(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca %struct.dynpcc_info*, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %6 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %6, i32 0, i32 1
  store %struct.dynpcc_info* %7, %struct.dynpcc_info** %3, align 8
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %9 = call { i64, i64 } @NET_STAT(%struct.jme_adapter* %8)
  %10 = bitcast %struct.TYPE_2__* %4 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { i64, i64 } %9, 0
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { i64, i64 } %9, 1
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %18 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load i64, i64* @PCC_P3_THRESHOLD, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %25 = load i32, i32* @PCC_P3, align 4
  %26 = call i32 @jme_attempt_pcc(%struct.dynpcc_info* %24, i32 %25)
  br label %58

27:                                               ; preds = %1
  %28 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %29 = call { i64, i64 } @NET_STAT(%struct.jme_adapter* %28)
  %30 = bitcast %struct.TYPE_2__* %5 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i64 } %29, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i64 } %29, 1
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %38 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load i64, i64* @PCC_P2_THRESHOLD, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %27
  %44 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %45 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCC_INTR_THRESHOLD, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %27
  %50 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %51 = load i32, i32* @PCC_P2, align 4
  %52 = call i32 @jme_attempt_pcc(%struct.dynpcc_info* %50, i32 %51)
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %55 = load i32, i32* @PCC_P1, align 4
  %56 = call i32 @jme_attempt_pcc(%struct.dynpcc_info* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %23
  %59 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %60 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %63 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %68 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 5
  br label %71

71:                                               ; preds = %66, %58
  %72 = phi i1 [ false, %58 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %71
  %77 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %78 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %81 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %85, i32 0, i32 0
  %87 = call i32 @tasklet_schedule(i32* %86)
  br label %88

88:                                               ; preds = %84, %76
  %89 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %90 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %91 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @jme_set_rx_pcc(%struct.jme_adapter* %89, i64 %92)
  %94 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %95 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %98 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  %99 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %100 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %99, i32 0, i32 5
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %88, %71
  ret void
}

declare dso_local { i64, i64 } @NET_STAT(%struct.jme_adapter*) #1

declare dso_local i32 @jme_attempt_pcc(%struct.dynpcc_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @jme_set_rx_pcc(%struct.jme_adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
