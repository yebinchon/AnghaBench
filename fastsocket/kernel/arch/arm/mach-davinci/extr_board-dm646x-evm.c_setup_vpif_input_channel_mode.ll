; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm646x-evm.c_setup_vpif_input_channel_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm646x-evm.c_setup_vpif_input_channel_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vpif_vsclkdis_reg = common dso_local global i32 0, align 4
@cpld_client = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@vpif_reg_lock = common dso_local global i32 0, align 4
@VPIF_INPUT_TWO_CHANNEL = common dso_local global i32 0, align 4
@VIDCH1CLK = common dso_local global i32 0, align 4
@VPIF_INPUT_ONE_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @setup_vpif_input_channel_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_vpif_input_channel_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @vpif_vsclkdis_reg, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @cpld_client, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %10
  %17 = load i32, i32* @cpld_client, align 4
  %18 = call i32 @i2c_smbus_read_byte(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %59

23:                                               ; preds = %16
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @vpif_reg_lock, i64 %24)
  %26 = load i32, i32* @vpif_vsclkdis_reg, align 4
  %27 = call i32 @__raw_readl(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @VPIF_INPUT_TWO_CHANNEL, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @VIDCH1CLK, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %45

37:                                               ; preds = %23
  %38 = load i32, i32* @VPIF_INPUT_ONE_CHANNEL, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @VIDCH1CLK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %30
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @vpif_vsclkdis_reg, align 4
  %48 = call i32 @__raw_writel(i32 %46, i32 %47)
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @vpif_reg_lock, i64 %49)
  %51 = load i32, i32* @cpld_client, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @i2c_smbus_write_byte(i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %56, %21, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @i2c_smbus_read_byte(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i2c_smbus_write_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
