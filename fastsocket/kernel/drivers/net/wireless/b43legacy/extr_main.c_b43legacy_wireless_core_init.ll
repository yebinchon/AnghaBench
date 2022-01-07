; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_core_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_wl*, %struct.TYPE_5__*, %struct.b43legacy_phy }
%struct.b43legacy_wl = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.ssb_bus* }
%struct.TYPE_4__ = type { i32 }
%struct.ssb_bus = type { i32, %struct.ssb_sprom }
%struct.ssb_sprom = type { i32 }
%struct.b43legacy_phy = type { i64, i32, i32, i32*, i32*, i64, i32, i64 }

@B43legacy_STAT_UNINIT = common dso_local global i64 0, align 8
@B43legacy_TMSLOW_GMODE = common dso_local global i32 0, align 4
@B43legacy_PHYTYPE_B = common dso_local global i64 0, align 8
@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@B43legacy_LO_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_WLCOREREV = common dso_local global i32 0, align 4
@B43legacy_HF_SYMW = common dso_local global i32 0, align 4
@B43legacy_HF_GDCW = common dso_local global i32 0, align 4
@B43legacy_BFL_PACTRL = common dso_local global i32 0, align 4
@B43legacy_HF_OFDMPABOOST = common dso_local global i32 0, align 4
@B43legacy_DEFAULT_SHORT_RETRY_LIMIT = common dso_local global i32 0, align 4
@B43legacy_DEFAULT_LONG_RETRY_LIMIT = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_PRMAXTIME = common dso_local global i32 0, align 4
@B43legacy_SHM_WIRELESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@B43legacy_STAT_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_wireless_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_wireless_core_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_wl*, align 8
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca %struct.b43legacy_phy*, align 8
  %7 = alloca %struct.ssb_sprom*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %11, i32 0, i32 0
  %13 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %12, align 8
  store %struct.b43legacy_wl* %13, %struct.b43legacy_wl** %4, align 8
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %15 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.ssb_bus*, %struct.ssb_bus** %17, align 8
  store %struct.ssb_bus* %18, %struct.ssb_bus** %5, align 8
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %20 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %19, i32 0, i32 2
  store %struct.b43legacy_phy* %20, %struct.b43legacy_phy** %6, align 8
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %22 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.ssb_bus*, %struct.ssb_bus** %24, align 8
  %26 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %25, i32 0, i32 1
  store %struct.ssb_sprom* %26, %struct.ssb_sprom** %7, align 8
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %28 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %27)
  %29 = load i64, i64* @B43legacy_STAT_UNINIT, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @B43legacy_WARN_ON(i32 %31)
  %33 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %34 = call i32 @ssb_bus_powerup(%struct.ssb_bus* %33, i32 0)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %263

38:                                               ; preds = %1
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %40 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @ssb_device_is_enabled(%struct.TYPE_5__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %46 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @B43legacy_TMSLOW_GMODE, align 4
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  store i32 %53, i32* %10, align 4
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @b43legacy_wireless_core_reset(%struct.b43legacy_wldev* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %38
  %58 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %59 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %65 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63, %57
  %70 = load i32, i32* @B43legacy_LO_COUNT, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @kzalloc(i32 %73, i32 %74)
  %76 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %77 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %79 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %69
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %295

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %63
  %87 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %88 = call i32 @setup_struct_wldev_for_init(%struct.b43legacy_wldev* %87)
  %89 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %90 = call i32 @b43legacy_phy_init_tssi2dbm_table(%struct.b43legacy_wldev* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %279

94:                                               ; preds = %86
  %95 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %96 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %95, i32 0, i32 0
  %97 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %98 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = call i32 @ssb_pcicore_dev_irqvecs_enable(i32* %96, %struct.TYPE_5__* %99)
  %101 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %102 = call i32 @prepare_phy_data_for_init(%struct.b43legacy_wldev* %101)
  %103 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %104 = call i32 @b43legacy_phy_calibrate(%struct.b43legacy_wldev* %103)
  %105 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %106 = call i32 @b43legacy_chip_init(%struct.b43legacy_wldev* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %268

110:                                              ; preds = %94
  %111 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %112 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %113 = load i32, i32* @B43legacy_SHM_SH_WLCOREREV, align 4
  %114 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %115 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %111, i32 %112, i32 %113, i32 %119)
  %121 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %122 = call i32 @b43legacy_hf_read(%struct.b43legacy_wldev* %121)
  store i32 %122, i32* %9, align 4
  %123 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %124 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %110
  %129 = load i32, i32* @B43legacy_HF_SYMW, align 4
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %133 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = load i32, i32* @B43legacy_HF_GDCW, align 4
  %138 = load i32, i32* %9, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %136, %128
  %141 = load %struct.ssb_sprom*, %struct.ssb_sprom** %7, align 8
  %142 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @B43legacy_BFL_PACTRL, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i32, i32* @B43legacy_HF_OFDMPABOOST, align 4
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %147, %140
  br label %178

152:                                              ; preds = %110
  %153 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %154 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %152
  %159 = load i32, i32* @B43legacy_HF_SYMW, align 4
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %163 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp sge i32 %164, 2
  br i1 %165, label %166, label %176

166:                                              ; preds = %158
  %167 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %168 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 8272
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i32, i32* @B43legacy_HF_GDCW, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %9, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %171, %166, %158
  br label %177

177:                                              ; preds = %176, %152
  br label %178

178:                                              ; preds = %177, %151
  %179 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @b43legacy_hf_write(%struct.b43legacy_wldev* %179, i32 %180)
  %182 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %183 = load i32, i32* @B43legacy_DEFAULT_SHORT_RETRY_LIMIT, align 4
  %184 = load i32, i32* @B43legacy_DEFAULT_LONG_RETRY_LIMIT, align 4
  %185 = call i32 @b43legacy_set_retry_limits(%struct.b43legacy_wldev* %182, i32 %183, i32 %184)
  %186 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %187 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %188 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %186, i32 %187, i32 68, i32 3)
  %189 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %190 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %191 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %189, i32 %190, i32 70, i32 2)
  %192 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %193 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %194 = load i32, i32* @B43legacy_SHM_SH_PRMAXTIME, align 4
  %195 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %192, i32 %193, i32 %194, i32 1)
  %196 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %197 = call i32 @b43legacy_rate_memory_init(%struct.b43legacy_wldev* %196)
  %198 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %199 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %178
  %204 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %205 = load i32, i32* @B43legacy_SHM_WIRELESS, align 4
  %206 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %204, i32 %205, i32 3, i32 31)
  br label %211

