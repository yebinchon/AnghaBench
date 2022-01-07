; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip22-nvram.c_ip22_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip22-nvram.c_ip22_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EEPROM_EPROT = common dso_local global i32 0, align 4
@EEPROM_READ = common dso_local global i32 0, align 4
@EEPROM_ECLK = common dso_local global i32 0, align 4
@EEPROM_DATI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @ip22_eeprom_read(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i16 0, i16* %5, align 2
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @__raw_readl(i32* %7)
  %9 = load i32, i32* @EEPROM_EPROT, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @__raw_writel(i32 %11, i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @eeprom_cs_on(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @EEPROM_READ, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @eeprom_cmd(i32* %16, i32 %17, i32 %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %54, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @__raw_readl(i32* %24)
  %26 = load i32, i32* @EEPROM_ECLK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @__raw_writel(i32 %28, i32* %29)
  %31 = call i32 (...) @delay()
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @__raw_readl(i32* %32)
  %34 = load i32, i32* @EEPROM_ECLK, align 4
  %35 = or i32 %33, %34
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @__raw_writel(i32 %35, i32* %36)
  %38 = call i32 (...) @delay()
  %39 = load i16, i16* %5, align 2
  %40 = zext i16 %39 to i32
  %41 = shl i32 %40, 1
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %5, align 2
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @__raw_readl(i32* %43)
  %45 = load i32, i32* @EEPROM_DATI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %23
  %49 = load i16, i16* %5, align 2
  %50 = zext i16 %49 to i32
  %51 = or i32 %50, 1
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %5, align 2
  br label %53

53:                                               ; preds = %48, %23
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @eeprom_cs_off(i32* %58)
  %60 = load i16, i16* %5, align 2
  ret i16 %60
}

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @eeprom_cs_on(i32*) #1

declare dso_local i32 @eeprom_cmd(i32*, i32, i32) #1

declare dso_local i32 @delay(...) #1

declare dso_local i32 @eeprom_cs_off(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
