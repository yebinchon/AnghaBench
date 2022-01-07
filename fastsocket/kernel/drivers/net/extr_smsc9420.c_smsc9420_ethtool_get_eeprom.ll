; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_ethtool_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_ethtool_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i64, i32 }
%struct.smsc9420_pdata = type { i32 }

@SMSC9420_EEPROM_SIZE = common dso_local global i32 0, align 4
@SMSC9420_EEPROM_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @smsc9420_ethtool_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_ethtool_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.smsc9420_pdata*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %15)
  store %struct.smsc9420_pdata* %16, %struct.smsc9420_pdata** %8, align 8
  %17 = load i32, i32* @SMSC9420_EEPROM_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %8, align 8
  %22 = call i32 @smsc9420_eeprom_enable_access(%struct.smsc9420_pdata* %21)
  %23 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %24 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SMSC9420_EEPROM_SIZE, align 4
  %27 = call i32 @min(i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %43, %3
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %8, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @smsc9420_eeprom_read_location(%struct.smsc9420_pdata* %33, i32 %34, i32* %20)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %40 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %60

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %20, i64 %50
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @memcpy(i32* %47, i32* %51, i32 %52)
  %54 = load i32, i32* @SMSC9420_EEPROM_MAGIC, align 4
  %55 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %56 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %59 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %60

60:                                               ; preds = %46, %38
  %61 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @smsc9420_eeprom_enable_access(%struct.smsc9420_pdata*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @smsc9420_eeprom_read_location(%struct.smsc9420_pdata*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
