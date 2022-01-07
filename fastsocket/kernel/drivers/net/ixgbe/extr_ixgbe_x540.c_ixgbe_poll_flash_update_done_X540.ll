; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_poll_flash_update_done_X540.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_poll_flash_update_done_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_FLUDONE_ATTEMPTS = common dso_local global i64 0, align 8
@IXGBE_EEC = common dso_local global i32 0, align 4
@IXGBE_EEC_FLUDONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_poll_flash_update_done_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_poll_flash_update_done_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %6, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @IXGBE_FLUDONE_ATTEMPTS, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = load i32, i32* @IXGBE_EEC, align 4
  %14 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %12, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @IXGBE_EEC_FLUDONE, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  br label %25

20:                                               ; preds = %11
  %21 = call i32 @udelay(i32 5)
  br label %22

22:                                               ; preds = %20
  %23 = load i64, i64* %3, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %7

25:                                               ; preds = %19, %7
  %26 = load i64, i64* %5, align 8
  ret i64 %26
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
