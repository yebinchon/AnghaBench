; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_eeprom_semaphore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_eeprom_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_SWSM = common dso_local global i32 0, align 4
@IXGBE_SWSM_SMBI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Driver can't access the Eeprom - SMBI Semaphore not granted.\0A\00", align 1
@IXGBE_SWSM_SWESMBI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"SWESMBI Software EEPROM semaphore not granted.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Software semaphore SMBI between device drivers not granted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_get_eeprom_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_get_eeprom_semaphore(%struct.ixgbe_hw* %0) #0 {
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
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = call i32 @hw_dbg(%struct.ixgbe_hw* %31, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = call i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw* %33)
  %35 = call i32 @udelay(i32 50)
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = load i32, i32* @IXGBE_SWSM, align 4
  %38 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %36, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @IXGBE_SWSM_SMBI, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  store i64 0, i64* %3, align 8
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i64, i64* %3, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  store i64 0, i64* %5, align 8
  br label %49

49:                                               ; preds = %74, %48
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %55 = load i32, i32* @IXGBE_SWSM, align 4
  %56 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %54, i32 %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* @IXGBE_SWSM_SWESMBI, align 8
  %58 = load i64, i64* %6, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %6, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = load i32, i32* @IXGBE_SWSM, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %60, i32 %61, i64 %62)
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %65 = load i32, i32* @IXGBE_SWSM, align 4
  %66 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %64, i32 %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @IXGBE_SWSM_SWESMBI, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %77

72:                                               ; preds = %53
  %73 = call i32 @udelay(i32 50)
  br label %74

74:                                               ; preds = %72
  %75 = load i64, i64* %5, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %5, align 8
  br label %49

77:                                               ; preds = %71, %49
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %4, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %83 = call i32 @hw_dbg(%struct.ixgbe_hw* %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %85 = call i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw* %84)
  %86 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %81, %77
  br label %91

88:                                               ; preds = %45
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %90 = call i32 @hw_dbg(%struct.ixgbe_hw* %89, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %87
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @ixgbe_release_eeprom_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
