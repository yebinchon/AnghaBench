; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdhci_host = type { i32, i32, i32, %struct.mmc_request*, i32 }

@SDHCI_QUIRK_BROKEN_CARD_DETECTION = common dso_local global i32 0, align 4
@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_CARD_PRESENT = common dso_local global i32 0, align 4
@SDHCI_DEVICE_DEAD = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@SDHCI_NEEDS_RETUNING = common dso_local global i32 0, align 4
@SDHCI_DOING_WRITE = common dso_local global i32 0, align 4
@SDHCI_DOING_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @sdhci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.sdhci_host* %10, %struct.sdhci_host** %5, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 2
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 3
  %17 = load %struct.mmc_request*, %struct.mmc_request** %16, align 8
  %18 = icmp ne %struct.mmc_request* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %22 = call i32 @sdhci_activate_led(%struct.sdhci_host* %21)
  %23 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %25 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %24, i32 0, i32 3
  store %struct.mmc_request* %23, %struct.mmc_request** %25, align 8
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %27 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SDHCI_QUIRK_BROKEN_CARD_DETECTION, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %35 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %36 = call i32 @sdhci_readl(%struct.sdhci_host* %34, i32 %35)
  %37 = load i32, i32* @SDHCI_CARD_PRESENT, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %32
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SDHCI_DEVICE_DEAD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42, %39
  %50 = load i32, i32* @ENOMEDIUM, align 4
  %51 = sub nsw i32 0, %50
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %53 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %52, i32 0, i32 3
  %54 = load %struct.mmc_request*, %struct.mmc_request** %53, align 8
  %55 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %51, i32* %57, align 4
  %58 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %59 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %58, i32 0, i32 4
  %60 = call i32 @tasklet_schedule(i32* %59)
  br label %98

61:                                               ; preds = %42
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %63 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %64 = call i32 @sdhci_readl(%struct.sdhci_host* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %66 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SDHCI_NEEDS_RETUNING, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @SDHCI_DOING_WRITE, align 4
  %74 = load i32, i32* @SDHCI_DOING_READ, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %80 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %79, i32 0, i32 2
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %84 = call i32 @sdhci_execute_tuning(%struct.mmc_host* %83)
  %85 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %86 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %85, i32 0, i32 2
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %90 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %91 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %90, i32 0, i32 3
  store %struct.mmc_request* %89, %struct.mmc_request** %91, align 8
  br label %92

92:                                               ; preds = %78, %71, %61
  %93 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %94 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = call i32 @sdhci_send_command(%struct.sdhci_host* %93, %struct.TYPE_2__* %96)
  br label %98

98:                                               ; preds = %92, %49
  %99 = call i32 (...) @mmiowb()
  %100 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %101 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %100, i32 0, i32 2
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sdhci_activate_led(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sdhci_execute_tuning(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_send_command(%struct.sdhci_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @mmiowb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
