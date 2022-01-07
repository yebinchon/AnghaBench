; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }

@EEPROM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eeprom*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @EEPROM_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 4
  store i64 %12, i64* %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %10, align 8
  %18 = load %struct.adapter*, %struct.adapter** %10, align 8
  %19 = call i32 @EEPROM_MAGIC(%struct.adapter* %18)
  %20 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %43, %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = icmp slt i32 %27, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load %struct.adapter*, %struct.adapter** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %14, i64 %40
  %42 = call i32 @t1_seeprom_read(%struct.adapter* %37, i32 %38, i32* %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %7, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %14, i64 %53
  %55 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32* %49, i32* %54, i32 %57)
  %59 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EEPROM_MAGIC(%struct.adapter*) #2

declare dso_local i32 @t1_seeprom_read(%struct.adapter*, i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
