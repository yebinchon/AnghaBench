; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_get_cfg_done_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_get_cfg_done_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@e1000_ich10lan = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Auto Read Done did not complete\0A\00", align 1
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_PHYRA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"PHY Reset Asserted not set - needs delay\0A\00", align 1
@e1000_ich9lan = common dso_local global i64 0, align 8
@EECD = common dso_local global i32 0, align 4
@E1000_EECD_PRES = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"EEPROM not present\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_get_cfg_done_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_cfg_done_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = call i32 @e1000e_get_cfg_done_generic(%struct.e1000_hw* %6)
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_ich10lan, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = call i32 @e1000_lan_init_done_ich8lan(%struct.e1000_hw* %15)
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = call i32 @e1000e_get_auto_rd_done(%struct.e1000_hw* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @e_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %17
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i32, i32* @STATUS, align 4
  %27 = call i32 @er32(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @E1000_STATUS_PHYRA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @STATUS, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @E1000_STATUS_PHYRA, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @ew32(i32 %33, i32 %37)
  br label %41

39:                                               ; preds = %25
  %40 = call i32 @e_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @e1000_ich9lan, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load i32, i32* @EECD, align 4
  %50 = call i32 @er32(i32 %49)
  %51 = load i32, i32* @E1000_EECD_PRES, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %48
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @e1000_phy_igp_3, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = call i32 @e1000e_phy_init_script_igp3(%struct.e1000_hw* %62)
  br label %64

64:                                               ; preds = %61, %54, %48
  br label %74

65:                                               ; preds = %41
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = call i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %66, i32* %4)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = call i32 @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @e1000e_get_cfg_done_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_lan_init_done_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000e_get_auto_rd_done(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000e_phy_init_script_igp3(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
