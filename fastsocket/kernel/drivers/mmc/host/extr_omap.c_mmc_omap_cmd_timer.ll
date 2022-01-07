; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_cmd_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_cmd_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, i32, i32, i32, i32* }

@IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mmc_omap_cmd_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_cmd_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.mmc_omap_host*
  store %struct.mmc_omap_host* %6, %struct.mmc_omap_host** %3, align 8
  %7 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %22 = load i32, i32* @IE, align 4
  %23 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %21, i32 %22, i32 0)
  %24 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @disable_irq(i32 %26)
  %28 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %30, i32 0, i32 2
  %32 = call i32 @schedule_work(i32* %31)
  br label %33

33:                                               ; preds = %20, %15, %1
  %34 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %34, i32 0, i32 1
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
