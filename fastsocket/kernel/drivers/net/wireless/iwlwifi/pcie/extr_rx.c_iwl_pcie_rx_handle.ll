; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { %struct.iwl_rxq }
%struct.iwl_rxq = type { i64, i64, %struct.iwl_rx_mem_buffer**, %struct.TYPE_2__* }
%struct.iwl_rx_mem_buffer = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"HW = SW = %d\0A\00", align 1
@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"rxbuf: HW = %d, SW = %d (%p)\0A\00", align 1
@RX_QUEUE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_rx_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_rx_handle(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca %struct.iwl_rxq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_rx_mem_buffer*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %12 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %11)
  store %struct.iwl_trans_pcie* %12, %struct.iwl_trans_pcie** %3, align 8
  %13 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %13, i32 0, i32 0
  store %struct.iwl_rxq* %14, %struct.iwl_rxq** %4, align 8
  store i32 0, i32* %7, align 4
  store i64 8, i64* %8, align 8
  %15 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ACCESS_ONCE(i32 %19)
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = and i32 %21, 4095
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %5, align 8
  %24 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 (%struct.iwl_trans*, i8*, i64, ...) @IWL_DEBUG_RX(%struct.iwl_trans* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %30, %1
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %34
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %50 = sdiv i32 %49, 2
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %47
  br label %54

54:                                               ; preds = %96, %53
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %54
  %59 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %60 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %59, i32 0, i32 2
  %61 = load %struct.iwl_rx_mem_buffer**, %struct.iwl_rx_mem_buffer*** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %61, i64 %62
  %64 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %63, align 8
  store %struct.iwl_rx_mem_buffer* %64, %struct.iwl_rx_mem_buffer** %10, align 8
  %65 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %66 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %65, i32 0, i32 2
  %67 = load %struct.iwl_rx_mem_buffer**, %struct.iwl_rx_mem_buffer*** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %67, i64 %68
  store %struct.iwl_rx_mem_buffer* null, %struct.iwl_rx_mem_buffer** %69, align 8
  %70 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %10, align 8
  %74 = call i32 (%struct.iwl_trans*, i8*, i64, ...) @IWL_DEBUG_RX(%struct.iwl_trans* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %71, i64 %72, %struct.iwl_rx_mem_buffer* %73)
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %76 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %10, align 8
  %77 = call i32 @iwl_pcie_rx_handle_rb(%struct.iwl_trans* %75, %struct.iwl_rx_mem_buffer* %76)
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  %80 = load i64, i64* @RX_QUEUE_MASK, align 8
  %81 = and i64 %79, %80
  store i64 %81, i64* %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %58
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp uge i64 %87, 8
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %92 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %94 = call i32 @iwl_pcie_rx_replenish_now(%struct.iwl_trans* %93)
  store i64 0, i64* %8, align 8
  br label %95

95:                                               ; preds = %89, %84
  br label %96

96:                                               ; preds = %95, %58
  br label %54

97:                                               ; preds = %54
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.iwl_rxq*, %struct.iwl_rxq** %4, align 8
  %100 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %105 = call i32 @iwl_pcie_rx_replenish_now(%struct.iwl_trans* %104)
  br label %109

106:                                              ; preds = %97
  %107 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %108 = call i32 @iwl_pcie_rxq_restock(%struct.iwl_trans* %107)
  br label %109

109:                                              ; preds = %106, %103
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_trans*, i8*, i64, ...) #1

declare dso_local i32 @iwl_pcie_rx_handle_rb(%struct.iwl_trans*, %struct.iwl_rx_mem_buffer*) #1

declare dso_local i32 @iwl_pcie_rx_replenish_now(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rxq_restock(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
