; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_transfer_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_transfer_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@SDHCI_DATA_AVAILABLE = common dso_local global i32 0, align 4
@SDHCI_SPACE_AVAILABLE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_SMALL_PIO = common dso_local global i32 0, align 4
@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_PIO_NEEDS_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PIO transfer complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_transfer_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_transfer_pio(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MMC_DATA_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @SDHCI_DATA_AVAILABLE, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %16
  %28 = load i32, i32* @SDHCI_SPACE_AVAILABLE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SDHCI_QUIRK_BROKEN_SMALL_PIO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %38 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %36, %29
  br label %45

45:                                               ; preds = %86, %44
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %47 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %48 = call i32 @sdhci_readl(%struct.sdhci_host* %46, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %45
  %53 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %54 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SDHCI_QUIRK_PIO_NEEDS_DELAY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @udelay(i32 100)
  br label %61

61:                                               ; preds = %59, %52
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %63 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MMC_DATA_READ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %72 = call i32 @sdhci_read_block_pio(%struct.sdhci_host* %71)
  br label %76

73:                                               ; preds = %61
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %75 = call i32 @sdhci_write_block_pio(%struct.sdhci_host* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %78 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %82 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %87

86:                                               ; preds = %76
  br label %45

87:                                               ; preds = %85, %45
  %88 = call i32 @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %15
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sdhci_read_block_pio(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_write_block_pio(%struct.sdhci_host*) #1

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
