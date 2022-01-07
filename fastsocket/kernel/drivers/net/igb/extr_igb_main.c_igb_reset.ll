; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i64, i32, %struct.TYPE_4__*, %struct.e1000_hw, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_5__, %struct.e1000_mac_info, %struct.e1000_fc_info }
%struct.TYPE_5__ = type { i64 }
%struct.e1000_mac_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_fc_info = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@E1000_RXPBS = common dso_local global i32 0, align 4
@E1000_RXPBS_SIZE_MASK_82576 = common dso_local global i32 0, align 4
@E1000_PBA_34K = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@E1000_PBA = common dso_local global i32 0, align 4
@IGB_VF_FLAG_PF_SET_MAC = common dso_local global i32 0, align 4
@E1000_VFRE = common dso_local global i32 0, align 4
@E1000_VFTE = common dso_local global i32 0, align 4
@E1000_WUC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Hardware Error\0A\00", align 1
@E1000_VET = common dso_local global i32 0, align 4
@ETHERNET_IEEE_VLAN_TYPE = common dso_local global i32 0, align 4
@__IGB_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_reset(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.e1000_mac_info*, align 8
  %6 = alloca %struct.e1000_fc_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 7
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %3, align 8
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 6
  store %struct.e1000_hw* %17, %struct.e1000_hw** %4, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 1
  store %struct.e1000_mac_info* %19, %struct.e1000_mac_info** %5, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 2
  store %struct.e1000_fc_info* %21, %struct.e1000_fc_info** %6, align 8
  store i32 0, i32* %7, align 4
  %22 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %23 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %37 [
    i32 129, label %25
    i32 128, label %25
    i32 132, label %25
    i32 133, label %30
    i32 134, label %36
    i32 131, label %36
    i32 130, label %36
  ]

25:                                               ; preds = %1, %1, %1
  %26 = load i32, i32* @E1000_RXPBS, align 4
  %27 = call i32 @rd32(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @igb_rxpbs_adjust_82580(i32 %28)
  store i32 %29, i32* %7, align 4
  br label %39

30:                                               ; preds = %1
  %31 = load i32, i32* @E1000_RXPBS, align 4
  %32 = call i32 @rd32(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @E1000_RXPBS_SIZE_MASK_82576, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %39

36:                                               ; preds = %1, %1, %1
  br label %37

37:                                               ; preds = %1, %36
  %38 = load i32, i32* @E1000_PBA_34K, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %30, %25
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ETH_FRAME_LEN, align 4
  %44 = load i32, i32* @ETH_FCS_LEN, align 4
  %45 = add nsw i32 %43, %44
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %108

47:                                               ; preds = %39
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 133
  br i1 %51, label %52, label %108

52:                                               ; preds = %47
  %53 = load i32, i32* @E1000_PBA, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @wr32(i32 %53, i32 %54)
  %56 = load i32, i32* @E1000_PBA, align 4
  %57 = call i32 @rd32(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 16
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 65535
  store i32 %61, i32* %7, align 4
  %62 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 4
  %67 = load i32, i32* @ETH_FCS_LEN, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %66, %68
  %70 = mul i64 %69, 2
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ALIGN(i32 %72, i32 1024)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = ashr i32 %74, 10
  store i32 %75, i32* %9, align 4
  %76 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @ALIGN(i32 %79, i32 1024)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %81, 10
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %52
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %94, %95
  %97 = sub nsw i32 %93, %96
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %101, %92
  br label %104

104:                                              ; preds = %103, %86, %52
  %105 = load i32, i32* @E1000_PBA, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @wr32(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %47, %39
  %109 = load i32, i32* %7, align 4
  %110 = shl i32 %109, 10
  %111 = mul nsw i32 %110, 9
  %112 = sdiv i32 %111, 10
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 %113, 10
  %115 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %116 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 2, %117
  %119 = sub nsw i32 %114, %118
  %120 = call i32 @min(i32 %112, i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %121, -16
  %123 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %124 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %126 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 16
  %129 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %130 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %132 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %131, i32 0, i32 2
  store i32 65535, i32* %132, align 4
  %133 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %134 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %133, i32 0, i32 3
  store i32 1, i32* %134, align 4
  %135 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %136 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %139 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %141 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %172

144:                                              ; preds = %108
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %162, %144
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %148 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = load i32, i32* @IGB_VF_FLAG_PF_SET_MAC, align 4
  %153 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %154 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %153, i32 0, i32 5
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %152
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %151
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %145

165:                                              ; preds = %145
  %166 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %167 = call i32 @igb_ping_all_vfs(%struct.igb_adapter* %166)
  %168 = load i32, i32* @E1000_VFRE, align 4
  %169 = call i32 @wr32(i32 %168, i32 0)
  %170 = load i32, i32* @E1000_VFTE, align 4
  %171 = call i32 @wr32(i32 %170, i32 0)
  br label %172

172:                                              ; preds = %165, %108
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %174 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %176, align 8
  %178 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %179 = bitcast %struct.e1000_hw* %178 to %struct.e1000_hw.2*
  %180 = call i32 %177(%struct.e1000_hw.2* %179)
  %181 = load i32, i32* @E1000_WUC, align 4
  %182 = call i32 @wr32(i32 %181, i32 0)
  %183 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %184 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %186, align 8
  %188 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %189 = bitcast %struct.e1000_hw* %188 to %struct.e1000_hw.1*
  %190 = call i64 %187(%struct.e1000_hw.1* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %172
  %193 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %194 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 0
  %195 = call i32 @dev_err(i32* %194, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %196

196:                                              ; preds = %192, %172
  %197 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %198 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %196
  %203 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %204 = call i32 @igb_force_mac_fc(%struct.e1000_hw* %203)
  br label %205

205:                                              ; preds = %202, %196
  %206 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @igb_init_dmac(%struct.igb_adapter* %206, i32 %207)
  %209 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %210 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @netif_running(i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %205
  %215 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %216 = call i32 @igb_power_down_link(%struct.igb_adapter* %215)
  br label %217

217:                                              ; preds = %214, %205
  %218 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %219 = call i32 @igb_update_mng_vlan(%struct.igb_adapter* %218)
  %220 = load i32, i32* @E1000_VET, align 4
  %221 = load i32, i32* @ETHERNET_IEEE_VLAN_TYPE, align 4
  %222 = call i32 @wr32(i32 %220, i32 %221)
  %223 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %224 = call i32 @igb_ptp_reset(%struct.igb_adapter* %223)
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %226 = call i32 @igb_get_phy_info(%struct.e1000_hw* %225)
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_rxpbs_adjust_82580(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @igb_ping_all_vfs(%struct.igb_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @igb_force_mac_fc(%struct.e1000_hw*) #1

declare dso_local i32 @igb_init_dmac(%struct.igb_adapter*, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @igb_power_down_link(%struct.igb_adapter*) #1

declare dso_local i32 @igb_update_mng_vlan(%struct.igb_adapter*) #1

declare dso_local i32 @igb_ptp_reset(%struct.igb_adapter*) #1

declare dso_local i32 @igb_get_phy_info(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
