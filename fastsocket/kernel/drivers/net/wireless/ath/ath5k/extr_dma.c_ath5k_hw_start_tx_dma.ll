; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_start_tx_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_dma.c_ath5k_hw_start_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AR5K_TX_QUEUE_INACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_CR = common dso_local global i32 0, align 4
@AR5K_CR_TXE0 = common dso_local global i32 0, align 4
@AR5K_CR_TXD0 = common dso_local global i32 0, align 4
@AR5K_CR_TXE1 = common dso_local global i32 0, align 4
@AR5K_CR_TXD1 = common dso_local global i32 0, align 4
@AR5K_BCR_TQ1V = common dso_local global i32 0, align 4
@AR5K_BCR_BDMAE = common dso_local global i32 0, align 4
@AR5K_BSR = common dso_local global i32 0, align 4
@AR5K_BCR_TQ1FV = common dso_local global i32 0, align 4
@AR5K_QCU_TXD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AR5K_QCU_TXE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_start_tx_dma(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @AR5K_ASSERT_ENTRY(i32 %7, i32 %12)
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AR5K_TX_QUEUE_INACTIVE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %106

27:                                               ; preds = %2
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AR5K_AR5210, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %91

33:                                               ; preds = %27
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %35 = load i32, i32* @AR5K_CR, align 4
  %36 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %38 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %80 [
    i32 128, label %45
    i32 130, label %52
    i32 129, label %65
  ]

45:                                               ; preds = %33
  %46 = load i32, i32* @AR5K_CR_TXE0, align 4
  %47 = load i32, i32* @AR5K_CR_TXD0, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %83

52:                                               ; preds = %33
  %53 = load i32, i32* @AR5K_CR_TXE1, align 4
  %54 = load i32, i32* @AR5K_CR_TXD1, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %60 = load i32, i32* @AR5K_BCR_TQ1V, align 4
  %61 = load i32, i32* @AR5K_BCR_BDMAE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @AR5K_BSR, align 4
  %64 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %59, i32 %62, i32 %63)
  br label %83

65:                                               ; preds = %33
  %66 = load i32, i32* @AR5K_CR_TXE1, align 4
  %67 = load i32, i32* @AR5K_CR_TXD1, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %73 = load i32, i32* @AR5K_BCR_TQ1FV, align 4
  %74 = load i32, i32* @AR5K_BCR_TQ1V, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @AR5K_BCR_BDMAE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @AR5K_BSR, align 4
  %79 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %72, i32 %77, i32 %78)
  br label %83

80:                                               ; preds = %33
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %106

83:                                               ; preds = %65, %52, %45
  %84 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @AR5K_CR, align 4
  %87 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %84, i32 %85, i32 %86)
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %89 = load i32, i32* @AR5K_CR, align 4
  %90 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %88, i32 %89)
  br label %105

91:                                               ; preds = %27
  %92 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %93 = load i32, i32* @AR5K_QCU_TXD, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @AR5K_REG_READ_Q(%struct.ath5k_hw* %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %106

100:                                              ; preds = %91
  %101 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %102 = load i32, i32* @AR5K_QCU_TXE, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @AR5K_REG_WRITE_Q(%struct.ath5k_hw* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %83
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %97, %80, %24
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @AR5K_ASSERT_ENTRY(i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i64 @AR5K_REG_READ_Q(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_Q(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
