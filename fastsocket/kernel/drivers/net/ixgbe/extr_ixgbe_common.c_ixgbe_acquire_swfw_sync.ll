; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_acquire_swfw_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_acquire_swfw_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@IXGBE_GSSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_acquire_swfw_sync(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 5
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  store i64 200, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %51, %2
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %22 = call i64 @ixgbe_get_eeprom_semaphore(%struct.ixgbe_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %25, i32* %3, align 4
  br label %72

26:                                               ; preds = %20
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %28 = load i32, i32* @IXGBE_GSSR, align 4
  %29 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = or i64 %31, %32
  %34 = and i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %26
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %41 = load i32, i32* @IXGBE_GSSR, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %40, i32 %41, i64 %42)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %45 = call i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw* %44)
  store i32 0, i32* %3, align 4
  br label %72

46:                                               ; preds = %26
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %48 = call i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw* %47)
  %49 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %50

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %16

54:                                               ; preds = %16
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = or i64 %56, %57
  %59 = and i64 %55, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = or i64 %64, %65
  %67 = and i64 %63, %66
  %68 = call i32 @ixgbe_release_swfw_sync(%struct.ixgbe_hw* %62, i64 %67)
  br label %69

69:                                               ; preds = %61, %54
  %70 = call i32 @usleep_range(i32 5000, i32 10000)
  %71 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %36, %24
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @ixgbe_get_eeprom_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ixgbe_release_swfw_sync(%struct.ixgbe_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
