; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_sleep_to_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_sleep_to_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i64, %struct.TYPE_5__*, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, i32, i32, i32)*, i64 (i32, i32)*, i64 }

@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@MMC_POWER_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s -> OFF\0A\00", align 1
@CARDSLEEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"CARDSLEEP\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"REGSLEEP\00", align 1
@OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*)* @omap_hsmmc_sleep_to_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_sleep_to_off(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  %8 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call i32 @mmc_try_claim_host(%struct.TYPE_5__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

14:                                               ; preds = %1
  %15 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %14
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  call void @mmc_slot(%struct.TYPE_6__* sret %4, %struct.omap_hsmmc_host* %24)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %23
  %29 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  call void @mmc_slot(%struct.TYPE_6__* sret %5, %struct.omap_hsmmc_host* %29)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %31 = load i64 (i32, i32)*, i64 (i32, i32)** %30, align 8
  %32 = icmp ne i64 (i32, i32)* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  call void @mmc_slot(%struct.TYPE_6__* sret %6, %struct.omap_hsmmc_host* %34)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %36 = load i64 (i32, i32)*, i64 (i32, i32)** %35, align 8
  %37 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %41 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i64 %36(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %33, %28
  %46 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @mmc_release_host(%struct.TYPE_5__* %48)
  store i32 0, i32* %2, align 4
  br label %85

50:                                               ; preds = %33, %23, %14
  %51 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  call void @mmc_slot(%struct.TYPE_6__* sret %7, %struct.omap_hsmmc_host* %51)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %53 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %52, align 8
  %54 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %58 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %53(i32 %56, i32 %59, i32 0, i32 0)
  %61 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %62 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @MMC_POWER_OFF, align 4
  %64 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %65 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %67 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = call i32 @mmc_dev(%struct.TYPE_5__* %68)
  %70 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %71 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CARDSLEEP, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %77 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = load i64, i64* @OFF, align 8
  %79 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %80 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %82 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = call i32 @mmc_release_host(%struct.TYPE_5__* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %50, %45, %13
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @mmc_try_claim_host(%struct.TYPE_5__*) #1

declare dso_local void @mmc_slot(%struct.TYPE_6__* sret, %struct.omap_hsmmc_host*) #1

declare dso_local i32 @mmc_release_host(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
