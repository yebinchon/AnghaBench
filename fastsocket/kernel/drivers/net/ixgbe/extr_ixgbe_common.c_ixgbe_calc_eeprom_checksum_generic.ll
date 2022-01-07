; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_calc_eeprom_checksum_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_calc_eeprom_checksum_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i64, i64*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_EEPROM_CHECKSUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@IXGBE_PCIE_ANALOG_PTR = common dso_local global i64 0, align 8
@IXGBE_FW_PTR = common dso_local global i64 0, align 8
@IXGBE_EEPROM_SUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_calc_eeprom_checksum_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @IXGBE_EEPROM_CHECKSUM, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.0*
  %21 = load i64, i64* %3, align 8
  %22 = call i64 %18(%struct.ixgbe_hw.0* %20, i64 %21, i64* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %26 = call i32 @hw_dbg(%struct.ixgbe_hw* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %34

27:                                               ; preds = %13
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %9

34:                                               ; preds = %24, %9
  %35 = load i64, i64* @IXGBE_PCIE_ANALOG_PTR, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %98, %34
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @IXGBE_FW_PTR, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %101

40:                                               ; preds = %36
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.0*
  %48 = load i64, i64* %3, align 8
  %49 = call i64 %45(%struct.ixgbe_hw.0* %47, i64 %48, i64* %7)
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 65535
  br i1 %51, label %52, label %97

52:                                               ; preds = %40
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %97

55:                                               ; preds = %52
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %59, align 8
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = bitcast %struct.ixgbe_hw* %61 to %struct.ixgbe_hw.0*
  %63 = load i64, i64* %7, align 8
  %64 = call i64 %60(%struct.ixgbe_hw.0* %62, i64 %63, i64* %6)
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 65535
  br i1 %66, label %67, label %96

67:                                               ; preds = %55
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %67
  %71 = load i64, i64* %7, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %92, %70
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 %75, %76
  %78 = icmp sle i64 %74, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %83, align 8
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %86 = bitcast %struct.ixgbe_hw* %85 to %struct.ixgbe_hw.0*
  %87 = load i64, i64* %4, align 8
  %88 = call i64 %84(%struct.ixgbe_hw.0* %86, i64 %87, i64* %8)
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %5, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %79
  %93 = load i64, i64* %4, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %4, align 8
  br label %73

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %95, %67, %55
  br label %97

97:                                               ; preds = %96, %52, %40
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %3, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %3, align 8
  br label %36

101:                                              ; preds = %36
  %102 = load i64, i64* @IXGBE_EEPROM_SUM, align 8
  %103 = load i64, i64* %5, align 8
  %104 = sub nsw i64 %102, %103
  store i64 %104, i64* %5, align 8
  %105 = load i64, i64* %5, align 8
  ret i64 %105
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
