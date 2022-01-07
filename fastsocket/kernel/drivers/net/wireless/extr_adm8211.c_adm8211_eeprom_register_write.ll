; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_eeprom_register_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_eeprom_register_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i64, i64, i64, i64, %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32 }

@ADM8211_SPR_SRS = common dso_local global i32 0, align 4
@ADM8211_SPR_SDI = common dso_local global i32 0, align 4
@ADM8211_SPR_SDO = common dso_local global i32 0, align 4
@ADM8211_SPR_SCLK = common dso_local global i32 0, align 4
@ADM8211_SPR_SCS = common dso_local global i32 0, align 4
@SPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*)* @adm8211_eeprom_register_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8211_eeprom_register_write(%struct.eeprom_93cx6* %0) #0 {
  %2 = alloca %struct.eeprom_93cx6*, align 8
  %3 = alloca %struct.adm8211_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %2, align 8
  %5 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %6 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %5, i32 0, i32 4
  %7 = load %struct.adm8211_priv*, %struct.adm8211_priv** %6, align 8
  store %struct.adm8211_priv* %7, %struct.adm8211_priv** %3, align 8
  %8 = load i32, i32* @ADM8211_SPR_SRS, align 4
  %9 = or i32 16384, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %11 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @ADM8211_SPR_SDI, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %20 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @ADM8211_SPR_SDO, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %29 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @ADM8211_SPR_SCLK, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %38 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @ADM8211_SPR_SCS, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* @SPR, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @ADM8211_CSR_WRITE(i32 %46, i32 %47)
  %49 = load i32, i32* @SPR, align 4
  %50 = call i32 @ADM8211_CSR_READ(i32 %49)
  ret void
}

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i32) #1

declare dso_local i32 @ADM8211_CSR_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
