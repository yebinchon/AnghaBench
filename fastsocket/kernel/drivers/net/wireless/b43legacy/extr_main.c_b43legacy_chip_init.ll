; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_chip_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, %struct.TYPE_9__*, %struct.b43legacy_phy }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.b43legacy_phy = type { i32, i64, i32, i64 }

@B43legacy_MACCTL_IHR_ENABLED = common dso_local global i32 0, align 4
@B43legacy_MACCTL_SHM_ENABLED = common dso_local global i32 0, align 4
@B43legacy_MACCTL_GMODE = common dso_local global i32 0, align 4
@B43legacy_MACCTL_INFRA = common dso_local global i32 0, align 4
@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_INTERFMODE_NONE = common dso_local global i32 0, align 4
@B43legacy_ANTENNA_DEFAULT = common dso_local global i32 0, align 4
@B43legacy_PHYTYPE_B = common dso_local global i64 0, align 8
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA0_IRQ_MASK = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA1_IRQ_MASK = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA2_IRQ_MASK = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA3_IRQ_MASK = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA4_IRQ_MASK = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA5_IRQ_MASK = common dso_local global i32 0, align 4
@SSB_TMSLOW = common dso_local global i32 0, align 4
@B43legacy_TMSLOW_MACPHYCLKEN = common dso_local global i32 0, align 4
@B43legacy_MMIO_POWERUP_DELAY = common dso_local global i32 0, align 4
@B43legacy_PHY_TX_BADNESS_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Chip initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_chip_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 2
  store %struct.b43legacy_phy* %10, %struct.b43legacy_phy** %3, align 8
  %11 = load i32, i32* @B43legacy_MACCTL_IHR_ENABLED, align 4
  %12 = load i32, i32* @B43legacy_MACCTL_SHM_ENABLED, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %15 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @B43legacy_MACCTL_GMODE, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* @B43legacy_MACCTL_INFRA, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %28 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %27, i32 %28, i32 %29)
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %32 = call i32 @b43legacy_upload_microcode(%struct.b43legacy_wldev* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %222

36:                                               ; preds = %23
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %38 = call i32 @b43legacy_gpio_init(%struct.b43legacy_wldev* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %222

42:                                               ; preds = %36
  %43 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %44 = call i32 @b43legacy_upload_initvals(%struct.b43legacy_wldev* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %227

48:                                               ; preds = %42
  %49 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %50 = call i32 @b43legacy_radio_turn_on(%struct.b43legacy_wldev* %49)
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %52 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %51, i32 998, i32 0)
  %53 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %54 = call i32 @b43legacy_phy_init(%struct.b43legacy_wldev* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %224

58:                                               ; preds = %48
  %59 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %60 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @B43legacy_INTERFMODE_NONE, align 4
  %63 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %64 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @b43legacy_radio_set_interference_mitigation(%struct.b43legacy_wldev* %65, i32 %66)
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %69 = call i32 @b43legacy_phy_set_antenna_diversity(%struct.b43legacy_wldev* %68)
  %70 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %71 = load i32, i32* @B43legacy_ANTENNA_DEFAULT, align 4
  %72 = call i32 @b43legacy_mgmtframe_txantenna(%struct.b43legacy_wldev* %70, i32 %71)
  %73 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %74 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %58
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %80 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %79, i32 94)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, 4
  store i32 %82, i32* %8, align 4
  %83 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %83, i32 94, i32 %84)
  br label %86

86:                                               ; preds = %78, %58
  %87 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %88 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %87, i32 256, i32 16777216)
  %89 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %90 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %94, 5
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %98 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %97, i32 268, i32 16777216)
  br label %99

99:                                               ; preds = %96, %86
  %100 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %101 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %102 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @B43legacy_MACCTL_INFRA, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %108 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %107, i32 %108, i32 %109)
  %111 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %112 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %113 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %111, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* @B43legacy_MACCTL_INFRA, align 4
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %118 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %117, i32 %118, i32 %119)
  %121 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %122 = call i64 @b43legacy_using_pio(%struct.b43legacy_wldev* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %99
  %125 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %126 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %125, i32 528, i32 256)
  %127 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %128 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %127, i32 560, i32 256)
  %129 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %130 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %129, i32 592, i32 256)
  %131 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %132 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %131, i32 624, i32 256)
  %133 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %134 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %135 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %133, i32 %134, i32 52, i32 0)
  br label %136

