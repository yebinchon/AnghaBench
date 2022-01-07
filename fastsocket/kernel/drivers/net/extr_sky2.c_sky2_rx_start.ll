; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_rx_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_rx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i64, i32, i32, i32, %struct.rx_ring_info*, %struct.TYPE_2__*, i32, i64, i64, %struct.sky2_hw* }
%struct.rx_ring_info = type { i32*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sky2_hw = type { i64, i64, i32, i32 }

@rxqaddr = common dso_local global i32* null, align 8
@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@Q_WM = common dso_local global i32 0, align 4
@BMU_WM_PEX = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EC_U = common dso_local global i64 0, align 8
@CHIP_REV_YU_EC_U_A1 = common dso_local global i64 0, align 8
@CHIP_REV_YU_EC_U_B0 = common dso_local global i64 0, align 8
@Q_TEST = common dso_local global i32 0, align 4
@F_M_RX_RAM_DIS = common dso_local global i32 0, align 4
@RX_LE_SIZE = common dso_local global i64 0, align 8
@SKY2_HW_NEW_LE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@copybreak = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@RX_TRUNC_OFF = common dso_local global i32 0, align 4
@RX_GMF_TR_THR = common dso_local global i32 0, align 4
@RX_TRUNC_ON = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_port*)* @sky2_rx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_rx_start(%struct.sky2_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sky2_port*, align 8
  %4 = alloca %struct.sky2_hw*, align 8
  %5 = alloca %struct.rx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %3, align 8
  %10 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %11 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %10, i32 0, i32 9
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %11, align 8
  store %struct.sky2_hw* %12, %struct.sky2_hw** %4, align 8
  %13 = load i32*, i32** @rxqaddr, align 8
  %14 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %15 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %20 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %22 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @sky2_qset(%struct.sky2_hw* %23, i32 %24)
  %26 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %27 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %30 = call i64 @pci_find_capability(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @Q_WM, align 4
  %36 = call i32 @Q_ADDR(i32 %34, i32 %35)
  %37 = load i32, i32* @BMU_WM_PEX, align 4
  %38 = call i32 @sky2_write32(%struct.sky2_hw* %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %41 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHIP_ID_YUKON_EC_U, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %47 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHIP_REV_YU_EC_U_A1, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %53 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHIP_REV_YU_EC_U_B0, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51, %45
  %58 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @Q_TEST, align 4
  %61 = call i32 @Q_ADDR(i32 %59, i32 %60)
  %62 = load i32, i32* @F_M_RX_RAM_DIS, align 4
  %63 = call i32 @sky2_write32(%struct.sky2_hw* %58, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %51, %39
  %65 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %68 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* @RX_LE_SIZE, align 8
  %71 = sub nsw i64 %70, 1
  %72 = call i32 @sky2_prefetch_init(%struct.sky2_hw* %65, i32 %66, i32 %69, i64 %71)
  %73 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %74 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SKY2_HW_NEW_LE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %64
  %80 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %81 = call i32 @rx_set_checksum(%struct.sky2_port* %80)
  br label %82

82:                                               ; preds = %79, %64
  %83 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %84 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %83, i32 0, i32 5
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @ETH_HLEN, align 4
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = load i64, i64* @VLAN_HLEN, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @roundup(i64 %92, i32 8)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sub i32 %94, 8
  %96 = zext i32 %95 to i64
  %97 = udiv i64 %96, 4
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @PAGE_SHIFT, align 4
  %101 = lshr i32 %99, %100
  %102 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %103 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %105 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %108 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ARRAY_SIZE(i32 %109)
  %111 = icmp ugt i32 %106, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @BUG_ON(i32 %112)
  %114 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %115 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @PAGE_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = sub i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @copybreak, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %82
  %125 = load i32, i32* @copybreak, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %124, %82
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @ETH_HLEN, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @ETH_HLEN, align 4
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %130, %126
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %135 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %179, %132
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %139 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %142, label %182

142:                                              ; preds = %136
  %143 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %144 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %143, i32 0, i32 4
  %145 = load %struct.rx_ring_info*, %struct.rx_ring_info** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %145, i64 %147
  store %struct.rx_ring_info* %148, %struct.rx_ring_info** %5, align 8
  %149 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %150 = call i32* @sky2_rx_alloc(%struct.sky2_port* %149)
  %151 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %152 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %151, i32 0, i32 0
  store i32* %150, i32** %152, align 8
  %153 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %154 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %142
  br label %215

158:                                              ; preds = %142
  %159 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %160 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %163 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %164 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @sky2_rx_map_skb(i32 %161, %struct.rx_ring_info* %162, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %158
  %169 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %170 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @dev_kfree_skb(i32* %171)
  %173 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %174 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %173, i32 0, i32 0
  store i32* null, i32** %174, align 8
  br label %215

175:                                              ; preds = %158
  %176 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %177 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %178 = call i32 @sky2_rx_submit(%struct.sky2_port* %176, %struct.rx_ring_info* %177)
  br label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %7, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %136

182:                                              ; preds = %136
  %183 = load i32, i32* %9, align 4
  %184 = icmp ugt i32 %183, 511
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %187 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %188 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %191 = call i32 @SK_REG(i64 %189, i32 %190)
  %192 = load i32, i32* @RX_TRUNC_OFF, align 4
  %193 = call i32 @sky2_write32(%struct.sky2_hw* %186, i32 %191, i32 %192)
  br label %211

194:                                              ; preds = %182
  %195 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %196 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %197 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @RX_GMF_TR_THR, align 4
  %200 = call i32 @SK_REG(i64 %198, i32 %199)
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @sky2_write16(%struct.sky2_hw* %195, i32 %200, i32 %201)
  %203 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %204 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %205 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %208 = call i32 @SK_REG(i64 %206, i32 %207)
  %209 = load i32, i32* @RX_TRUNC_ON, align 4
  %210 = call i32 @sky2_write32(%struct.sky2_hw* %203, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %194, %185
  %212 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @sky2_rx_update(%struct.sky2_port* %212, i32 %213)
  store i32 0, i32* %2, align 4
  br label %220

215:                                              ; preds = %168, %157
  %216 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %217 = call i32 @sky2_rx_clean(%struct.sky2_port* %216)
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %215, %211
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @sky2_qset(%struct.sky2_hw*, i32) #1

declare dso_local i64 @pci_find_capability(i32, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @sky2_prefetch_init(%struct.sky2_hw*, i32, i32, i64) #1

declare dso_local i32 @rx_set_checksum(%struct.sky2_port*) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32* @sky2_rx_alloc(%struct.sky2_port*) #1

declare dso_local i64 @sky2_rx_map_skb(i32, %struct.rx_ring_info*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @sky2_rx_submit(%struct.sky2_port*, %struct.rx_ring_info*) #1

declare dso_local i32 @SK_REG(i64, i32) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_rx_update(%struct.sky2_port*, i32) #1

declare dso_local i32 @sky2_rx_clean(%struct.sky2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