207:                                              ; preds = %178
  %208 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %209 = load i32, i32* @B43legacy_SHM_WIRELESS, align 4
  %210 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %208, i32 %209, i32 3, i32 15)
  br label %211

211:                                              ; preds = %207, %203
  %212 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %213 = load i32, i32* @B43legacy_SHM_WIRELESS, align 4
  %214 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %212, i32 %213, i32 4, i32 1023)
  br label %215

215:                                              ; preds = %232, %211
  %216 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %217 = call i64 @b43legacy_using_pio(%struct.b43legacy_wldev* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %221 = call i32 @b43legacy_pio_init(%struct.b43legacy_wldev* %220)
  store i32 %221, i32* %8, align 4
  br label %231

222:                                              ; preds = %215
  %223 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %224 = call i32 @b43legacy_dma_init(%struct.b43legacy_wldev* %223)
  store i32 %224, i32* %8, align 4
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %222
  %228 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %229 = call i32 @b43legacy_qos_init(%struct.b43legacy_wldev* %228)
  br label %230

230:                                              ; preds = %227, %222
  br label %231

231:                                              ; preds = %230, %219
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* @EAGAIN, align 4
  %235 = sub nsw i32 0, %234
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %215, label %237

237:                                              ; preds = %232
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %265

241:                                              ; preds = %237
  %242 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %243 = call i32 @b43legacy_set_synth_pu_delay(%struct.b43legacy_wldev* %242, i32 1)
  %244 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %245 = call i32 @ssb_bus_powerup(%struct.ssb_bus* %244, i32 1)
  %246 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %247 = call i32 @b43legacy_upload_card_macaddress(%struct.b43legacy_wldev* %246)
  %248 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %249 = call i32 @b43legacy_security_init(%struct.b43legacy_wldev* %248)
  %250 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %4, align 8
  %251 = call i32 @b43legacy_rng_init(%struct.b43legacy_wl* %250)
  %252 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %253 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %252, i32 0, i32 0
  %254 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %253, align 8
  %255 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @ieee80211_wake_queues(i32 %256)
  %258 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %259 = load i32, i32* @B43legacy_STAT_INITIALIZED, align 4
  %260 = call i32 @b43legacy_set_status(%struct.b43legacy_wldev* %258, i32 %259)
  %261 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %262 = call i32 @b43legacy_leds_init(%struct.b43legacy_wldev* %261)
  br label %263

263:                                              ; preds = %241, %37
  %264 = load i32, i32* %8, align 4
  store i32 %264, i32* %2, align 4
  br label %295

265:                                              ; preds = %240
  %266 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %267 = call i32 @b43legacy_chip_exit(%struct.b43legacy_wldev* %266)
  br label %268

268:                                              ; preds = %265, %109
  %269 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %270 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %269, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %275 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %274, i32 0, i32 4
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 @kfree(i32* %276)
  br label %278

278:                                              ; preds = %273, %268
  br label %279

279:                                              ; preds = %278, %93
  %280 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %281 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @kfree(i32* %282)
  %284 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %285 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %284, i32 0, i32 3
  store i32* null, i32** %285, align 8
  %286 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %287 = call i32 @ssb_bus_may_powerdown(%struct.ssb_bus* %286)
  %288 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %289 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %288)
  %290 = load i64, i64* @B43legacy_STAT_UNINIT, align 8
  %291 = icmp ne i64 %289, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @B43legacy_WARN_ON(i32 %292)
  %294 = load i32, i32* %8, align 4
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %279, %263, %82
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @ssb_bus_powerup(%struct.ssb_bus*, i32) #1

declare dso_local i32 @ssb_device_is_enabled(%struct.TYPE_5__*) #1

declare dso_local i32 @b43legacy_wireless_core_reset(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @setup_struct_wldev_for_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_init_tssi2dbm_table(%struct.b43legacy_wldev*) #1

declare dso_local i32 @ssb_pcicore_dev_irqvecs_enable(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @prepare_phy_data_for_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_calibrate(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_chip_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_hf_read(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_hf_write(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_set_retry_limits(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_rate_memory_init(%struct.b43legacy_wldev*) #1

declare dso_local i64 @b43legacy_using_pio(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_pio_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_dma_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_qos_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_set_synth_pu_delay(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_upload_card_macaddress(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_security_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_rng_init(%struct.b43legacy_wl*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @b43legacy_set_status(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_leds_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_chip_exit(%struct.b43legacy_wldev*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ssb_bus_may_powerdown(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
