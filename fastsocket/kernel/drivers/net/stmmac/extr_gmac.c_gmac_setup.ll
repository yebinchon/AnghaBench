; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_gmac.c_gmac_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_gmac.c_gmac_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device_info = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GMAC_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"\09GMAC - user ID: 0x%x, Synopsys ID: 0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@gmac_driver = common dso_local global i32 0, align 4
@PMT_SUPPORTED = common dso_local global i32 0, align 4
@GMAC_CONTROL_PS = common dso_local global i32 0, align 4
@GMAC_CONTROL_DM = common dso_local global i32 0, align 4
@GMAC_CONTROL_FES = common dso_local global i32 0, align 4
@GMAC_MII_ADDR = common dso_local global i32 0, align 4
@GMAC_MII_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mac_device_info* @gmac_setup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mac_device_info*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @GMAC_VERSION, align 8
  %7 = add i64 %5, %6
  %8 = call i32 @readl(i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 65280
  %11 = ashr i32 %10, 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 255
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mac_device_info* @kzalloc(i32 32, i32 %15)
  store %struct.mac_device_info* %16, %struct.mac_device_info** %3, align 8
  %17 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %18 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %17, i32 0, i32 1
  store i32* @gmac_driver, i32** %18, align 8
  %19 = load i32, i32* @PMT_SUPPORTED, align 4
  %20 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %21 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @GMAC_CONTROL_PS, align 4
  %24 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %25 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 8
  %28 = load i32, i32* @GMAC_CONTROL_DM, align 4
  %29 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %30 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @GMAC_CONTROL_FES, align 4
  %34 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %35 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* @GMAC_MII_ADDR, align 4
  %39 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %40 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @GMAC_MII_DATA, align 4
  %44 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %45 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  %48 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  ret %struct.mac_device_info* %48
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local %struct.mac_device_info* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
