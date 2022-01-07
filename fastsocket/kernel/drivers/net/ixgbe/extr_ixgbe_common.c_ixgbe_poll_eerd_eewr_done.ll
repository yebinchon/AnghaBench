; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_poll_eerd_eewr_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_poll_eerd_eewr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EERD_EEWR_ATTEMPTS = common dso_local global i64 0, align 8
@IXGBE_NVM_POLL_READ = common dso_local global i64 0, align 8
@IXGBE_EERD = common dso_local global i32 0, align 4
@IXGBE_EEWR = common dso_local global i32 0, align 4
@IXGBE_EEPROM_RW_REG_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i64)* @ixgbe_poll_eerd_eewr_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %8, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @IXGBE_EERD_EEWR_ATTEMPTS, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @IXGBE_NVM_POLL_READ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = load i32, i32* @IXGBE_EERD, align 4
  %20 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %18, i32 %19)
  store i64 %20, i64* %6, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = load i32, i32* @IXGBE_EEWR, align 4
  %24 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @IXGBE_EEPROM_RW_REG_DONE, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i64 0, i64* %7, align 8
  br label %36

31:                                               ; preds = %25
  %32 = call i32 @udelay(i32 5)
  br label %33

33:                                               ; preds = %31
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %9

36:                                               ; preds = %30, %9
  %37 = load i64, i64* %7, align 8
  ret i64 %37
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
