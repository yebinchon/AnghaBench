; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_nvram_write_block_using_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_nvram_write_block_using_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@GRC_EEPROM_DATA = common dso_local global i32 0, align 4
@GRC_EEPROM_ADDR = common dso_local global i32 0, align 4
@EEPROM_ADDR_COMPLETE = common dso_local global i32 0, align 4
@EEPROM_ADDR_ADDR_MASK = common dso_local global i32 0, align 4
@EEPROM_ADDR_DEVID_MASK = common dso_local global i32 0, align 4
@EEPROM_ADDR_READ = common dso_local global i32 0, align 4
@EEPROM_ADDR_DEVID_SHIFT = common dso_local global i32 0, align 4
@EEPROM_ADDR_START = common dso_local global i32 0, align 4
@EEPROM_ADDR_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32, i32, i32*)* @tg3_nvram_write_block_using_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_nvram_write_block_using_eeprom(%struct.tg3* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.tg3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %87, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %90

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @memcpy(i32* %14, i32* %26, i32 4)
  %28 = load i32, i32* @GRC_EEPROM_DATA, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = call i32 @swab32(i32 %30)
  %32 = call i32 @tw32(i32 %28, i32 %31)
  %33 = load i32, i32* @GRC_EEPROM_ADDR, align 4
  %34 = call i32 @tr32(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @GRC_EEPROM_ADDR, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @EEPROM_ADDR_COMPLETE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @tw32(i32 %35, i32 %38)
  %40 = load i32, i32* @EEPROM_ADDR_ADDR_MASK, align 4
  %41 = load i32, i32* @EEPROM_ADDR_DEVID_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @EEPROM_ADDR_READ, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @GRC_EEPROM_ADDR, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @EEPROM_ADDR_DEVID_SHIFT, align 4
  %51 = shl i32 0, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @EEPROM_ADDR_ADDR_MASK, align 4
  %55 = and i32 %53, %54
  %56 = or i32 %52, %55
  %57 = load i32, i32* @EEPROM_ADDR_START, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @EEPROM_ADDR_WRITE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @tw32(i32 %48, i32 %60)
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %75, %19
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 1000
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* @GRC_EEPROM_ADDR, align 4
  %67 = call i32 @tr32(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @EEPROM_ADDR_COMPLETE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %78

73:                                               ; preds = %65
  %74 = call i32 @msleep(i32 1)
  br label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %62

78:                                               ; preds = %72, %62
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @EEPROM_ADDR_COMPLETE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %90

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %9, align 4
  br label %15

90:                                               ; preds = %83, %15
  %91 = load i32, i32* %11, align 4
  ret i32 %91
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
