; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_shift_out_mdi_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_shift_out_mdi_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_MDIO_DIR = common dso_local global i32 0, align 4
@E1000_CTRL_MDC_DIR = common dso_local global i32 0, align 4
@E1000_CTRL_MDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32, i32)* @e1000_shift_out_mdi_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_shift_out_mdi_bits(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* %8, align 4
  %12 = shl i32 %11, %10
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @CTRL, align 4
  %14 = call i32 @er32(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @E1000_CTRL_MDIO_DIR, align 4
  %16 = load i32, i32* @E1000_CTRL_MDC_DIR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %37, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @E1000_CTRL_MDIO, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @E1000_CTRL_MDIO, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i32, i32* @CTRL, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ew32(i32 %38, i32 %39)
  %41 = call i32 (...) @E1000_WRITE_FLUSH()
  %42 = call i32 @udelay(i32 10)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = call i32 @e1000_raise_mdi_clk(%struct.e1000_hw* %43, i32* %7)
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %46 = call i32 @e1000_lower_mdi_clk(%struct.e1000_hw* %45, i32* %7)
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %20

49:                                               ; preds = %20
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_raise_mdi_clk(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @e1000_lower_mdi_clk(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
