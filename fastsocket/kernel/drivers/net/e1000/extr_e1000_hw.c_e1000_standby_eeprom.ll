; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_standby_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_standby_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64, i32 }

@EECD = common dso_local global i32 0, align 4
@e1000_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_CS = common dso_local global i32 0, align 4
@E1000_EECD_SK = common dso_local global i32 0, align 4
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_standby_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_standby_eeprom(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_eeprom_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  store %struct.e1000_eeprom_info* %6, %struct.e1000_eeprom_info** %3, align 8
  %7 = load i32, i32* @EECD, align 4
  %8 = call i32 @er32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_eeprom_microwire, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_EECD_CS, align 4
  %16 = load i32, i32* @E1000_EECD_SK, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @EECD, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ew32(i32 %21, i32 %22)
  %24 = call i32 (...) @E1000_WRITE_FLUSH()
  %25 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @udelay(i32 %27)
  %29 = load i32, i32* @E1000_EECD_SK, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @EECD, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ew32(i32 %32, i32 %33)
  %35 = call i32 (...) @E1000_WRITE_FLUSH()
  %36 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @udelay(i32 %38)
  %40 = load i32, i32* @E1000_EECD_CS, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @EECD, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ew32(i32 %43, i32 %44)
  %46 = call i32 (...) @E1000_WRITE_FLUSH()
  %47 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @udelay(i32 %49)
  %51 = load i32, i32* @E1000_EECD_SK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @EECD, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ew32(i32 %55, i32 %56)
  %58 = call i32 (...) @E1000_WRITE_FLUSH()
  %59 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @udelay(i32 %61)
  br label %94

63:                                               ; preds = %1
  %64 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @e1000_eeprom_spi, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %63
  %70 = load i32, i32* @E1000_EECD_CS, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @EECD, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @ew32(i32 %73, i32 %74)
  %76 = call i32 (...) @E1000_WRITE_FLUSH()
  %77 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %3, align 8
  %78 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @udelay(i32 %79)
  %81 = load i32, i32* @E1000_EECD_CS, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @EECD, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @ew32(i32 %85, i32 %86)
  %88 = call i32 (...) @E1000_WRITE_FLUSH()
  %89 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @udelay(i32 %91)
  br label %93

93:                                               ; preds = %69, %63
  br label %94

94:                                               ; preds = %93, %14
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
