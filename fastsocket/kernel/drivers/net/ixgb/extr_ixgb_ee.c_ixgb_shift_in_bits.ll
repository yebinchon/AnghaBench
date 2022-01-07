; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ee.c_ixgb_shift_in_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ee.c_ixgb_shift_in_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@EECD = common dso_local global i32 0, align 4
@IXGB_EECD_DO = common dso_local global i32 0, align 4
@IXGB_EECD_DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_hw*)* @ixgb_shift_in_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_shift_in_bits(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  %6 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %7 = load i32, i32* @EECD, align 4
  %8 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @IXGB_EECD_DO, align 4
  %10 = load i32, i32* @IXGB_EECD_DI, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 16
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %22 = call i32 @ixgb_raise_clock(%struct.ixgb_hw* %21, i32* %3)
  %23 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %24 = load i32, i32* @EECD, align 4
  %25 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @IXGB_EECD_DI, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @IXGB_EECD_DO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %18
  %38 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %39 = call i32 @ixgb_lower_clock(%struct.ixgb_hw* %38, i32* %3)
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %15

43:                                               ; preds = %15
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @ixgb_raise_clock(%struct.ixgb_hw*, i32*) #1

declare dso_local i32 @ixgb_lower_clock(%struct.ixgb_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
