; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_conf_bus_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_conf_bus_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i64, i32 }

@OMAP_MMC1_DEVID = common dso_local global i64 0, align 8
@SDVS30 = common dso_local global i32 0, align 4
@VS30 = common dso_local global i32 0, align 4
@VS18 = common dso_local global i32 0, align 4
@SDVS18 = common dso_local global i32 0, align 4
@HCTL = common dso_local global i32 0, align 4
@SDVS_MASK = common dso_local global i32 0, align 4
@CAPA = common dso_local global i32 0, align 4
@SYSCONFIG = common dso_local global i32 0, align 4
@AUTOIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*)* @omap_hsmmc_conf_bus_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_conf_bus_power(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca %struct.omap_hsmmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %2, align 8
  %6 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @OMAP_MMC1_DEVID, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @SDVS30, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @VS30, align 4
  %14 = load i32, i32* @VS18, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @SDVS18, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @VS18, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %21 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HCTL, align 4
  %24 = call i32 @OMAP_HSMMC_READ(i32 %22, i32 %23)
  %25 = load i32, i32* @SDVS_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %29 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HCTL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @OMAP_HSMMC_WRITE(i32 %30, i32 %31, i32 %34)
  %36 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %37 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CAPA, align 4
  %40 = call i32 @OMAP_HSMMC_READ(i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %42 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CAPA, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @OMAP_HSMMC_WRITE(i32 %43, i32 %44, i32 %47)
  %49 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %50 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SYSCONFIG, align 4
  %53 = call i32 @OMAP_HSMMC_READ(i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %55 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SYSCONFIG, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @AUTOIDLE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @OMAP_HSMMC_WRITE(i32 %56, i32 %57, i32 %60)
  %62 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %63 = call i32 @set_sd_bus_power(%struct.omap_hsmmc_host* %62)
  ret void
}

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @set_sd_bus_power(%struct.omap_hsmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
