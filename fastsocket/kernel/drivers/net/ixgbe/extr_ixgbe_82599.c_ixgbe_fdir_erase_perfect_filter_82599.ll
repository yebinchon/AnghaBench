; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_erase_perfect_filter_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_erase_perfect_filter_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%union.ixgbe_atr_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRHASH = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_QUERY_REM_FILT = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_FDIR_REINIT_FAILED = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_FILTER_VALID = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_REMOVE_FLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fdir_erase_perfect_filter_82599(%struct.ixgbe_hw* %0, %union.ixgbe_atr_input* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %union.ixgbe_atr_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store %union.ixgbe_atr_input* %1, %union.ixgbe_atr_input** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %5, align 8
  %12 = bitcast %union.ixgbe_atr_input* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %21 = load i32, i32* @IXGBE_FDIRHASH, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %25 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %24)
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %27 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %28 = load i32, i32* @IXGBE_FDIRCMD_CMD_QUERY_REM_FILT, align 4
  %29 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %26, i32 %27, i32 %28)
  store i32 10, i32* %9, align 4
  br label %30

30:                                               ; preds = %44, %3
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = call i32 @udelay(i32 10)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %36 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %37 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @IXGBE_FDIRCMD_CMD_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  br label %30

47:                                               ; preds = %42, %30
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @IXGBE_ERR_FDIR_REINIT_FAILED, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @IXGBE_FDIRCMD_FILTER_VALID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = load i32, i32* @IXGBE_FDIRHASH, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %58, i32 %59, i32 %60)
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %63 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %62)
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %65 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %66 = load i32, i32* @IXGBE_FDIRCMD_CMD_REMOVE_FLOW, align 4
  %67 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %52
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
