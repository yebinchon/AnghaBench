; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_destroy_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_destroy_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__*, %struct.bna_rx_config*, %struct.bnad_rx_info* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.bna_res_info* }
%struct.bna_res_info = type { i32 }
%struct.bna_rx_config = type { i32 }
%struct.bnad_rx_info = type { i64, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@BNAD_CF_DIM_ENABLED = common dso_local global i32 0, align 4
@BNAD_RF_DIM_TIMER_RUNNING = common dso_local global i32 0, align 4
@BNA_HARD_CLEANUP = common dso_local global i32 0, align 4
@bnad_cb_rx_disabled = common dso_local global i32 0, align 4
@BNA_INTR_T_MSIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_destroy_rx(%struct.bnad* %0, i64 %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnad_rx_info*, align 8
  %6 = alloca %struct.bna_rx_config*, align 8
  %7 = alloca %struct.bna_res_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.bnad*, %struct.bnad** %3, align 8
  %11 = getelementptr inbounds %struct.bnad, %struct.bnad* %10, i32 0, i32 7
  %12 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %12, i64 %13
  store %struct.bnad_rx_info* %14, %struct.bnad_rx_info** %5, align 8
  %15 = load %struct.bnad*, %struct.bnad** %3, align 8
  %16 = getelementptr inbounds %struct.bnad, %struct.bnad* %15, i32 0, i32 6
  %17 = load %struct.bna_rx_config*, %struct.bna_rx_config** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %17, i64 %18
  store %struct.bna_rx_config* %19, %struct.bna_rx_config** %6, align 8
  %20 = load %struct.bnad*, %struct.bnad** %3, align 8
  %21 = getelementptr inbounds %struct.bnad, %struct.bnad* %20, i32 0, i32 5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.bna_res_info*, %struct.bna_res_info** %25, align 8
  %27 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %26, i64 0
  store %struct.bna_res_info* %27, %struct.bna_res_info** %7, align 8
  store i32 0, i32* %9, align 4
  %28 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %5, align 8
  %29 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %133

33:                                               ; preds = %2
  %34 = load i64, i64* %4, align 8
  %35 = icmp eq i64 0, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = load %struct.bnad*, %struct.bnad** %3, align 8
  %38 = getelementptr inbounds %struct.bnad, %struct.bnad* %37, i32 0, i32 1
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.bnad*, %struct.bnad** %3, align 8
  %42 = getelementptr inbounds %struct.bnad, %struct.bnad* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BNAD_CF_DIM_ENABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %36
  %48 = load i32, i32* @BNAD_RF_DIM_TIMER_RUNNING, align 4
  %49 = load %struct.bnad*, %struct.bnad** %3, align 8
  %50 = getelementptr inbounds %struct.bnad, %struct.bnad* %49, i32 0, i32 4
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @BNAD_RF_DIM_TIMER_RUNNING, align 4
  %55 = load %struct.bnad*, %struct.bnad** %3, align 8
  %56 = getelementptr inbounds %struct.bnad, %struct.bnad* %55, i32 0, i32 4
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  store i32 1, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %47, %36
  %59 = load %struct.bnad*, %struct.bnad** %3, align 8
  %60 = getelementptr inbounds %struct.bnad, %struct.bnad* %59, i32 0, i32 1
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.bnad*, %struct.bnad** %3, align 8
  %67 = getelementptr inbounds %struct.bnad, %struct.bnad* %66, i32 0, i32 3
  %68 = call i32 @del_timer_sync(i32* %67)
  br label %69

69:                                               ; preds = %65, %58
  br label %70

70:                                               ; preds = %69, %33
  %71 = load %struct.bnad*, %struct.bnad** %3, align 8
  %72 = getelementptr inbounds %struct.bnad, %struct.bnad* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @init_completion(i32* %73)
  %75 = load %struct.bnad*, %struct.bnad** %3, align 8
  %76 = getelementptr inbounds %struct.bnad, %struct.bnad* %75, i32 0, i32 1
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %5, align 8
  %80 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %83 = load i32, i32* @bnad_cb_rx_disabled, align 4
  %84 = call i32 @bna_rx_disable(i32* %81, i32 %82, i32 %83)
  %85 = load %struct.bnad*, %struct.bnad** %3, align 8
  %86 = getelementptr inbounds %struct.bnad, %struct.bnad* %85, i32 0, i32 1
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.bnad*, %struct.bnad** %3, align 8
  %90 = getelementptr inbounds %struct.bnad, %struct.bnad* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @wait_for_completion(i32* %91)
  %93 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %5, align 8
  %94 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @BNA_INTR_T_MSIX, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %70
  %104 = load %struct.bnad*, %struct.bnad** %3, align 8
  %105 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %5, align 8
  %106 = load %struct.bna_rx_config*, %struct.bna_rx_config** %6, align 8
  %107 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @bnad_rx_msix_unregister(%struct.bnad* %104, %struct.bnad_rx_info* %105, i32 %108)
  br label %110

110:                                              ; preds = %103, %70
  %111 = load %struct.bnad*, %struct.bnad** %3, align 8
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @bnad_napi_delete(%struct.bnad* %111, i64 %112)
  %114 = load %struct.bnad*, %struct.bnad** %3, align 8
  %115 = getelementptr inbounds %struct.bnad, %struct.bnad* %114, i32 0, i32 1
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @spin_lock_irqsave(i32* %115, i64 %116)
  %118 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %5, align 8
  %119 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @bna_rx_destroy(i32* %120)
  %122 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %5, align 8
  %123 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %122, i32 0, i32 1
  store i32* null, i32** %123, align 8
  %124 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %5, align 8
  %125 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.bnad*, %struct.bnad** %3, align 8
  %127 = getelementptr inbounds %struct.bnad, %struct.bnad* %126, i32 0, i32 1
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load %struct.bnad*, %struct.bnad** %3, align 8
  %131 = load %struct.bna_res_info*, %struct.bna_res_info** %7, align 8
  %132 = call i32 @bnad_rx_res_free(%struct.bnad* %130, %struct.bna_res_info* %131)
  br label %133

133:                                              ; preds = %110, %32
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @bna_rx_disable(i32*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @bnad_rx_msix_unregister(%struct.bnad*, %struct.bnad_rx_info*, i32) #1

declare dso_local i32 @bnad_napi_delete(%struct.bnad*, i64) #1

declare dso_local i32 @bna_rx_destroy(i32*) #1

declare dso_local i32 @bnad_rx_res_free(%struct.bnad*, %struct.bna_res_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
