; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_disabled_to_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_disabled_to_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 (i32, i32)*, i64, i32 (i32, i32, i32, i32, i32)* }

@CARDSLEEP = common dso_local global i32 0, align 4
@REGSLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DISABLED -> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CARDSLEEP\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"REGSLEEP\00", align 1
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@OMAP_MMC_OFF_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*)* @omap_hsmmc_disabled_to_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_disabled_to_sleep(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  %11 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %11, i32 0, i32 3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @mmc_try_claim_host(%struct.TYPE_7__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %128

17:                                               ; preds = %1
  %18 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clk_enable(i32 %20)
  %22 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %23 = call i32 @omap_hsmmc_context_restore(%struct.omap_hsmmc_host* %22)
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %24, i32 0, i32 3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = call i64 @mmc_card_can_sleep(%struct.TYPE_7__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %17
  %30 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %31 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %30, i32 0, i32 3
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = call i32 @mmc_card_sleep(%struct.TYPE_7__* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clk_disable(i32 %39)
  %41 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = call i32 @mmc_release_host(%struct.TYPE_7__* %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %128

46:                                               ; preds = %29
  %47 = load i32, i32* @CARDSLEEP, align 4
  store i32 %47, i32* %5, align 4
  br label %50

48:                                               ; preds = %17
  %49 = load i32, i32* @REGSLEEP, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  call void @mmc_slot(%struct.TYPE_8__* sret %6, %struct.omap_hsmmc_host* %51)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %53 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %52, align 8
  %54 = icmp ne i32 (i32, i32, i32, i32, i32)* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  call void @mmc_slot(%struct.TYPE_8__* sret %7, %struct.omap_hsmmc_host* %56)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %58 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %57, align 8
  %59 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %63 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @CARDSLEEP, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 %58(i32 %61, i32 %64, i32 1, i32 0, i32 %68)
  br label %70

70:                                               ; preds = %55, %50
  %71 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %72 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clk_disable(i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %77 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %79 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %78, i32 0, i32 3
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = call i32 @mmc_release_host(%struct.TYPE_7__* %80)
  %82 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %83 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = call i32 @mmc_dev(%struct.TYPE_7__* %84)
  %86 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %87 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CARDSLEEP, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %93 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %92)
  %94 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %95 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %94, i32 0, i32 3
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %70
  %103 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  call void @mmc_slot(%struct.TYPE_8__* sret %8, %struct.omap_hsmmc_host* %103)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %102
  %108 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  call void @mmc_slot(%struct.TYPE_8__* sret %9, %struct.omap_hsmmc_host* %108)
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %110 = load i64 (i32, i32)*, i64 (i32, i32)** %109, align 8
  %111 = icmp ne i64 (i32, i32)* %110, null
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  call void @mmc_slot(%struct.TYPE_8__* sret %10, %struct.omap_hsmmc_host* %113)
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %115 = load i64 (i32, i32)*, i64 (i32, i32)** %114, align 8
  %116 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %117 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %120 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 %115(i32 %118, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %112, %102, %70
  %125 = load i32, i32* @OMAP_MMC_OFF_TIMEOUT, align 4
  %126 = call i32 @msecs_to_jiffies(i32 %125)
  store i32 %126, i32* %2, align 4
  br label %128

127:                                              ; preds = %112, %107
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %124, %36, %16
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @mmc_try_claim_host(%struct.TYPE_7__*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @omap_hsmmc_context_restore(%struct.omap_hsmmc_host*) #1

declare dso_local i64 @mmc_card_can_sleep(%struct.TYPE_7__*) #1

declare dso_local i32 @mmc_card_sleep(%struct.TYPE_7__*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @mmc_release_host(%struct.TYPE_7__*) #1

declare dso_local void @mmc_slot(%struct.TYPE_8__* sret, %struct.omap_hsmmc_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_7__*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
