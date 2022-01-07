; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_update_eeprom_checksum_X540.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_update_eeprom_checksum_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"EEPROM read failed\0A\00", align 1
@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@IXGBE_EEPROM_CHECKSUM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_update_eeprom_checksum_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_update_eeprom_checksum_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32*)** %8, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = bitcast %struct.ixgbe_hw* %10 to %struct.ixgbe_hw.2*
  %12 = call i64 %9(%struct.ixgbe_hw.2* %11, i32 0, i32* %4)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = call i32 @hw_dbg(%struct.ixgbe_hw* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.0*
  %26 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %27 = call i64 %23(%struct.ixgbe_hw.0* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %18
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.3*
  %37 = call i32 %34(%struct.ixgbe_hw.3* %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = load i32, i32* @IXGBE_EEPROM_CHECKSUM, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @ixgbe_write_eewr_generic(%struct.ixgbe_hw* %38, i32 %39, i32 %40)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = call i64 @ixgbe_update_flash_X540(%struct.ixgbe_hw* %45)
  store i64 %46, i64* %3, align 8
  br label %49

47:                                               ; preds = %29
  %48 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %47, %44
  br label %50

50:                                               ; preds = %49, %18
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %54, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %57 = bitcast %struct.ixgbe_hw* %56 to %struct.ixgbe_hw.1*
  %58 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %59 = call i32 %55(%struct.ixgbe_hw.1* %57, i32 %58)
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i64 @ixgbe_write_eewr_generic(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i64 @ixgbe_update_flash_X540(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
