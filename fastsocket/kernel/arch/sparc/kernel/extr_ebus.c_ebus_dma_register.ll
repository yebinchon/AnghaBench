; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ebus.c_ebus_dma_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ebus.c_ebus_dma_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebus_dma_info = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUS_DMA_FLAG_USE_EBDMA_HANDLER = common dso_local global i32 0, align 4
@EBUS_DMA_FLAG_TCI_DISABLE = common dso_local global i32 0, align 4
@EBDMA_CSR_BURST_SZ_16 = common dso_local global i32 0, align 4
@EBDMA_CSR_EN_CNT = common dso_local global i32 0, align 4
@EBDMA_CSR_TCI_DIS = common dso_local global i32 0, align 4
@EBDMA_CSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebus_dma_register(%struct.ebus_dma_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ebus_dma_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ebus_dma_info* %0, %struct.ebus_dma_info** %3, align 8
  %5 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %6 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %73

12:                                               ; preds = %1
  %13 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %14 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @EBUS_DMA_FLAG_USE_EBDMA_HANDLER, align 4
  %17 = load i32, i32* @EBUS_DMA_FLAG_TCI_DISABLE, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %73

25:                                               ; preds = %12
  %26 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %27 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EBUS_DMA_FLAG_USE_EBDMA_HANDLER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %34 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %73

40:                                               ; preds = %32, %25
  %41 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %42 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strlen(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %73

49:                                               ; preds = %40
  %50 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %51 = call i32 @__ebus_dma_reset(%struct.ebus_dma_info* %50, i32 1)
  %52 = load i32, i32* @EBDMA_CSR_BURST_SZ_16, align 4
  %53 = load i32, i32* @EBDMA_CSR_EN_CNT, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %4, align 4
  %55 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %56 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EBUS_DMA_FLAG_TCI_DISABLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load i32, i32* @EBDMA_CSR_TCI_DIS, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %49
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.ebus_dma_info*, %struct.ebus_dma_info** %3, align 8
  %68 = getelementptr inbounds %struct.ebus_dma_info, %struct.ebus_dma_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @EBDMA_CSR, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %65, %46, %37, %22, %9
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @__ebus_dma_reset(%struct.ebus_dma_info*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
