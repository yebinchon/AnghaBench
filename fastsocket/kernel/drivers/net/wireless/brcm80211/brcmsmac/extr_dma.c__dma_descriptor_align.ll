; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c__dma_descriptor_align.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c__dma_descriptor_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { i64, i64, i32 }

@addrlow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_info*)* @_dma_descriptor_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dma_descriptor_align(%struct.dma_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_info*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_info* %0, %struct.dma_info** %3, align 8
  %5 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %6 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %11 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %14 = load i32, i32* @addrlow, align 4
  %15 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %13, i32 %14)
  %16 = call i32 @bcma_write32(i32 %12, i32 %15, i32 4080)
  %17 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %18 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %21 = load i32, i32* @addrlow, align 4
  %22 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %20, i32 %21)
  %23 = call i64 @bcma_read32(i32 %19, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %54

27:                                               ; preds = %9
  br label %53

28:                                               ; preds = %1
  %29 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %30 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %35 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %38 = load i32, i32* @addrlow, align 4
  %39 = call i32 @DMA64RXREGOFFS(%struct.dma_info* %37, i32 %38)
  %40 = call i32 @bcma_write32(i32 %36, i32 %39, i32 4080)
  %41 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %42 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %45 = load i32, i32* @addrlow, align 4
  %46 = call i32 @DMA64RXREGOFFS(%struct.dma_info* %44, i32 %45)
  %47 = call i64 @bcma_read32(i32 %43, i32 %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %54

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %28
  br label %53

53:                                               ; preds = %52, %27
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %26
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @bcma_write32(i32, i32, i32) #1

declare dso_local i32 @DMA64TXREGOFFS(%struct.dma_info*, i32) #1

declare dso_local i64 @bcma_read32(i32, i32) #1

declare dso_local i32 @DMA64RXREGOFFS(%struct.dma_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
