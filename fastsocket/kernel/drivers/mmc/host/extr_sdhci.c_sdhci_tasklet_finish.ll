; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_tasklet_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_tasklet_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32, i32, i32, i32*, i32*, %struct.mmc_request*, i32 }
%struct.mmc_request = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@SDHCI_DEVICE_DEAD = common dso_local global i32 0, align 4
@SDHCI_QUIRK_RESET_AFTER_REQUEST = common dso_local global i32 0, align 4
@SDHCI_QUIRK_CLOCK_BEFORE_RESET = common dso_local global i32 0, align 4
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sdhci_tasklet_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_tasklet_finish(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.sdhci_host*
  store %struct.sdhci_host* %8, %struct.sdhci_host** %3, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %9, i32 0, i32 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 8
  %15 = call i32 @del_timer(i32* %14)
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 7
  %18 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  store %struct.mmc_request* %18, %struct.mmc_request** %5, align 8
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %20 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SDHCI_DEVICE_DEAD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %90, label %25

25:                                               ; preds = %1
  %26 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %27 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %25
  %33 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %34 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %39 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %37
  %45 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %46 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %53 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %51, %44, %32
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SDHCI_QUIRK_RESET_AFTER_REQUEST, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %60, %51, %37, %25
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %69 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SDHCI_QUIRK_CLOCK_BEFORE_RESET, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %76 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %6, align 4
  %78 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %79 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %78, i32 0, i32 2
  store i32 0, i32* %79, align 8
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @sdhci_set_clock(%struct.sdhci_host* %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %67
  %84 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %85 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %86 = call i32 @sdhci_reset(%struct.sdhci_host* %84, i32 %85)
  %87 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %88 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %89 = call i32 @sdhci_reset(%struct.sdhci_host* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %60, %1
  %91 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %92 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %91, i32 0, i32 7
  store %struct.mmc_request* null, %struct.mmc_request** %92, align 8
  %93 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %94 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %93, i32 0, i32 6
  store i32* null, i32** %94, align 8
  %95 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %96 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %95, i32 0, i32 5
  store i32* null, i32** %96, align 8
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %98 = call i32 @sdhci_deactivate_led(%struct.sdhci_host* %97)
  %99 = call i32 (...) @mmiowb()
  %100 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %101 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %100, i32 0, i32 4
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %105 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %108 = call i32 @mmc_request_done(i32 %106, %struct.mmc_request* %107)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @sdhci_set_clock(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_deactivate_led(%struct.sdhci_host*) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
