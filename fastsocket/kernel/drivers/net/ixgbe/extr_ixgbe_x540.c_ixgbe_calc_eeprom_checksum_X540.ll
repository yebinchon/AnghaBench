; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_calc_eeprom_checksum_X540.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_calc_eeprom_checksum_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IXGBE_EEPROM_CHECKSUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@IXGBE_PCIE_ANALOG_PTR = common dso_local global i64 0, align 8
@IXGBE_FW_PTR = common dso_local global i64 0, align 8
@IXGBE_PHY_PTR = common dso_local global i64 0, align 8
@IXGBE_OPTION_ROM_PTR = common dso_local global i64 0, align 8
@IXGBE_EEPROM_SUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_calc_eeprom_checksum_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_calc_eeprom_checksum_X540(%struct.ixgbe_hw* %0) #0 {
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

9:                                                ; preds = %25, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @IXGBE_EEPROM_CHECKSUM, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %14, i64 %15, i64* %8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = call i32 @hw_dbg(%struct.ixgbe_hw* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %28

21:                                               ; preds = %13
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %9

28:                                               ; preds = %18, %9
  %29 = load i64, i64* @IXGBE_PCIE_ANALOG_PTR, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %114, %28
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @IXGBE_FW_PTR, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %117

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @IXGBE_PHY_PTR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @IXGBE_OPTION_ROM_PTR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  br label %114

43:                                               ; preds = %38
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %44, i64 %45, i64* %7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %50 = call i32 @hw_dbg(%struct.ixgbe_hw* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %117

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %52, 65535
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %54, %51
  br label %114

65:                                               ; preds = %57
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %66, i64 %67, i64* %6)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %72 = call i32 @hw_dbg(%struct.ixgbe_hw* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %117

73:                                               ; preds = %65
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %74, 65535
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %80, %81
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79, %76, %73
  br label %114

89:                                               ; preds = %79
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %110, %89
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %6, align 8
  %96 = add nsw i64 %94, %95
  %97 = icmp sle i64 %93, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %100 = load i64, i64* %4, align 8
  %101 = call i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw* %99, i64 %100, i64* %8)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %105 = call i32 @hw_dbg(%struct.ixgbe_hw* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %113

106:                                              ; preds = %98
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %5, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %4, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %4, align 8
  br label %92

113:                                              ; preds = %103, %92
  br label %114

114:                                              ; preds = %113, %88, %64, %42
  %115 = load i64, i64* %3, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %3, align 8
  br label %30

117:                                              ; preds = %70, %48, %30
  %118 = load i64, i64* @IXGBE_EEPROM_SUM, align 8
  %119 = load i64, i64* %5, align 8
  %120 = sub nsw i64 %118, %119
  store i64 %120, i64* %5, align 8
  %121 = load i64, i64* %5, align 8
  ret i64 %121
}

declare dso_local i64 @ixgbe_read_eerd_generic(%struct.ixgbe_hw*, i64, i64*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
