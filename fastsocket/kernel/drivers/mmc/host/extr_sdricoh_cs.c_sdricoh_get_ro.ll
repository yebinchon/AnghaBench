; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_get_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdricoh_host = type { i32 }

@R21C_STATUS = common dso_local global i32 0, align 4
@R2E4_STATUS_RESP = common dso_local global i32 0, align 4
@switchlocked = common dso_local global i64 0, align 8
@STATUS_CARD_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @sdricoh_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdricoh_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.sdricoh_host*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.sdricoh_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.sdricoh_host* %7, %struct.sdricoh_host** %4, align 8
  %8 = load %struct.sdricoh_host*, %struct.sdricoh_host** %4, align 8
  %9 = load i32, i32* @R21C_STATUS, align 4
  %10 = call i32 @sdricoh_readl(%struct.sdricoh_host* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sdricoh_host*, %struct.sdricoh_host** %4, align 8
  %12 = load i32, i32* @R2E4_STATUS_RESP, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @sdricoh_writel(%struct.sdricoh_host* %11, i32 %12, i32 %13)
  %15 = load i64, i64* @switchlocked, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @STATUS_CARD_LOCKED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @STATUS_CARD_LOCKED, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.sdricoh_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @sdricoh_readl(%struct.sdricoh_host*, i32) #1

declare dso_local i32 @sdricoh_writel(%struct.sdricoh_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
