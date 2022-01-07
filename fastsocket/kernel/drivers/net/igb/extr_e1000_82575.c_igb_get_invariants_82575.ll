; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_get_invariants_82575.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_get_invariants_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.e1000_mac_info, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.e1000_mac_info = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@e1000_82575 = common dso_local global i32 0, align 4
@e1000_82580 = common dso_local global i32 0, align 4
@e1000_i354 = common dso_local global i32 0, align 4
@E1000_ERR_MAC_INIT = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i8* null, align 8
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LINK_MODE_MASK = common dso_local global i32 0, align 4
@e1000_media_type_internal_serdes = common dso_local global i8* null, align 8
@e1000_media_type_unknown = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_get_invariants_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_get_invariants_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca %struct.e1000_dev_spec_82575*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  store %struct.e1000_mac_info* %10, %struct.e1000_mac_info** %4, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.e1000_dev_spec_82575* %13, %struct.e1000_dev_spec_82575** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %41 [
    i32 166, label %17
    i32 165, label %17
    i32 164, label %17
    i32 163, label %21
    i32 161, label %21
    i32 160, label %21
    i32 162, label %21
    i32 157, label %21
    i32 159, label %21
    i32 158, label %21
    i32 156, label %21
    i32 155, label %24
    i32 153, label %24
    i32 152, label %24
    i32 151, label %24
    i32 150, label %24
    i32 154, label %24
    i32 146, label %24
    i32 148, label %24
    i32 149, label %24
    i32 147, label %24
    i32 138, label %28
    i32 137, label %28
    i32 136, label %28
    i32 135, label %28
    i32 145, label %31
    i32 143, label %31
    i32 142, label %31
    i32 140, label %31
    i32 144, label %31
    i32 141, label %31
    i32 139, label %34
    i32 134, label %37
    i32 132, label %37
    i32 133, label %37
  ]

17:                                               ; preds = %1, %1, %1
  %18 = load i32, i32* @e1000_82575, align 4
  %19 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %20 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %44

21:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %22 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %22, i32 0, i32 0
  store i32 131, i32* %23, align 4
  br label %44

24:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %25 = load i32, i32* @e1000_82580, align 4
  %26 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %44

28:                                               ; preds = %1, %1, %1, %1
  %29 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %30 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %29, i32 0, i32 0
  store i32 128, i32* %30, align 4
  br label %44

31:                                               ; preds = %1, %1, %1, %1, %1, %1
  %32 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %32, i32 0, i32 0
  store i32 130, i32* %33, align 4
  br label %44

34:                                               ; preds = %1
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 0
  store i32 129, i32* %36, align 4
  br label %44

37:                                               ; preds = %1, %1, %1
  %38 = load i32, i32* @e1000_i354, align 4
  %39 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %44

41:                                               ; preds = %1
  %42 = load i64, i64* @E1000_ERR_MAC_INIT, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %2, align 8
  br label %166

44:                                               ; preds = %37, %34, %31, %28, %24, %21, %17
  %45 = load i8*, i8** @e1000_media_type_copper, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  %49 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %50 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %52 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* @E1000_CTRL_EXT, align 4
  %54 = call i32 @rd32(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  switch i32 %58, label %131 [
    i32 169, label %59
    i32 167, label %64
    i32 168, label %76
  ]

59:                                               ; preds = %44
  %60 = load i8*, i8** @e1000_media_type_internal_serdes, align 8
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  br label %132

64:                                               ; preds = %44
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = call i32 @igb_sgmii_uses_mdio_82575(%struct.e1000_hw* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i8*, i8** @e1000_media_type_copper, align 8
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %74 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %132

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %44, %75
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = call i64 @igb_set_sfp_media_type_82575(%struct.e1000_hw* %77)
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** @e1000_media_type_unknown, align 8
  %87 = icmp eq i8* %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %81, %76
  %89 = load i8*, i8** @e1000_media_type_internal_serdes, align 8
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 167
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load i8*, i8** @e1000_media_type_copper, align 8
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  %100 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %101 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %88
  br label %132

103:                                              ; preds = %81
  %104 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %105 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %132

110:                                              ; preds = %103
  %111 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %116 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** @e1000_media_type_copper, align 8
  %120 = icmp eq i8* %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %110
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, 167
  store i32 %123, i32* %7, align 4
  br label %127

124:                                              ; preds = %110
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, 168
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* @E1000_CTRL_EXT, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @wr32(i32 %128, i32 %129)
  br label %132

131:                                              ; preds = %44
  br label %132

132:                                              ; preds = %131, %127, %109, %102, %68, %59
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %134 = call i64 @igb_init_mac_params_82575(%struct.e1000_hw* %133)
  store i64 %134, i64* %6, align 8
  %135 = load i64, i64* %6, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %164

138:                                              ; preds = %132
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %140 = call i64 @igb_init_nvm_params_82575(%struct.e1000_hw* %139)
  store i64 %140, i64* %6, align 8
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %148 [
    i32 130, label %145
    i32 129, label %145
  ]

145:                                              ; preds = %138, %138
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %147 = call i64 @igb_init_nvm_params_i210(%struct.e1000_hw* %146)
  store i64 %147, i64* %6, align 8
  br label %149

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %145
  %150 = load i64, i64* %6, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %164

153:                                              ; preds = %149
  %154 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %155 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  switch i32 %156, label %160 [
    i32 131, label %157
    i32 128, label %157
  ]

157:                                              ; preds = %153, %153
  %158 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %159 = call i32 @igb_init_mbx_params_pf(%struct.e1000_hw* %158)
  br label %161

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %157
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %163 = call i64 @igb_init_phy_params_82575(%struct.e1000_hw* %162)
  store i64 %163, i64* %6, align 8
  br label %164

164:                                              ; preds = %161, %152, %137
  %165 = load i64, i64* %6, align 8
  store i64 %165, i64* %2, align 8
  br label %166

166:                                              ; preds = %164, %41
  %167 = load i64, i64* %2, align 8
  ret i64 %167
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_sgmii_uses_mdio_82575(%struct.e1000_hw*) #1

declare dso_local i64 @igb_set_sfp_media_type_82575(%struct.e1000_hw*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i64 @igb_init_mac_params_82575(%struct.e1000_hw*) #1

declare dso_local i64 @igb_init_nvm_params_82575(%struct.e1000_hw*) #1

declare dso_local i64 @igb_init_nvm_params_i210(%struct.e1000_hw*) #1

declare dso_local i32 @igb_init_mbx_params_pf(%struct.e1000_hw*) #1

declare dso_local i64 @igb_init_phy_params_82575(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
