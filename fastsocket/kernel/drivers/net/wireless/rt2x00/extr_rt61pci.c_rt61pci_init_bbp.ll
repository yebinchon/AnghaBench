; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_init_bbp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_init_bbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@EEPROM_BBP_SIZE = common dso_local global i32 0, align 4
@EEPROM_BBP_START = common dso_local global i64 0, align 8
@EEPROM_BBP_REG_ID = common dso_local global i32 0, align 4
@EEPROM_BBP_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt61pci_init_bbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_init_bbp(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = call i32 @rt61pci_wait_bbp_ready(%struct.rt2x00_dev* %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EACCES, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %16, i32 3, i32 0)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %19 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %18, i32 15, i32 48)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %20, i32 21, i32 200)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %22, i32 22, i32 56)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %24, i32 23, i32 6)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %26, i32 24, i32 254)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %28, i32 25, i32 10)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %30, i32 26, i32 13)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %32, i32 34, i32 18)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %34, i32 37, i32 7)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %37 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %36, i32 39, i32 248)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %38, i32 41, i32 96)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %40, i32 53, i32 16)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %42, i32 54, i32 24)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %44, i32 60, i32 16)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %46, i32 61, i32 4)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %49 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %48, i32 62, i32 4)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %50, i32 75, i32 254)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %52, i32 86, i32 254)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %54, i32 88, i32 254)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %56, i32 90, i32 15)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %58, i32 99, i32 0)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %60, i32 102, i32 22)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %62, i32 107, i32 4)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %92, %15
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @EEPROM_BBP_SIZE, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %70 = load i64, i64* @EEPROM_BBP_START, align 8
  %71 = load i32, i32* %4, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %69, i64 %73, i32* %5)
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 65535
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @EEPROM_BBP_REG_ID, align 4
  %83 = call i32 @rt2x00_get_field16(i32 %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @EEPROM_BBP_VALUE, align 4
  %86 = call i32 @rt2x00_get_field16(i32 %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @rt61pci_bbp_write(%struct.rt2x00_dev* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %80, %77, %68
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %64

95:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %12
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt61pci_wait_bbp_ready(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt61pci_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i64, i32*) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
