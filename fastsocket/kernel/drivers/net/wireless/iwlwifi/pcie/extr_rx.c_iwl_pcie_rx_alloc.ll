; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.device* }
%struct.device = type { i32 }
%struct.iwl_trans_pcie = type { %struct.iwl_rxq }
%struct.iwl_rxq = type { i32*, i64, i8*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_rx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_rx_alloc(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca %struct.iwl_rxq*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %8 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %7)
  store %struct.iwl_trans_pcie* %8, %struct.iwl_trans_pcie** %4, align 8
  %9 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %9, i32 0, i32 0
  store %struct.iwl_rxq* %10, %struct.iwl_rxq** %5, align 8
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %14, i32 0, i32 0
  %16 = call i32 @memset(%struct.iwl_rxq* %15, i32 0, i32 40)
  %17 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %17, i32 0, i32 4
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br label %29

29:                                               ; preds = %24, %1
  %30 = phi i1 [ true, %1 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %89

37:                                               ; preds = %29
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %43, i32 0, i32 1
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @dma_zalloc_coherent(%struct.device* %38, i32 %42, i64* %44, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %51 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %37
  br label %86

55:                                               ; preds = %37
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %58 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %57, i32 0, i32 3
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @dma_zalloc_coherent(%struct.device* %56, i32 1, i64* %58, i32 %59)
  %61 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %64 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %55
  br label %69

68:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %89

69:                                               ; preds = %67
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %76 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %79 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @dma_free_coherent(%struct.device* %70, i32 %74, i32* %77, i64 %80)
  %82 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %83 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.iwl_rxq*, %struct.iwl_rxq** %5, align 8
  %85 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %69, %54
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %68, %34
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @memset(%struct.iwl_rxq*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @dma_zalloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
