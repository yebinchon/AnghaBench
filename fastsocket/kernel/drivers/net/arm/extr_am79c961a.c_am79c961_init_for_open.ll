; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_am79c961a.c_am79c961_init_for_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_am79c961a.c_am79c961_init_for_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, i32, i32 }
%struct.dev_priv = type { i32, i32*, i32, i32*, i64, i64, i64, i64, i32 }

@CSR0 = common dso_local global i32 0, align 4
@CSR0_BABL = common dso_local global i32 0, align 4
@CSR0_CERR = common dso_local global i32 0, align 4
@CSR0_MISS = common dso_local global i32 0, align 4
@CSR0_MERR = common dso_local global i32 0, align 4
@CSR0_TINT = common dso_local global i32 0, align 4
@CSR0_RINT = common dso_local global i32 0, align 4
@CSR0_STOP = common dso_local global i32 0, align 4
@LADRL = common dso_local global i32 0, align 4
@LADRH = common dso_local global i32 0, align 4
@PADRL = common dso_local global i32 0, align 4
@PADRH = common dso_local global i32 0, align 4
@MODE_PORT_10BT = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MODE_PROMISC = common dso_local global i32 0, align 4
@MODE = common dso_local global i32 0, align 4
@POLLINT = common dso_local global i32 0, align 4
@SIZERXR = common dso_local global i32 0, align 4
@RX_BUFFERS = common dso_local global i32 0, align 4
@SIZETXR = common dso_local global i32 0, align 4
@TX_BUFFERS = common dso_local global i32 0, align 4
@RMD_OWN = common dso_local global i32 0, align 4
@TMD_STP = common dso_local global i32 0, align 4
@TMD_ENP = common dso_local global i32 0, align 4
@BASERXL = common dso_local global i32 0, align 4
@BASERXH = common dso_local global i32 0, align 4
@BASETXL = common dso_local global i32 0, align 4
@CSR3 = common dso_local global i32 0, align 4
@CSR3_IDONM = common dso_local global i32 0, align 4
@CSR3_BABLM = common dso_local global i32 0, align 4
@CSR3_DXSUFLO = common dso_local global i32 0, align 4
@CSR4 = common dso_local global i32 0, align 4
@CSR4_APAD_XMIT = common dso_local global i32 0, align 4
@CSR4_MFCOM = common dso_local global i32 0, align 4
@CSR4_RCVCCOM = common dso_local global i32 0, align 4
@CSR4_TXSTRTM = common dso_local global i32 0, align 4
@CSR4_JABM = common dso_local global i32 0, align 4
@CSR0_IENA = common dso_local global i32 0, align 4
@CSR0_STRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @am79c961_init_for_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am79c961_init_for_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.dev_priv* %10, %struct.dev_priv** %3, align 8
  %11 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %11, i32 0, i32 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CSR0, align 4
  %19 = load i32, i32* @CSR0_BABL, align 4
  %20 = load i32, i32* @CSR0_CERR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CSR0_MISS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CSR0_MERR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CSR0_TINT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CSR0_RINT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CSR0_STOP, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @write_rreg(i32 %17, i32 %18, i32 %31)
  %33 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %34 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %33, i32 0, i32 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @write_ireg(i32 %39, i32 5, i32 160)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @write_ireg(i32 %43, i32 6, i32 129)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @write_ireg(i32 %47, i32 7, i32 144)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @write_ireg(i32 %51, i32 2, i32 0)
  %53 = load i32, i32* @LADRL, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %64, %1
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @LADRH, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @write_rreg(i32 %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %54

67:                                               ; preds = %54
  %68 = load i32, i32* @PADRL, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %92, %67
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @PADRH, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl i32 %88, 8
  %90 = or i32 %84, %89
  %91 = call i32 @write_rreg(i32 %79, i32 %80, i32 %90)
  br label %92

92:                                               ; preds = %76
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  store i8* %96, i8** %5, align 8
  br label %72

97:                                               ; preds = %72
  %98 = load i32, i32* @MODE_PORT_10BT, align 4
  store i32 %98, i32* %8, align 4
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IFF_PROMISC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32, i32* @MODE_PROMISC, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %105, %97
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MODE, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @write_rreg(i32 %112, i32 %113, i32 %114)
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @POLLINT, align 4
  %120 = call i32 @write_rreg(i32 %118, i32 %119, i32 0)
  %121 = load %struct.net_device*, %struct.net_device** %2, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SIZERXR, align 4
  %125 = load i32, i32* @RX_BUFFERS, align 4
  %126 = sub nsw i32 0, %125
  %127 = call i32 @write_rreg(i32 %123, i32 %124, i32 %126)
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @SIZETXR, align 4
  %132 = load i32, i32* @TX_BUFFERS, align 4
  %133 = sub nsw i32 0, %132
  %134 = call i32 @write_rreg(i32 %130, i32 %131, i32 %133)
  %135 = load i32, i32* @RX_BUFFERS, align 4
  %136 = mul nsw i32 %135, 8
  %137 = load i32, i32* @TX_BUFFERS, align 4
  %138 = mul nsw i32 %137, 8
  %139 = add nsw i32 %136, %138
  %140 = add nsw i32 %139, 16
  store i32 %140, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %141 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %142 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %141, i32 0, i32 7
  store i64 0, i64* %142, align 8
  %143 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %144 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %143, i32 0, i32 6
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %147 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %181, %109
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @RX_BUFFERS, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %184

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %155 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @am_writeword(%struct.net_device* %160, i32 %161, i32 %162)
  %164 = load %struct.net_device*, %struct.net_device** %2, align 8
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 2
  %167 = load i32, i32* @RMD_OWN, align 4
  %168 = call i32 @am_writeword(%struct.net_device* %164, i32 %166, i32 %167)
  %169 = load %struct.net_device*, %struct.net_device** %2, align 8
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 4
  %172 = call i32 @am_writeword(%struct.net_device* %169, i32 %171, i32 -1600)
  %173 = load %struct.net_device*, %struct.net_device** %2, align 8
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 6
  %176 = call i32 @am_writeword(%struct.net_device* %173, i32 %175, i32 0)
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1600
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 8
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %152
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %148

184:                                              ; preds = %148
  %185 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %186 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %185, i32 0, i32 5
  store i64 0, i64* %186, align 8
  %187 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %188 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %187, i32 0, i32 4
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %191 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %227, %184
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @TX_BUFFERS, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %230

196:                                              ; preds = %192
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %199 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %197, i32* %203, align 4
  %204 = load %struct.net_device*, %struct.net_device** %2, align 8
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @am_writeword(%struct.net_device* %204, i32 %205, i32 %206)
  %208 = load %struct.net_device*, %struct.net_device** %2, align 8
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 2
  %211 = load i32, i32* @TMD_STP, align 4
  %212 = load i32, i32* @TMD_ENP, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @am_writeword(%struct.net_device* %208, i32 %210, i32 %213)
  %215 = load %struct.net_device*, %struct.net_device** %2, align 8
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 4
  %218 = call i32 @am_writeword(%struct.net_device* %215, i32 %217, i32 61440)
  %219 = load %struct.net_device*, %struct.net_device** %2, align 8
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 6
  %222 = call i32 @am_writeword(%struct.net_device* %219, i32 %221, i32 0)
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1600
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 8
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %196
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %192

230:                                              ; preds = %192
  %231 = load %struct.net_device*, %struct.net_device** %2, align 8
  %232 = getelementptr inbounds %struct.net_device, %struct.net_device* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @BASERXL, align 4
  %235 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %236 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @write_rreg(i32 %233, i32 %234, i32 %237)
  %239 = load %struct.net_device*, %struct.net_device** %2, align 8
  %240 = getelementptr inbounds %struct.net_device, %struct.net_device* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @BASERXH, align 4
  %243 = call i32 @write_rreg(i32 %241, i32 %242, i32 0)
  %244 = load %struct.net_device*, %struct.net_device** %2, align 8
  %245 = getelementptr inbounds %struct.net_device, %struct.net_device* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @BASETXL, align 4
  %248 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %249 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @write_rreg(i32 %246, i32 %247, i32 %250)
  %252 = load %struct.net_device*, %struct.net_device** %2, align 8
  %253 = getelementptr inbounds %struct.net_device, %struct.net_device* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @BASERXH, align 4
  %256 = call i32 @write_rreg(i32 %254, i32 %255, i32 0)
  %257 = load %struct.net_device*, %struct.net_device** %2, align 8
  %258 = getelementptr inbounds %struct.net_device, %struct.net_device* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @CSR0, align 4
  %261 = load i32, i32* @CSR0_STOP, align 4
  %262 = call i32 @write_rreg(i32 %259, i32 %260, i32 %261)
  %263 = load %struct.net_device*, %struct.net_device** %2, align 8
  %264 = getelementptr inbounds %struct.net_device, %struct.net_device* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @CSR3, align 4
  %267 = load i32, i32* @CSR3_IDONM, align 4
  %268 = load i32, i32* @CSR3_BABLM, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @CSR3_DXSUFLO, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @write_rreg(i32 %265, i32 %266, i32 %271)
  %273 = load %struct.net_device*, %struct.net_device** %2, align 8
  %274 = getelementptr inbounds %struct.net_device, %struct.net_device* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @CSR4, align 4
  %277 = load i32, i32* @CSR4_APAD_XMIT, align 4
  %278 = load i32, i32* @CSR4_MFCOM, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @CSR4_RCVCCOM, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @CSR4_TXSTRTM, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @CSR4_JABM, align 4
  %285 = or i32 %283, %284
  %286 = call i32 @write_rreg(i32 %275, i32 %276, i32 %285)
  %287 = load %struct.net_device*, %struct.net_device** %2, align 8
  %288 = getelementptr inbounds %struct.net_device, %struct.net_device* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @CSR0, align 4
  %291 = load i32, i32* @CSR0_IENA, align 4
  %292 = load i32, i32* @CSR0_STRT, align 4
  %293 = or i32 %291, %292
  %294 = call i32 @write_rreg(i32 %289, i32 %290, i32 %293)
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_rreg(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @write_ireg(i32, i32, i32) #1

declare dso_local i32 @am_writeword(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
