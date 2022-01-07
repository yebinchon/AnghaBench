; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8727_common_init_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8727_common_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }

@PORT_MAX = common dso_local global i32 0, align 4
@NIG_REG_PORT_SWAP = common dso_local global i32 0, align 4
@NIG_REG_STRAP_OVERRIDE = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_LOW = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_HIGH = common dso_local global i32 0, align 4
@PORT_0 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"populate phy failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@PORT_1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Loading spirom for phy address 0x%x\0A\00", align 1
@MDIO_PMA_REG_TX_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i64*, i64*, i32, i64)* @bnx2x_8727_common_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8727_common_init_phy(%struct.bnx2x* %0, i64* %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %23 = load i32, i32* @PORT_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca %struct.bnx2x_phy, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i32, i32* @PORT_MAX, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca %struct.bnx2x_phy*, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %30 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %31 = load i32, i32* @NIG_REG_PORT_SWAP, align 4
  %32 = call i64 @REG_RD(%struct.bnx2x* %30, i32 %31)
  store i64 %32, i64* %14, align 8
  %33 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %34 = load i32, i32* @NIG_REG_STRAP_OVERRIDE, align 4
  %35 = call i64 @REG_RD(%struct.bnx2x* %33, i32 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i32, i32* @MISC_REGISTERS_GPIO_1, align 4
  store i32 %36, i32* %13, align 4
  store i32 1, i32* %12, align 4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @bnx2x_get_ext_phy_reset_gpio(%struct.bnx2x* %37, i64 %40, i32* %13, i32* %12)
  %42 = load i64, i64* %14, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %5
  %45 = load i64, i64* %15, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %44, %5
  %48 = phi i1 [ false, %5 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %12, align 4
  %51 = xor i32 %50, %49
  store i32 %51, i32* %12, align 4
  %52 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %52, i32 %53, i32 %54, i32 %55)
  %57 = call i32 @usleep_range(i32 1000, i32 2000)
  %58 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_HIGH, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %58, i32 %59, i32 %60, i32 %61)
  %63 = call i32 @usleep_range(i32 5000, i32 10000)
  %64 = load i32, i32* @PORT_MAX, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %131, %47
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @PORT_0, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %134

70:                                               ; preds = %66
  %71 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %72 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %20, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %21, align 8
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %19, align 4
  br label %93

82:                                               ; preds = %70
  %83 = load i64*, i64** %8, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %20, align 8
  %88 = load i64*, i64** %9, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %21, align 8
  store i32 0, i32* %19, align 4
  br label %93

93:                                               ; preds = %82, %74
  %94 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i64, i64* %20, align 8
  %97 = load i64, i64* %21, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %100
  %102 = call i64 @bnx2x_populate_phy(%struct.bnx2x* %94, i32 %95, i64 %96, i64 %97, i32 %98, %struct.bnx2x_phy* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load i32, i32* @NETIF_MSG_LINK, align 4
  %106 = call i32 (i32, i8*, ...) @DP(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %212

109:                                              ; preds = %93
  %110 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %111 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %112 = load i32, i32* %19, align 4
  %113 = mul nsw i32 %112, 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %111, %114
  %116 = load i32, i32* @NIG_MASK_XGXS0_LINK_STATUS, align 4
  %117 = load i32, i32* @NIG_MASK_XGXS0_LINK10G, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @NIG_MASK_SERDES0_LINK_STATUS, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %110, i64 %115, i32 %122)
  %124 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %126
  %128 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %129 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %130 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %124, %struct.bnx2x_phy* %127, i32 %128, i32 %129, i32 32768)
  br label %131

131:                                              ; preds = %109
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %12, align 4
  br label %66

134:                                              ; preds = %66
  %135 = call i32 @msleep(i32 150)
  %136 = load i32, i32* @PORT_0, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %137
  %139 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %134
  %144 = load i64, i64* @PORT_1, align 8
  %145 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %144
  %146 = load i32, i32* @PORT_0, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %147
  store %struct.bnx2x_phy* %145, %struct.bnx2x_phy** %148, align 8
  %149 = load i32, i32* @PORT_0, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %150
  %152 = load i64, i64* @PORT_1, align 8
  %153 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %152
  store %struct.bnx2x_phy* %151, %struct.bnx2x_phy** %153, align 8
  br label %165

154:                                              ; preds = %134
  %155 = load i32, i32* @PORT_0, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %156
  %158 = load i32, i32* @PORT_0, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %159
  store %struct.bnx2x_phy* %157, %struct.bnx2x_phy** %160, align 8
  %161 = load i64, i64* @PORT_1, align 8
  %162 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %161
  %163 = load i64, i64* @PORT_1, align 8
  %164 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %163
  store %struct.bnx2x_phy* %162, %struct.bnx2x_phy** %164, align 8
  br label %165

165:                                              ; preds = %154, %143
  %166 = load i32, i32* @PORT_MAX, align 4
  %167 = sub nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %208, %165
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @PORT_0, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %211

172:                                              ; preds = %168
  %173 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %174 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %19, align 4
  br label %179

178:                                              ; preds = %172
  store i32 0, i32* %19, align 4
  br label %179

179:                                              ; preds = %178, %176
  %180 = load i32, i32* @NETIF_MSG_LINK, align 4
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %182
  %184 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %183, align 8
  %185 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i8*, ...) @DP(i32 %180, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  %188 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %190
  %192 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %191, align 8
  %193 = load i32, i32* %19, align 4
  %194 = call i64 @bnx2x_8073_8727_external_rom_boot(%struct.bnx2x* %188, %struct.bnx2x_phy* %192, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %179
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %212

199:                                              ; preds = %179
  %200 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %202
  %204 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %203, align 8
  %205 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %206 = load i32, i32* @MDIO_PMA_REG_TX_DISABLE, align 4
  %207 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %200, %struct.bnx2x_phy* %204, i32 %205, i32 %206, i32 1)
  br label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %12, align 4
  br label %168

211:                                              ; preds = %168
  store i32 0, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %212

212:                                              ; preds = %211, %196, %104
  %213 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %213)
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i32) #2

declare dso_local i32 @bnx2x_get_ext_phy_reset_gpio(%struct.bnx2x*, i64, i32*, i32*) #2

declare dso_local i32 @bnx2x_set_gpio(%struct.bnx2x*, i32, i32, i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #2

declare dso_local i64 @bnx2x_populate_phy(%struct.bnx2x*, i32, i64, i64, i32, %struct.bnx2x_phy*) #2

declare dso_local i32 @DP(i32, i8*, ...) #2

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #2

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i64 @bnx2x_8073_8727_external_rom_boot(%struct.bnx2x*, %struct.bnx2x_phy*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
