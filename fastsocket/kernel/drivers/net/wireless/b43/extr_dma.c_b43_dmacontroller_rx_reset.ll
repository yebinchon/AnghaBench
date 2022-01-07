; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dmacontroller_rx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dmacontroller_rx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_DMA_64BIT = common dso_local global i32 0, align 4
@B43_DMA64_RXCTL = common dso_local global i64 0, align 8
@B43_DMA32_RXCTL = common dso_local global i64 0, align 8
@B43_DMA64_RXSTATUS = common dso_local global i64 0, align 8
@B43_DMA32_RXSTATUS = common dso_local global i64 0, align 8
@B43_DMA64_RXSTAT = common dso_local global i32 0, align 4
@B43_DMA64_RXSTAT_DISABLED = common dso_local global i32 0, align 4
@B43_DMA32_RXSTATE = common dso_local global i32 0, align 4
@B43_DMA32_RXSTAT_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DMA RX reset timed out\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i64, i32)* @b43_dmacontroller_rx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_dmacontroller_rx_reset(%struct.b43_wldev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @might_sleep()
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @B43_DMA_64BIT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @B43_DMA64_RXCTL, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @B43_DMA32_RXCTL, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %10, align 8
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @b43_write32(%struct.b43_wldev* %21, i64 %24, i32 0)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %67, %19
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %70

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @B43_DMA_64BIT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @B43_DMA64_RXSTATUS, align 8
  br label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @B43_DMA32_RXSTATUS, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i64 [ %34, %33 ], [ %36, %35 ]
  store i64 %38, i64* %10, align 8
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @b43_read32(%struct.b43_wldev* %39, i64 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @B43_DMA_64BIT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i32, i32* @B43_DMA64_RXSTAT, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @B43_DMA64_RXSTAT_DISABLED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 -1, i32* %8, align 4
  br label %70

55:                                               ; preds = %47
  br label %65

56:                                               ; preds = %37
  %57 = load i32, i32* @B43_DMA32_RXSTATE, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @B43_DMA32_RXSTAT_DISABLED, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 -1, i32* %8, align 4
  br label %70

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %55
  %66 = call i32 @msleep(i32 1)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %26

70:                                               ; preds = %63, %54, %26
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %75 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @b43err(i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i64, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
