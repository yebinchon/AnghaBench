; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_update_flash_X540.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_update_flash_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64 }

@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Flash update time out\0A\00", align 1
@IXGBE_EEC = common dso_local global i32 0, align 4
@IXGBE_EEC_FLUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Flash update complete\0A\00", align 1
@IXGBE_EEC_SEC1VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_update_flash_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_update_flash_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %5, i64* %4, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = call i64 @ixgbe_poll_flash_update_done_X540(%struct.ixgbe_hw* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = call i32 @hw_dbg(%struct.ixgbe_hw* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = load i32, i32* @IXGBE_EEC, align 4
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  %18 = load i32, i32* @IXGBE_EEC_FLUP, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = load i32, i32* @IXGBE_EEC, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = call i64 @ixgbe_poll_flash_update_done_X540(%struct.ixgbe_hw* %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %30 = call i32 @hw_dbg(%struct.ixgbe_hw* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %34

31:                                               ; preds = %14
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = call i32 @hw_dbg(%struct.ixgbe_hw* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = load i32, i32* @IXGBE_EEC, align 4
  %42 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @IXGBE_EEC_SEC1VAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i32, i32* @IXGBE_EEC_FLUP, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %52 = load i32, i32* @IXGBE_EEC, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %39
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %57 = call i64 @ixgbe_poll_flash_update_done_X540(%struct.ixgbe_hw* %56)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = call i32 @hw_dbg(%struct.ixgbe_hw* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %66

63:                                               ; preds = %55
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %65 = call i32 @hw_dbg(%struct.ixgbe_hw* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %34
  br label %68

68:                                               ; preds = %67, %11
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

declare dso_local i64 @ixgbe_poll_flash_update_done_X540(%struct.ixgbe_hw*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
