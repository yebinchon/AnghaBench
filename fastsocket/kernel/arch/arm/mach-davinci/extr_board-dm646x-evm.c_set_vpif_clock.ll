; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm646x-evm.c_set_vpif_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm646x-evm.c_set_vpif_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vpif_vidclkctl_reg = common dso_local global i32 0, align 4
@vpif_vsclkdis_reg = common dso_local global i32 0, align 4
@cpld_client = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@vpif_reg_lock = common dso_local global i32 0, align 4
@VIDCH3CLK = common dso_local global i32 0, align 4
@VIDCH2CLK = common dso_local global i32 0, align 4
@VCH2CLK_MASK = common dso_local global i32 0, align 4
@VCH3CLK_MASK = common dso_local global i32 0, align 4
@VCH2CLK_SYSCLK8 = common dso_local global i32 0, align 4
@VCH3CLK_SYSCLK8 = common dso_local global i32 0, align 4
@VCH2CLK_AUXCLK = common dso_local global i32 0, align 4
@VCH3CLK_AUXCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @set_vpif_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_vpif_clock(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @vpif_vidclkctl_reg, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @vpif_vsclkdis_reg, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @cpld_client, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %12, %2
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %103

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* @vpif_reg_lock, i64 %22)
  %24 = load i32, i32* @vpif_vsclkdis_reg, align 4
  %25 = call i32 @__raw_readl(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @VIDCH3CLK, align 4
  %27 = load i32, i32* @VIDCH2CLK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @vpif_vsclkdis_reg, align 4
  %33 = call i32 @__raw_writel(i32 %31, i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @vpif_reg_lock, i64 %34)
  %36 = load i32, i32* @cpld_client, align 4
  %37 = call i32 @i2c_smbus_read_byte(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %103

42:                                               ; preds = %21
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, -65
  store i32 %47, i32* %8, align 4
  br label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, 64
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* @cpld_client, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @i2c_smbus_write_byte(i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %103

59:                                               ; preds = %51
  %60 = load i32, i32* @vpif_vidclkctl_reg, align 4
  %61 = call i32 @__raw_readl(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @VCH2CLK_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @VCH3CLK_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp sge i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load i32, i32* @VCH2CLK_SYSCLK8, align 4
  %74 = load i32, i32* @VCH3CLK_SYSCLK8, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %84

78:                                               ; preds = %59
  %79 = load i32, i32* @VCH2CLK_AUXCLK, align 4
  %80 = load i32, i32* @VCH3CLK_AUXCLK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @vpif_vidclkctl_reg, align 4
  %87 = call i32 @__raw_writel(i32 %85, i32 %86)
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_lock_irqsave(i32* @vpif_reg_lock, i64 %88)
  %90 = load i32, i32* @vpif_vsclkdis_reg, align 4
  %91 = call i32 @__raw_readl(i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* @VIDCH3CLK, align 4
  %93 = load i32, i32* @VIDCH2CLK, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @vpif_vsclkdis_reg, align 4
  %100 = call i32 @__raw_writel(i32 %98, i32 %99)
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* @vpif_reg_lock, i64 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %84, %57, %40, %18
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i2c_smbus_read_byte(i32) #1

declare dso_local i32 @i2c_smbus_write_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
