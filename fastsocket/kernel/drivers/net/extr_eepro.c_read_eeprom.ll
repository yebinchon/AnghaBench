; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_eepro.c_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_eepro.c_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.eepro_local = type { i32 }

@EE_READ_CMD = common dso_local global i32 0, align 4
@EECS = common dso_local global i16 0, align 2
@STATUS_REG = common dso_local global i16 0, align 2
@EEDI = common dso_local global i16 0, align 2
@EESK = common dso_local global i16 0, align 2
@EEDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.net_device*)* @read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_eeprom(i32 %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.eepro_local*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  store i16 0, i16* %8, align 2
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.eepro_local* @netdev_priv(%struct.net_device* %14)
  store %struct.eepro_local* %15, %struct.eepro_local** %9, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.eepro_local*, %struct.eepro_local** %9, align 8
  %18 = getelementptr inbounds %struct.eepro_local, %struct.eepro_local* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %10, align 2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EE_READ_CMD, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i16, i16* @EECS, align 2
  store i16 %25, i16* %12, align 2
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @eepro_sw2bank1(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i16, i16* @STATUS_REG, align 2
  %30 = sext i16 %29 to i32
  %31 = add nsw i32 %28, %30
  %32 = trunc i32 %31 to i16
  %33 = call i32 @outb(i16 signext 0, i16 signext %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @eepro_sw2bank2(i32 %34)
  %36 = load i16, i16* %12, align 2
  %37 = load i16, i16* %10, align 2
  %38 = call i32 @outb(i16 signext %36, i16 signext %37)
  store i32 8, i32* %7, align 4
  br label %39

39:                                               ; preds = %76, %3
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i16, i16* %12, align 2
  %50 = sext i16 %49 to i32
  %51 = load i16, i16* @EEDI, align 2
  %52 = sext i16 %51 to i32
  %53 = or i32 %50, %52
  br label %57

54:                                               ; preds = %42
  %55 = load i16, i16* %12, align 2
  %56 = sext i16 %55 to i32
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i32 [ %53, %48 ], [ %56, %54 ]
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %13, align 2
  %60 = load i16, i16* %13, align 2
  %61 = load i16, i16* %10, align 2
  %62 = call i32 @outb(i16 signext %60, i16 signext %61)
  %63 = load i16, i16* %13, align 2
  %64 = sext i16 %63 to i32
  %65 = load i16, i16* @EESK, align 2
  %66 = sext i16 %65 to i32
  %67 = or i32 %64, %66
  %68 = trunc i32 %67 to i16
  %69 = load i16, i16* %10, align 2
  %70 = call i32 @outb(i16 signext %68, i16 signext %69)
  %71 = call i32 (...) @eeprom_delay()
  %72 = load i16, i16* %13, align 2
  %73 = load i16, i16* %10, align 2
  %74 = call i32 @outb(i16 signext %72, i16 signext %73)
  %75 = call i32 (...) @eeprom_delay()
  br label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %7, align 4
  br label %39

79:                                               ; preds = %39
  %80 = load i16, i16* %12, align 2
  %81 = load i16, i16* %10, align 2
  %82 = call i32 @outb(i16 signext %80, i16 signext %81)
  store i32 16, i32* %7, align 4
  br label %83

83:                                               ; preds = %112, %79
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %83
  %87 = load i16, i16* %12, align 2
  %88 = sext i16 %87 to i32
  %89 = load i16, i16* @EESK, align 2
  %90 = sext i16 %89 to i32
  %91 = or i32 %88, %90
  %92 = trunc i32 %91 to i16
  %93 = load i16, i16* %10, align 2
  %94 = call i32 @outb(i16 signext %92, i16 signext %93)
  %95 = call i32 (...) @eeprom_delay()
  %96 = load i16, i16* %8, align 2
  %97 = zext i16 %96 to i32
  %98 = shl i32 %97, 1
  %99 = load i16, i16* %10, align 2
  %100 = call i32 @inb(i16 signext %99)
  %101 = load i32, i32* @EEDO, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  %106 = or i32 %98, %105
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %8, align 2
  %108 = load i16, i16* %12, align 2
  %109 = load i16, i16* %10, align 2
  %110 = call i32 @outb(i16 signext %108, i16 signext %109)
  %111 = call i32 (...) @eeprom_delay()
  br label %112

112:                                              ; preds = %86
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %7, align 4
  br label %83

115:                                              ; preds = %83
  %116 = load i16, i16* @EECS, align 2
  %117 = sext i16 %116 to i32
  %118 = xor i32 %117, -1
  %119 = load i16, i16* %12, align 2
  %120 = sext i16 %119 to i32
  %121 = and i32 %120, %118
  %122 = trunc i32 %121 to i16
  store i16 %122, i16* %12, align 2
  %123 = load i16, i16* %12, align 2
  %124 = sext i16 %123 to i32
  %125 = load i16, i16* @EESK, align 2
  %126 = sext i16 %125 to i32
  %127 = or i32 %124, %126
  %128 = trunc i32 %127 to i16
  %129 = load i16, i16* %10, align 2
  %130 = call i32 @outb(i16 signext %128, i16 signext %129)
  %131 = call i32 (...) @eeprom_delay()
  %132 = load i16, i16* %12, align 2
  %133 = load i16, i16* %10, align 2
  %134 = call i32 @outb(i16 signext %132, i16 signext %133)
  %135 = call i32 (...) @eeprom_delay()
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @eepro_sw2bank0(i32 %136)
  %138 = load i16, i16* %8, align 2
  %139 = zext i16 %138 to i32
  ret i32 %139
}

declare dso_local %struct.eepro_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eepro_sw2bank1(i32) #1

declare dso_local i32 @outb(i16 signext, i16 signext) #1

declare dso_local i32 @eepro_sw2bank2(i32) #1

declare dso_local i32 @eeprom_delay(...) #1

declare dso_local i32 @inb(i16 signext) #1

declare dso_local i32 @eepro_sw2bank0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
