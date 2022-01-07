; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_start_mac_link_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_start_mac_link_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_KX_KR = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII = common dso_local global i64 0, align 8
@IXGBE_AUTO_NEG_TIME = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_KX_AN_COMP = common dso_local global i64 0, align 8
@IXGBE_ERR_AUTONEG_NOT_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Autoneg did not complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32)* @ixgbe_start_mac_link_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_start_mac_link_82599(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = call i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.1*
  %21 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %22 = call i64 %18(%struct.ixgbe_hw.1* %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %98

26:                                               ; preds = %13
  store i32 1, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = call i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw* %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %36, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = bitcast %struct.ixgbe_hw* %38 to %struct.ixgbe_hw.0*
  %40 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %41 = call i32 %37(%struct.ixgbe_hw.0* %39, i32 %40)
  br label %42

42:                                               ; preds = %32, %27
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %42
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = load i32, i32* @IXGBE_AUTOC, align 4
  %48 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %46, i32 %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_KX_KR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %63 = and i64 %61, %62
  %64 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %60, %54, %45
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @IXGBE_AUTO_NEG_TIME, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %73 = load i32, i32* @IXGBE_LINKS, align 4
  %74 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %72, i32 %73)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @IXGBE_LINKS_KX_AN_COMP, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %85

80:                                               ; preds = %71
  %81 = call i32 @msleep(i32 100)
  br label %82

82:                                               ; preds = %80
  %83 = load i64, i64* %7, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %67

85:                                               ; preds = %79, %67
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @IXGBE_LINKS_KX_AN_COMP, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* @IXGBE_ERR_AUTONEG_NOT_COMPLETE, align 8
  store i64 %91, i64* %8, align 8
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %93 = call i32 @hw_dbg(%struct.ixgbe_hw* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %85
  br label %95

95:                                               ; preds = %94, %60
  br label %96

96:                                               ; preds = %95, %42
  %97 = call i32 @msleep(i32 50)
  br label %98

98:                                               ; preds = %96, %25
  %99 = load i64, i64* %8, align 8
  ret i64 %99
}

declare dso_local i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
