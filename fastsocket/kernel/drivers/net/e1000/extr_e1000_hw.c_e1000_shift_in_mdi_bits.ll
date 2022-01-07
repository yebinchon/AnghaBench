; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_shift_in_mdi_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_shift_in_mdi_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_MDIO_DIR = common dso_local global i32 0, align 4
@E1000_CTRL_MDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_shift_in_mdi_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_shift_in_mdi_bits(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @CTRL, align 4
  %7 = call i32 @er32(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @E1000_CTRL_MDIO_DIR, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @E1000_CTRL_MDIO, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @CTRL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ew32(i32 %16, i32 %17)
  %19 = call i32 (...) @E1000_WRITE_FLUSH()
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = call i32 @e1000_raise_mdi_clk(%struct.e1000_hw* %20, i32* %3)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = call i32 @e1000_lower_mdi_clk(%struct.e1000_hw* %22, i32* %3)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %44, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 16
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = call i32 @e1000_raise_mdi_clk(%struct.e1000_hw* %30, i32* %3)
  %32 = load i32, i32* @CTRL, align 4
  %33 = call i32 @er32(i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @E1000_CTRL_MDIO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %27
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = call i32 @e1000_lower_mdi_clk(%struct.e1000_hw* %42, i32* %3)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = call i32 @e1000_raise_mdi_clk(%struct.e1000_hw* %48, i32* %3)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = call i32 @e1000_lower_mdi_clk(%struct.e1000_hw* %50, i32* %3)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @e1000_raise_mdi_clk(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @e1000_lower_mdi_clk(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