136:                                              ; preds = %124, %99
  %137 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %138 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %139 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %137, i32 %138, i32 116, i32 0)
  %140 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %141 = call i32 @b43legacy_adjust_opmode(%struct.b43legacy_wldev* %140)
  %142 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %143 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %149, label %158

149:                                              ; preds = %136
  %150 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %151 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %150, i32 1550, i32 0)
  %152 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %153 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %152, i32 1552, i32 32768)
  %154 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %155 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %154, i32 1540, i32 0)
  %156 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %157 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %156, i32 1542, i32 512)
  br label %163

158:                                              ; preds = %136
  %159 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %160 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %159, i32 392, i32 -2147483648)
  %161 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %162 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %161, i32 396, i32 33554432)
  br label %163

163:                                              ; preds = %158, %149
  %164 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %165 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %166 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %164, i32 %165, i32 16384)
  %167 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %168 = load i32, i32* @B43legacy_MMIO_DMA0_IRQ_MASK, align 4
  %169 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %167, i32 %168, i32 121856)
  %170 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %171 = load i32, i32* @B43legacy_MMIO_DMA1_IRQ_MASK, align 4
  %172 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %170, i32 %171, i32 56320)
  %173 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %174 = load i32, i32* @B43legacy_MMIO_DMA2_IRQ_MASK, align 4
  %175 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %173, i32 %174, i32 56320)
  %176 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %177 = load i32, i32* @B43legacy_MMIO_DMA3_IRQ_MASK, align 4
  %178 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %176, i32 %177, i32 121856)
  %179 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %180 = load i32, i32* @B43legacy_MMIO_DMA4_IRQ_MASK, align 4
  %181 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %179, i32 %180, i32 56320)
  %182 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %183 = load i32, i32* @B43legacy_MMIO_DMA5_IRQ_MASK, align 4
  %184 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %182, i32 %183, i32 56320)
  %185 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %186 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %185, i32 0, i32 1
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load i32, i32* @SSB_TMSLOW, align 4
  %189 = call i32 @ssb_read32(%struct.TYPE_9__* %187, i32 %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* @B43legacy_TMSLOW_MACPHYCLKEN, align 4
  %191 = load i32, i32* %6, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %6, align 4
  %193 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %194 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %193, i32 0, i32 1
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = load i32, i32* @SSB_TMSLOW, align 4
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @ssb_write32(%struct.TYPE_9__* %195, i32 %196, i32 %197)
  %199 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %200 = load i32, i32* @B43legacy_MMIO_POWERUP_DELAY, align 4
  %201 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %202 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %201, i32 0, i32 1
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %199, i32 %200, i32 %208)
  %210 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %211 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %210, i32 0, i32 2
  %212 = load i32, i32* @B43legacy_PHY_TX_BADNESS_LIMIT, align 4
  %213 = call i32 @atomic_set(i32* %211, i32 %212)
  %214 = load i32, i32* %4, align 4
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i32
  %217 = call i32 @B43legacy_WARN_ON(i32 %216)
  %218 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %219 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @b43legacydbg(i32 %220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %222

222:                                              ; preds = %227, %163, %41, %35
  %223 = load i32, i32* %4, align 4
  ret i32 %223

224:                                              ; preds = %57
  %225 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %226 = call i32 @b43legacy_radio_turn_off(%struct.b43legacy_wldev* %225, i32 1)
  br label %227

227:                                              ; preds = %224, %47
  %228 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %229 = call i32 @b43legacy_gpio_cleanup(%struct.b43legacy_wldev* %228)
  br label %222
}

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_upload_microcode(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_gpio_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_upload_initvals(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_turn_on(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_set_interference_mitigation(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_phy_set_antenna_diversity(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_mgmtframe_txantenna(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i64 @b43legacy_using_pio(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_adjust_opmode(%struct.b43legacy_wldev*) #1

declare dso_local i32 @ssb_read32(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ssb_write32(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacydbg(i32, i8*) #1

declare dso_local i32 @b43legacy_radio_turn_off(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_gpio_cleanup(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
