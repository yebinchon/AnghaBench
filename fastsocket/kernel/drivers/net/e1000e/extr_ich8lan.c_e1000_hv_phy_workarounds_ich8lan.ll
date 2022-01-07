; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_hv_phy_workarounds_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_hv_phy_workarounds_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@e1000_pchlan = common dso_local global i64 0, align 8
@e1000_phy_82577 = common dso_local global i64 0, align 8
@e1000_phy_82578 = common dso_local global i64 0, align 8
@HV_KMRN_FIFO_CTRLSTA = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@BM_PORT_GEN_CFG = common dso_local global i32 0, align 4
@I82577_MSE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_hv_phy_workarounds_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_hv_phy_workarounds_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_pchlan, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %179

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_phy_82577, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = call i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %179

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e1000_phy_82577, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %60, label %41

41:                                               ; preds = %35
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %60, label %47

47:                                               ; preds = %41, %28
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @e1000_phy_82578, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %47
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %77

60:                                               ; preds = %54, %41, %35
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = call i32 @PHY_REG(i32 769, i32 25)
  %63 = call i64 @e1e_wphy(%struct.e1000_hw* %61, i32 %62, i32 17457)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i64, i64* %4, align 8
  store i64 %67, i64* %2, align 8
  br label %179

68:                                               ; preds = %60
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA, align 4
  %71 = call i64 @e1e_wphy(%struct.e1000_hw* %69, i32 %70, i32 41476)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %4, align 8
  store i64 %75, i64* %2, align 8
  br label %179

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %54, %47
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @e1000_phy_82578, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %92 = call i32 @e1000e_phy_sw_reset(%struct.e1000_hw* %91)
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = load i32, i32* @MII_BMCR, align 4
  %95 = call i64 @e1e_wphy(%struct.e1000_hw* %93, i32 %94, i32 12608)
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %90, %84
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %101, align 8
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = bitcast %struct.e1000_hw* %103 to %struct.e1000_hw.1*
  %105 = call i64 %102(%struct.e1000_hw.1* %104)
  store i64 %105, i64* %4, align 8
  %106 = load i64, i64* %4, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  %109 = load i64, i64* %4, align 8
  store i64 %109, i64* %2, align 8
  br label %179

110:                                              ; preds = %97
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32 1, i32* %113, align 4
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %116 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %114, i32 %115, i32 0)
  store i64 %116, i64* %4, align 8
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %120, align 8
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = bitcast %struct.e1000_hw* %122 to %struct.e1000_hw.0*
  %124 = call i32 %121(%struct.e1000_hw.0* %123)
  %125 = load i64, i64* %4, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %110
  %128 = load i64, i64* %4, align 8
  store i64 %128, i64* %2, align 8
  br label %179

129:                                              ; preds = %110
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %131 = call i64 @e1000_k1_gig_workaround_hv(%struct.e1000_hw* %130, i32 1)
  store i64 %131, i64* %4, align 8
  %132 = load i64, i64* %4, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i64, i64* %4, align 8
  store i64 %135, i64* %2, align 8
  br label %179

136:                                              ; preds = %129
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %138 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %140, align 8
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %143 = bitcast %struct.e1000_hw* %142 to %struct.e1000_hw.1*
  %144 = call i64 %141(%struct.e1000_hw.1* %143)
  store i64 %144, i64* %4, align 8
  %145 = load i64, i64* %4, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %136
  %148 = load i64, i64* %4, align 8
  store i64 %148, i64* %2, align 8
  br label %179

149:                                              ; preds = %136
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %151 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %152 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %150, i32 %151, i32* %5)
  store i64 %152, i64* %4, align 8
  %153 = load i64, i64* %4, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %169

156:                                              ; preds = %149
  %157 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %158 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %159, 255
  %161 = call i64 @e1e_wphy_locked(%struct.e1000_hw* %157, i32 %158, i32 %160)
  store i64 %161, i64* %4, align 8
  %162 = load i64, i64* %4, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %169

165:                                              ; preds = %156
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %167 = load i32, i32* @I82577_MSE_THRESHOLD, align 4
  %168 = call i64 @e1000_write_emi_reg_locked(%struct.e1000_hw* %166, i32 %167, i32 52)
  store i64 %168, i64* %4, align 8
  br label %169

169:                                              ; preds = %165, %164, %155
  %170 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %171 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %173, align 8
  %175 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %176 = bitcast %struct.e1000_hw* %175 to %struct.e1000_hw.0*
  %177 = call i32 %174(%struct.e1000_hw.0* %176)
  %178 = load i64, i64* %4, align 8
  store i64 %178, i64* %2, align 8
  br label %179

179:                                              ; preds = %169, %147, %134, %127, %108, %74, %66, %25, %12
  %180 = load i64, i64* %2, align 8
  ret i64 %180
}

declare dso_local i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @PHY_REG(i32, i32) #1

declare dso_local i32 @e1000e_phy_sw_reset(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_k1_gig_workaround_hv(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1e_rphy_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_write_emi_reg_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
