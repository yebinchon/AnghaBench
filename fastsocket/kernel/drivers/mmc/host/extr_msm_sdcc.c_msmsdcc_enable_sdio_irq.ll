; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.msmsdcc_host = type { i32, i64, i32 }

@msmsdcc_sdioirq = common dso_local global i32 0, align 4
@MMCIMASK0 = common dso_local global i64 0, align 8
@MCI_SDIOINTOPERMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @msmsdcc_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msmsdcc_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msmsdcc_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.msmsdcc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.msmsdcc_host* %9, %struct.msmsdcc_host** %5, align 8
  %10 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %11 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @msmsdcc_sdioirq, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %18 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MMCIMASK0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @MCI_SDIOINTOPERMASK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %16
  %30 = load i32, i32* @MCI_SDIOINTOPERMASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %37 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %40 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MMCIMASK0, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %34, %2
  %46 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %47 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %46, i32 0, i32 0
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local %struct.msmsdcc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
