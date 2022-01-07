; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_init_bbp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_init_bbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@EEPROM_BBP_SIZE = common dso_local global i32 0, align 4
@EEPROM_BBP_START = common dso_local global i64 0, align 8
@EEPROM_BBP_REG_ID = common dso_local global i32 0, align 4
@EEPROM_BBP_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2400pci_init_bbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2400pci_init_bbp(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = call i32 @rt2400pci_wait_bbp_ready(%struct.rt2x00_dev* %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EACCES, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %16, i32 1, i32 0)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %19 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %18, i32 3, i32 39)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %20, i32 4, i32 8)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %22, i32 10, i32 15)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %24, i32 15, i32 114)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %26, i32 16, i32 116)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %28, i32 17, i32 32)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %30, i32 18, i32 114)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %32, i32 19, i32 11)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %34, i32 20, i32 0)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %37 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %36, i32 28, i32 17)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %38, i32 29, i32 4)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %40, i32 30, i32 33)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %42, i32 31, i32 0)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %72, %15
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @EEPROM_BBP_SIZE, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = load i64, i64* @EEPROM_BBP_START, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %49, i64 %53, i32* %5)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 65535
  br i1 %56, label %57, label %71

57:                                               ; preds = %48
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @EEPROM_BBP_REG_ID, align 4
  %63 = call i32 @rt2x00_get_field16(i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @EEPROM_BBP_VALUE, align 4
  %66 = call i32 @rt2x00_get_field16(i32 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @rt2400pci_bbp_write(%struct.rt2x00_dev* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %57, %48
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %44

75:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %12
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2400pci_wait_bbp_ready(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2400pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i64, i32*) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
