; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_dmacontroller_tx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_dmacontroller_tx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }

@B43legacy_DMA32_TXSTATUS = common dso_local global i64 0, align 8
@B43legacy_DMA32_TXSTATE = common dso_local global i32 0, align 4
@B43legacy_DMA32_TXSTAT_DISABLED = common dso_local global i32 0, align 4
@B43legacy_DMA32_TXSTAT_IDLEWAIT = common dso_local global i32 0, align 4
@B43legacy_DMA32_TXSTAT_STOPPED = common dso_local global i32 0, align 4
@B43legacy_DMA32_TXCTL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"DMA TX reset timed out\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*, i64, i32)* @b43legacy_dmacontroller_tx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_dmacontroller_tx_reset(%struct.b43legacy_wldev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @might_sleep()
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %39, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load i64, i64* @B43legacy_DMA32_TXSTATUS, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %17, i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @B43legacy_DMA32_TXSTATE, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @B43legacy_DMA32_TXSTAT_DISABLED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @B43legacy_DMA32_TXSTAT_IDLEWAIT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @B43legacy_DMA32_TXSTAT_STOPPED, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28, %15
  br label %42

37:                                               ; preds = %32
  %38 = call i32 @msleep(i32 1)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %12

42:                                               ; preds = %36, %12
  %43 = load i64, i64* @B43legacy_DMA32_TXCTL, align 8
  store i64 %43, i64* %10, align 8
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %44, i64 %47, i32 0)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %68, %42
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 10
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load i64, i64* @B43legacy_DMA32_TXSTATUS, align 8
  store i64 %53, i64* %10, align 8
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %54, i64 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @B43legacy_DMA32_TXSTATE, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @B43legacy_DMA32_TXSTAT_DISABLED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32 -1, i32* %8, align 4
  br label %71

66:                                               ; preds = %52
  %67 = call i32 @msleep(i32 1)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %49

71:                                               ; preds = %65, %49
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %76 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @b43legacyerr(i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %71
  %82 = call i32 @msleep(i32 1)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %74
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i64, i32) #1

declare dso_local i32 @b43legacyerr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
