; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_sleep_to_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_sleep_to_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32)* }

@CARDSLEEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s -> ENABLED\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CARDSLEEP\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"REGSLEEP\00", align 1
@ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*)* @omap_hsmmc_sleep_to_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_sleep_to_enabled(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  %6 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @mmc_try_claim_host(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_enable(i32 %15)
  %17 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %18 = call i32 @omap_hsmmc_context_restore(%struct.omap_hsmmc_host* %17)
  %19 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %20 = call i32 (i32, i32, i32, i32, i32)* @mmc_slot(%struct.omap_hsmmc_host* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 (i32, i32, i32, i32, i32)* %20, i32 (i32, i32, i32, i32, i32)** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %23 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %22, align 8
  %24 = icmp ne i32 (i32, i32, i32, i32, i32)* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %12
  %26 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %27 = call i32 (i32, i32, i32, i32, i32)* @mmc_slot(%struct.omap_hsmmc_host* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 (i32, i32, i32, i32, i32)* %27, i32 (i32, i32, i32, i32, i32)** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %30 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %29, align 8
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %41 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CARDSLEEP, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 %30(i32 %33, i32 %36, i32 0, i32 %39, i32 %45)
  br label %47

47:                                               ; preds = %25, %12
  %48 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %49 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @mmc_card_can_sleep(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mmc_card_awake(i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @mmc_dev(i32 %61)
  %63 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %64 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CARDSLEEP, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %70 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load i64, i64* @ENABLED, align 8
  %72 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %73 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %75 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @mmc_release_host(i32 %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %58, %11
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @mmc_try_claim_host(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @omap_hsmmc_context_restore(%struct.omap_hsmmc_host*) #1

declare dso_local i32 (i32, i32, i32, i32, i32)* @mmc_slot(%struct.omap_hsmmc_host*) #1

declare dso_local i64 @mmc_card_can_sleep(i32) #1

declare dso_local i32 @mmc_card_awake(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
