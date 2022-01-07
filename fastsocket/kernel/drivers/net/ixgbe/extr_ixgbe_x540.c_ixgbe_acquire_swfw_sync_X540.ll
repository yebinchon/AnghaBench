; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_acquire_swfw_sync_X540.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_acquire_swfw_sync_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_GSSR_EEP_SM = common dso_local global i64 0, align 8
@IXGBE_GSSR_FLASH_SM = common dso_local global i64 0, align 8
@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@IXGBE_SWFW_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32)* @ixgbe_acquire_swfw_sync_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_acquire_swfw_sync_X540(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 5
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 200, i64* %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @IXGBE_GSSR_EEP_SM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @IXGBE_GSSR_FLASH_SM, align 8
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %20, %2
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %29 = call i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %32, i32* %3, align 4
  br label %96

33:                                               ; preds = %27
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %35 = load i32, i32* @IXGBE_SWFW_SYNC, align 4
  %36 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %34, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* %9, align 8
  %42 = or i64 %40, %41
  %43 = and i64 %37, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %33
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %50 = load i32, i32* @IXGBE_SWFW_SYNC, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %49, i32 %50, i64 %51)
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %54 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %53)
  br label %63

55:                                               ; preds = %33
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %57 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %56)
  %58 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %59

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %11, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %23

63:                                               ; preds = %45, %23
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %69 = load i32, i32* @IXGBE_SWFW_SYNC, align 4
  %70 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %68, i32 %69)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = or i64 %72, %73
  %75 = and i64 %71, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %67
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %79 = call i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %82, i32* %3, align 4
  br label %96

83:                                               ; preds = %77
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %6, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %6, align 8
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %88 = load i32, i32* @IXGBE_SWFW_SYNC, align 4
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %87, i32 %88, i64 %89)
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %92 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %91)
  br label %93

93:                                               ; preds = %83, %67
  br label %94

94:                                               ; preds = %93, %63
  %95 = call i32 @usleep_range(i32 5000, i32 10000)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %81, %31
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
