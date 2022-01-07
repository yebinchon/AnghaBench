; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_get_variants_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_get_variants_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw, i32, i64 }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i64 }

@e1000_phy_ife = common dso_local global i64 0, align 8
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LSECCK = common dso_local global i32 0, align 4
@FLAG_HAS_JUMBO_FRAMES = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@FLAG_LSC_GIG_SPEED_DROP = common dso_local global i32 0, align 4
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@FLAG2_PCIM2PCI_ARBITER_WA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_adapter*)* @e1000_get_variants_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_get_variants_ich8lan(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 1
  store %struct.e1000_hw* %7, %struct.e1000_hw** %4, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = call i64 @e1000_init_mac_params_ich8lan(%struct.e1000_hw* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %2, align 8
  br label %116

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %16 = call i64 @e1000_init_nvm_params_ich8lan(%struct.e1000_hw* %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %2, align 8
  br label %116

21:                                               ; preds = %14
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %32 [
    i32 132, label %26
    i32 131, label %26
    i32 133, label %26
    i32 128, label %29
    i32 130, label %29
    i32 129, label %29
  ]

26:                                               ; preds = %21, %21, %21
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %28 = call i64 @e1000_init_phy_params_ich8lan(%struct.e1000_hw* %27)
  store i64 %28, i64* %5, align 8
  br label %33

29:                                               ; preds = %21, %21, %21
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %31 = call i64 @e1000_init_phy_params_pchlan(%struct.e1000_hw* %30)
  store i64 %31, i64* %5, align 8
  br label %33

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %29, %26
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %116

38:                                               ; preds = %33
  %39 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @e1000_phy_ife, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %59, label %46

46:                                               ; preds = %38
  %47 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %51, 130
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load i32, i32* @CTRL_EXT, align 4
  %55 = call i32 @er32(i32 %54)
  %56 = load i32, i32* @E1000_CTRL_EXT_LSECCK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %53, %38
  %60 = load i32, i32* @FLAG_HAS_JUMBO_FRAMES, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i64, i64* @ETH_FRAME_LEN, align 8
  %67 = load i64, i64* @ETH_FCS_LEN, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %59, %53, %46
  %76 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 132
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @e1000_phy_ife, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i32, i32* @FLAG_LSC_GIG_SPEED_DROP, align 4
  %92 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %82, %75
  %97 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 130
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load i32, i32* @FWSM, align 4
  %105 = call i32 @er32(i32 %104)
  %106 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* @FLAG2_PCIM2PCI_ARBITER_WA, align 4
  %111 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %103, %96
  store i64 0, i64* %2, align 8
  br label %116

116:                                              ; preds = %115, %36, %19, %12
  %117 = load i64, i64* %2, align 8
  ret i64 %117
}

declare dso_local i64 @e1000_init_mac_params_ich8lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_init_nvm_params_ich8lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_init_phy_params_ich8lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_init_phy_params_pchlan(%struct.e1000_hw*) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
