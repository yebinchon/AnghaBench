; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_get_cd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_get_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.omap_hsmmc_host = type { i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @omap_hsmmc_get_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_get_cd(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  %7 = alloca %struct.TYPE_2__, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.omap_hsmmc_host* %9, %struct.omap_hsmmc_host** %4, align 8
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %11 = call { i32 (i32)*, i32 } @mmc_slot(%struct.omap_hsmmc_host* %10)
  %12 = bitcast %struct.TYPE_2__* %5 to { i32 (i32)*, i32 }*
  %13 = getelementptr inbounds { i32 (i32)*, i32 }, { i32 (i32)*, i32 }* %12, i32 0, i32 0
  %14 = extractvalue { i32 (i32)*, i32 } %11, 0
  store i32 (i32)* %14, i32 (i32)** %13, align 8
  %15 = getelementptr inbounds { i32 (i32)*, i32 }, { i32 (i32)*, i32 }* %12, i32 0, i32 1
  %16 = extractvalue { i32 (i32)*, i32 } %11, 1
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = icmp ne i32 (i32)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %43

23:                                               ; preds = %1
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %25 = call { i32 (i32)*, i32 } @mmc_slot(%struct.omap_hsmmc_host* %24)
  %26 = bitcast %struct.TYPE_2__* %6 to { i32 (i32)*, i32 }*
  %27 = getelementptr inbounds { i32 (i32)*, i32 }, { i32 (i32)*, i32 }* %26, i32 0, i32 0
  %28 = extractvalue { i32 (i32)*, i32 } %25, 0
  store i32 (i32)* %28, i32 (i32)** %27, align 8
  %29 = getelementptr inbounds { i32 (i32)*, i32 }, { i32 (i32)*, i32 }* %26, i32 0, i32 1
  %30 = extractvalue { i32 (i32)*, i32 } %25, 1
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %34 = call { i32 (i32)*, i32 } @mmc_slot(%struct.omap_hsmmc_host* %33)
  %35 = bitcast %struct.TYPE_2__* %7 to { i32 (i32)*, i32 }*
  %36 = getelementptr inbounds { i32 (i32)*, i32 }, { i32 (i32)*, i32 }* %35, i32 0, i32 0
  %37 = extractvalue { i32 (i32)*, i32 } %34, 0
  store i32 (i32)* %37, i32 (i32)** %36, align 8
  %38 = getelementptr inbounds { i32 (i32)*, i32 }, { i32 (i32)*, i32 }* %35, i32 0, i32 1
  %39 = extractvalue { i32 (i32)*, i32 } %34, 1
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %32(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %23, %20
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local { i32 (i32)*, i32 } @mmc_slot(%struct.omap_hsmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
