; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device_info = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\09MAC 10/100\0A\00", align 1
@mac100_driver = common dso_local global i32 0, align 4
@PMT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@MAC_CONTROL_PS = common dso_local global i32 0, align 4
@MAC_CONTROL_F = common dso_local global i32 0, align 4
@MAC_MII_ADDR = common dso_local global i32 0, align 4
@MAC_MII_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mac_device_info* @mac100_setup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mac_device_info*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.mac_device_info* @kzalloc(i32 40, i32 %4)
  store %struct.mac_device_info* %5, %struct.mac_device_info** %3, align 8
  %6 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %8 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %7, i32 0, i32 1
  store i32* @mac100_driver, i32** %8, align 8
  %9 = load i32, i32* @PMT_NOT_SUPPORTED, align 4
  %10 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %11 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @MAC_CONTROL_PS, align 4
  %14 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %15 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @MAC_CONTROL_F, align 4
  %19 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %20 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 8
  %23 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %24 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @MAC_MII_ADDR, align 4
  %28 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %29 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @MAC_MII_DATA, align 4
  %33 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %34 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  ret %struct.mac_device_info* %37
}

declare dso_local %struct.mac_device_info* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
