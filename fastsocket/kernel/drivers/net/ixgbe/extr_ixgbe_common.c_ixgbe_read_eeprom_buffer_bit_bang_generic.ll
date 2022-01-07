; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_read_eeprom_buffer_bit_bang_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_read_eeprom_buffer_bit_bang_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RD_BUFFER_MAX_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_eeprom_buffer_bit_bang_generic(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
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
  br label %73

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
  br label %73

35:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %68, %35
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  %45 = sdiv i64 %43, %44
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  br label %53

49:                                               ; preds = %40
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub nsw i64 %50, %51
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi i64 [ %48, %47 ], [ %52, %49 ]
  store i64 %54, i64* %11, align 8
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %11, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = call i64 @ixgbe_read_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %55, i64 %58, i64 %59, i64* %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %72

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* @IXGBE_EEPROM_RD_BUFFER_MAX_COUNT, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %10, align 8
  br label %36

72:                                               ; preds = %66, %36
  br label %73

73:                                               ; preds = %72, %33, %22
  %74 = load i64, i64* %9, align 8
  ret i64 %74
}

declare dso_local i64 @ixgbe_read_eeprom_buffer_bit_bang(%struct.ixgbe_hw*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
