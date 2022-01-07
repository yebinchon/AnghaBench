; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_acquire_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_acquire_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@IXGBE_EEC = common dso_local global i32 0, align 4
@IXGBE_EEC_REQ = common dso_local global i64 0, align 8
@IXGBE_EEPROM_GRANT_ATTEMPTS = common dso_local global i64 0, align 8
@IXGBE_EEC_GNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Could not acquire EEPROM grant\0A\00", align 1
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEC_CS = common dso_local global i64 0, align 8
@IXGBE_EEC_SK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_acquire_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %9, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = bitcast %struct.ixgbe_hw* %11 to %struct.ixgbe_hw.0*
  %13 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %14 = call i64 %10(%struct.ixgbe_hw.0* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %18
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = load i32, i32* @IXGBE_EEC, align 4
  %24 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* @IXGBE_EEC_REQ, align 8
  %26 = load i64, i64* %4, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %4, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = load i32, i32* @IXGBE_EEC, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %28, i32 %29, i64 %30)
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %47, %21
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @IXGBE_EEPROM_GRANT_ATTEMPTS, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = load i32, i32* @IXGBE_EEC, align 4
  %39 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %37, i32 %38)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @IXGBE_EEC_GNT, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %50

45:                                               ; preds = %36
  %46 = call i32 @udelay(i32 5)
  br label %47

47:                                               ; preds = %45
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %32

50:                                               ; preds = %44, %32
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @IXGBE_EEC_GNT, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* @IXGBE_EEC_REQ, align 8
  %57 = xor i64 %56, -1
  %58 = load i64, i64* %4, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %4, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = load i32, i32* @IXGBE_EEC, align 4
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %60, i32 %61, i64 %62)
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %65 = call i32 @hw_dbg(%struct.ixgbe_hw* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %69, align 8
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %72 = bitcast %struct.ixgbe_hw* %71 to %struct.ixgbe_hw.1*
  %73 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %74 = call i32 %70(%struct.ixgbe_hw.1* %72, i32 %73)
  %75 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %55, %50
  %77 = load i64, i64* %3, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i64, i64* @IXGBE_EEC_CS, align 8
  %81 = load i64, i64* @IXGBE_EEC_SK, align 8
  %82 = or i64 %80, %81
  %83 = xor i64 %82, -1
  %84 = load i64, i64* %4, align 8
  %85 = and i64 %84, %83
  store i64 %85, i64* %4, align 8
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %87 = load i32, i32* @IXGBE_EEC, align 4
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %86, i32 %87, i64 %88)
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %91 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %90)
  %92 = call i32 @udelay(i32 1)
  br label %93

93:                                               ; preds = %79, %76
  br label %94

94:                                               ; preds = %93, %18
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
