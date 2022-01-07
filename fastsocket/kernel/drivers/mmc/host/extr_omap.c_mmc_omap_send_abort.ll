; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_send_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_send_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { %struct.mmc_omap_slot* }
%struct.mmc_omap_slot = type { i32 }

@STAT = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_END_OF_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, i32)* @mmc_omap_send_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_send_abort(%struct.mmc_omap_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_omap_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %10, i32 0, i32 0
  %12 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %11, align 8
  store %struct.mmc_omap_slot* %12, %struct.mmc_omap_slot** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 120000000, %15
  %17 = sub nsw i32 %16, 1
  %18 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %5, align 8
  %19 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %17, %20
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %50, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %28 = load i32, i32* @STAT, align 4
  %29 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %27, i32 %28, i32 65535)
  %30 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %31 = load i32, i32* @CMD, align 4
  %32 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %30, i32 %31, i32 12416)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %46, %26
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %39 = load i32, i32* @STAT, align 4
  %40 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @OMAP_MMC_STAT_END_OF_CMD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %54

46:                                               ; preds = %37
  %47 = call i32 @udelay(i32 1)
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %22

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %53, %45
  %55 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %56 = load i32, i32* @STAT, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

declare dso_local i32 @OMAP_MMC_READ(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
