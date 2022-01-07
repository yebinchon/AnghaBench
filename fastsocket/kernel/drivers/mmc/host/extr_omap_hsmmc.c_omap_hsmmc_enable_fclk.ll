; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_enable_fclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_enable_fclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.omap_hsmmc_host = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"mmc_fclk: enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @omap_hsmmc_enable_fclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_enable_fclk(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.omap_hsmmc_host* %7, %struct.omap_hsmmc_host** %4, align 8
  %8 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %18 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mmc_dev(i32 %19)
  %21 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %23 = call i32 @omap_hsmmc_context_restore(%struct.omap_hsmmc_host* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %16, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @omap_hsmmc_context_restore(%struct.omap_hsmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
