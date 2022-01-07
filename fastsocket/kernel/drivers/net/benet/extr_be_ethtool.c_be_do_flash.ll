; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_do_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_do_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_flash = type { i32 }
%struct.be_adapter = type { i32 }

@ETHTOOL_FLASH_MAX_FILENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_flash*)* @be_do_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_do_flash(%struct.net_device* %0, %struct.ethtool_flash* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_flash*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_flash* %1, %struct.ethtool_flash** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.be_adapter* %9, %struct.be_adapter** %5, align 8
  %10 = load i32, i32* @ETHTOOL_FLASH_MAX_FILENAME, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @ETHTOOL_FLASH_MAX_FILENAME, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8 0, i8* %17, align 1
  %18 = load %struct.ethtool_flash*, %struct.ethtool_flash** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i8* %13, i32 %20)
  %22 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %23 = call i32 @be_load_fw(%struct.be_adapter* %22, i8* %13)
  %24 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %24)
  ret i32 %23
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @be_load_fw(%struct.be_adapter*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
