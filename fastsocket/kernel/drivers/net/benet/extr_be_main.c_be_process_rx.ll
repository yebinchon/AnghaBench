; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_process_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_process_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { %struct.TYPE_2__, %struct.be_queue_info, %struct.be_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.be_queue_info = type { i32 }
%struct.be_adapter = type { i64 }
%struct.napi_struct = type { i32 }
%struct.be_rx_compl_info = type { i64, i64, i32 }

@RX_FRAGS_REFILL_WM = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_rx_obj*, %struct.napi_struct*, i32)* @be_process_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_process_rx(%struct.be_rx_obj* %0, %struct.napi_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.be_rx_obj*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca %struct.be_queue_info*, align 8
  %9 = alloca %struct.be_rx_compl_info*, align 8
  %10 = alloca i32, align 4
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %4, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %12 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %11, i32 0, i32 2
  %13 = load %struct.be_adapter*, %struct.be_adapter** %12, align 8
  store %struct.be_adapter* %13, %struct.be_adapter** %7, align 8
  %14 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %15 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %14, i32 0, i32 1
  store %struct.be_queue_info* %15, %struct.be_queue_info** %8, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %88, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %91

20:                                               ; preds = %16
  %21 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %22 = call %struct.be_rx_compl_info* @be_rx_compl_get(%struct.be_rx_obj* %21)
  store %struct.be_rx_compl_info* %22, %struct.be_rx_compl_info** %9, align 8
  %23 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %9, align 8
  %24 = icmp ne %struct.be_rx_compl_info* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %91

26:                                               ; preds = %20
  %27 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %9, align 8
  %28 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %84

35:                                               ; preds = %26
  %36 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %9, align 8
  %37 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %46 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %9, align 8
  %47 = call i32 @be_rx_compl_discard(%struct.be_rx_obj* %45, %struct.be_rx_compl_info* %46)
  br label %84

48:                                               ; preds = %35
  %49 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %9, align 8
  %50 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %53 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %58 = call i32 @lancer_chip(%struct.be_adapter* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %56, %48
  %62 = phi i1 [ false, %48 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %68 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %9, align 8
  %69 = call i32 @be_rx_compl_discard(%struct.be_rx_obj* %67, %struct.be_rx_compl_info* %68)
  br label %84

70:                                               ; preds = %61
  %71 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %9, align 8
  %72 = call i64 @do_gro(%struct.be_rx_compl_info* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %76 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %77 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %9, align 8
  %78 = call i32 @be_rx_compl_process_gro(%struct.be_rx_obj* %75, %struct.napi_struct* %76, %struct.be_rx_compl_info* %77)
  br label %83

79:                                               ; preds = %70
  %80 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %81 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %9, align 8
  %82 = call i32 @be_rx_compl_process(%struct.be_rx_obj* %80, %struct.be_rx_compl_info* %81)
  br label %83

83:                                               ; preds = %79, %74
  br label %84

84:                                               ; preds = %83, %66, %44, %34
  %85 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %86 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %9, align 8
  %87 = call i32 @be_rx_stats_update(%struct.be_rx_obj* %85, %struct.be_rx_compl_info* %86)
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %16

91:                                               ; preds = %25, %16
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %96 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %97 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @be_cq_notify(%struct.be_adapter* %95, i32 %98, i32 1, i32 %99)
  %101 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %102 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i64 @atomic_read(i32* %103)
  %105 = load i64, i64* @RX_FRAGS_REFILL_WM, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %94
  %108 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %109 = load i32, i32* @GFP_ATOMIC, align 4
  %110 = call i32 @be_post_rx_frags(%struct.be_rx_obj* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %94
  br label %112

112:                                              ; preds = %111, %91
  %113 = load i32, i32* %10, align 4
  ret i32 %113
}

declare dso_local %struct.be_rx_compl_info* @be_rx_compl_get(%struct.be_rx_obj*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be_rx_compl_discard(%struct.be_rx_obj*, %struct.be_rx_compl_info*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @do_gro(%struct.be_rx_compl_info*) #1

declare dso_local i32 @be_rx_compl_process_gro(%struct.be_rx_obj*, %struct.napi_struct*, %struct.be_rx_compl_info*) #1

declare dso_local i32 @be_rx_compl_process(%struct.be_rx_obj*, %struct.be_rx_compl_info*) #1

declare dso_local i32 @be_rx_stats_update(%struct.be_rx_obj*, %struct.be_rx_compl_info*) #1

declare dso_local i32 @be_cq_notify(%struct.be_adapter*, i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @be_post_rx_frags(%struct.be_rx_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
