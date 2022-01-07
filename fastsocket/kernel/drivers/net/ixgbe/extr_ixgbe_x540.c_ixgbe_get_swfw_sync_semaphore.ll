; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_get_swfw_sync_semaphore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_get_swfw_sync_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_SWSM = common dso_local global i32 0, align 4
@IXGBE_SWSM_SMBI = common dso_local global i64 0, align 8
@IXGBE_SWFW_SYNC = common dso_local global i32 0, align 4
@IXGBE_SWFW_REGSMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Software semaphore SMBI between device drivers not granted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_get_swfw_sync_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %7, i64* %3, align 8
  store i64 2000, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = load i32, i32* @IXGBE_SWSM, align 4
  %15 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @IXGBE_SWSM_SMBI, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  br label %26

21:                                               ; preds = %12
  %22 = call i32 @udelay(i32 50)
  br label %23

23:                                               ; preds = %21
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %8

26:                                               ; preds = %20, %8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = load i32, i32* @IXGBE_SWFW_SYNC, align 4
  %37 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %35, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @IXGBE_SWFW_REGSMP, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %48

43:                                               ; preds = %34
  %44 = call i32 @udelay(i32 50)
  br label %45

45:                                               ; preds = %43
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %30

48:                                               ; preds = %42, %30
  br label %52

49:                                               ; preds = %26
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %51 = call i32 @hw_dbg(%struct.ixgbe_hw* %50, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %48
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
