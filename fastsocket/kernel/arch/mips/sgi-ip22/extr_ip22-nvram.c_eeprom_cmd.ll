; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip22-nvram.c_eeprom_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip22-nvram.c_eeprom_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_IN_COMMAND = common dso_local global i32 0, align 4
@EEPROM_DATO = common dso_local global i32 0, align 4
@EEPROM_ECLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @eeprom_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_cmd(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @BITS_IN_COMMAND, align 4
  %12 = sub nsw i32 16, %11
  %13 = shl i32 %10, %12
  %14 = or i32 %9, %13
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %7, align 2
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %60, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BITS_IN_COMMAND, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 32768
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @__raw_readl(i32* %26)
  %28 = load i32, i32* @EEPROM_DATO, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @__raw_writel(i32 %29, i32* %30)
  br label %40

32:                                               ; preds = %20
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @__raw_readl(i32* %33)
  %35 = load i32, i32* @EEPROM_DATO, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @__raw_writel(i32 %37, i32* %38)
  br label %40

40:                                               ; preds = %32, %25
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @__raw_readl(i32* %41)
  %43 = load i32, i32* @EEPROM_ECLK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @__raw_writel(i32 %45, i32* %46)
  %48 = call i32 (...) @delay()
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @__raw_readl(i32* %49)
  %51 = load i32, i32* @EEPROM_ECLK, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @__raw_writel(i32 %52, i32* %53)
  %55 = call i32 (...) @delay()
  %56 = load i16, i16* %7, align 2
  %57 = zext i16 %56 to i32
  %58 = shl i32 %57, 1
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %7, align 2
  br label %60

60:                                               ; preds = %40
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %16

63:                                               ; preds = %16
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @__raw_readl(i32* %64)
  %66 = load i32, i32* @EEPROM_DATO, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @__raw_writel(i32 %68, i32* %69)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @delay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
