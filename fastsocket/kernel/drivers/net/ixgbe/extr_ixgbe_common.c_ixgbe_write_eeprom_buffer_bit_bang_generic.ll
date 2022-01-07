; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_write_eeprom_buffer_bit_bang_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_write_eeprom_buffer_bit_bang_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_PAGE_SIZE_MAX = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RD_BUFFER_MAX_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_write_eeprom_buffer_bit_bang_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
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
  store i64 0, i64* %9, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %15, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = bitcast %struct.ixgbe_hw* %17 to %struct.ixgbe_hw.0*
  %19 = call i32 %16(%struct.ixgbe_hw.0* %18)
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @IXGBE_ERR_INVALID_ARGUMENT, align 8
  store i64 %23, i64* %9, align 8
  br label %87

24:                                               ; preds = %4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %34, i64* %9, align 8
  br label %87

35:                                               ; preds = %24
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @IXGBE_EEPROM_PAGE_SIZE_MAX, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @ixgbe_detect_eeprom_page_size_generic(%struct.ixgbe_hw* %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %41, %35
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %10, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  %59 = sdiv i64 %57, %58
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  br label %67

63:                                               ; preds = %54
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub nsw i64 %64, %65
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i64 [ %62, %61 ], [ %66, %63 ]
  store i64 %68, i64* %11, align 8
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i64, i64* %11, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = call i64 @ixgbe_write_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %69, i64 %72, i64 %73, i64* %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %86

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %10, align 8
  br label %50

86:                                               ; preds = %80, %50
  br label %87

87:                                               ; preds = %86, %33, %22
  %88 = load i64, i64* %9, align 8
  ret i64 %88
}

declare dso_local i32 @ixgbe_detect_eeprom_page_size_generic(%struct.ixgbe_hw*, i64) #1

declare dso_local i64 @ixgbe_write_eeprom_buffer_bit_bang(%struct.ixgbe_hw*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
