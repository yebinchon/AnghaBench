; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_eeprom_register_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_eeprom_register_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i64, i64, i64, i64, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RTL818X_EEPROM_CMD_WRITE = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_READ = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CK = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*)* @rtl8180_eeprom_register_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_eeprom_register_write(%struct.eeprom_93cx6* %0) #0 {
  %2 = alloca %struct.eeprom_93cx6*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8180_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %2, align 8
  %6 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %7 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %6, i32 0, i32 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %10, align 8
  store %struct.rtl8180_priv* %11, %struct.rtl8180_priv** %4, align 8
  store i32 128, i32* %5, align 4
  %12 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %13 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @RTL818X_EEPROM_CMD_WRITE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %22 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @RTL818X_EEPROM_CMD_READ, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %31 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @RTL818X_EEPROM_CMD_CK, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %40 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @RTL818X_EEPROM_CMD_CS, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %49 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %50 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %48, i32* %52, i32 %53)
  %55 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %56 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %57 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %55, i32* %59)
  %61 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
