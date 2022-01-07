; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c__dma_isaddrext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c__dma_isaddrext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { i64, i64, i32, i32 }

@control = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: DMA64 tx doesn't have AE set\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: DMA64 rx doesn't have AE set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_info*)* @_dma_isaddrext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dma_isaddrext(%struct.dma_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_info*, align 8
  store %struct.dma_info* %0, %struct.dma_info** %3, align 8
  %4 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %5 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %10 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %11 = load i32, i32* @control, align 4
  %12 = call i32 @DMA64TXREGOFFS(%struct.dma_info* %10, i32 %11)
  %13 = call i32 @_dma64_addrext(%struct.dma_info* %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %17 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %20 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @brcms_dbg_dma(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %15, %8
  store i32 1, i32* %2, align 4
  br label %47

24:                                               ; preds = %1
  %25 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %26 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %31 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %32 = load i32, i32* @control, align 4
  %33 = call i32 @DMA64RXREGOFFS(%struct.dma_info* %31, i32 %32)
  %34 = call i32 @_dma64_addrext(%struct.dma_info* %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %38 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %41 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @brcms_dbg_dma(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %36, %29
  store i32 1, i32* %2, align 4
  br label %47

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %44, %23
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @_dma64_addrext(%struct.dma_info*, i32) #1

declare dso_local i32 @DMA64TXREGOFFS(%struct.dma_info*, i32) #1

declare dso_local i32 @brcms_dbg_dma(i32, i8*, i32) #1

declare dso_local i32 @DMA64RXREGOFFS(%struct.dma_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
