; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_eeprom_register_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_eeprom_register_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i64, i64, i64, i64, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RTL818X_EEPROM_CMD_PROGRAM = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_WRITE = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_READ = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CK = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*)* @rtl8187_eeprom_register_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187_eeprom_register_write(%struct.eeprom_93cx6* %0) #0 {
  %2 = alloca %struct.eeprom_93cx6*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8187_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %2, align 8
  %6 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %7 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %6, i32 0, i32 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %10, align 8
  store %struct.rtl8187_priv* %11, %struct.rtl8187_priv** %4, align 8
  %12 = load i32, i32* @RTL818X_EEPROM_CMD_PROGRAM, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %14 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @RTL818X_EEPROM_CMD_WRITE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %23 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @RTL818X_EEPROM_CMD_READ, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %32 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @RTL818X_EEPROM_CMD_CK, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %41 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @RTL818X_EEPROM_CMD_CS, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %50 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %51 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %49, i32* %53, i32 %54)
  %56 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
