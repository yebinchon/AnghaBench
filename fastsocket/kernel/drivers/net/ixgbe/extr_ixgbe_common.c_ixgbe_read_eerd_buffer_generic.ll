; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_read_eerd_buffer_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_read_eerd_buffer_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RW_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RW_REG_START = common dso_local global i64 0, align 8
@IXGBE_EERD = common dso_local global i32 0, align 4
@IXGBE_NVM_POLL_READ = common dso_local global i32 0, align 4
@IXGBE_EEPROM_RW_REG_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Eeprom read timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_eerd_buffer_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %15, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = bitcast %struct.ixgbe_hw* %17 to %struct.ixgbe_hw.0*
  %19 = call i32 %16(%struct.ixgbe_hw.0* %18)
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @IXGBE_ERR_INVALID_ARGUMENT, align 8
  store i64 %23, i64* %10, align 8
  br label %72

24:                                               ; preds = %4
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %32, i64* %10, align 8
  br label %72

33:                                               ; preds = %24
  store i64 0, i64* %11, align 8
  br label %34

34:                                               ; preds = %68, %33
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* @IXGBE_EEPROM_RW_ADDR_SHIFT, align 8
  %43 = shl i64 %41, %42
  %44 = load i64, i64* @IXGBE_EEPROM_RW_REG_START, align 8
  %45 = or i64 %43, %44
  store i64 %45, i64* %9, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %47 = load i32, i32* @IXGBE_EERD, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %46, i32 %47, i64 %48)
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %51 = load i32, i32* @IXGBE_NVM_POLL_READ, align 4
  %52 = call i64 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw* %50, i32 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %38
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %57 = load i32, i32* @IXGBE_EERD, align 4
  %58 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %56, i32 %57)
  %59 = load i64, i64* @IXGBE_EEPROM_RW_REG_DATA, align 8
  %60 = ashr i64 %58, %59
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %60, i64* %63, align 8
  br label %67

64:                                               ; preds = %38
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %66 = call i32 @hw_dbg(%struct.ixgbe_hw* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %72

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %34

71:                                               ; preds = %34
  br label %72

72:                                               ; preds = %71, %64, %31, %22
  %73 = load i64, i64* %10, align 8
  ret i64 %73
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i64 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
