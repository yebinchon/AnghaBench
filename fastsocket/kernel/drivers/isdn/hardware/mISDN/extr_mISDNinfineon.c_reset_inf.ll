; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_reset_inf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_reset_inf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_6__*, i32 }
%struct.TYPE_10__ = type { i32, i32 (%struct.inf_hw.0*, i32, i32)*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.inf_hw.0 = type opaque
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: resetting card\0A\00", align 1
@DIVA_PCI_CTRL = common dso_local global i64 0, align 8
@DIVA_RESET_BIT = common dso_local global i32 0, align 4
@DIVA_LED_A = common dso_local global i32 0, align 4
@PITA_PARA_SOFTRESET = common dso_local global i32 0, align 4
@PITA_PARA_MPX_MODE = common dso_local global i32 0, align 4
@PITA_MISC_REG = common dso_local global i64 0, align 8
@PITA_SER_SOFTRESET = common dso_local global i32 0, align 4
@IPAC_ACFG = common dso_local global i32 0, align 4
@IPAC_AOE = common dso_local global i32 0, align 4
@IPAC_PCFG = common dso_local global i32 0, align 4
@IPAC_ATX = common dso_local global i32 0, align 4
@SCT_PLX_RESET_ADDR = common dso_local global i64 0, align 8
@SCT_PLX_RESET_BIT = common dso_local global i32 0, align 4
@GAZEL_CNTRL = common dso_local global i64 0, align 8
@GAZEL_RESET_9050 = common dso_local global i64 0, align 8
@GAZEL_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inf_hw*)* @reset_inf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_inf(%struct.inf_hw* %0) #0 {
  %2 = alloca %struct.inf_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.inf_hw* %0, %struct.inf_hw** %2, align 8
  %5 = load i32, i32* @debug, align 4
  %6 = load i32, i32* @DEBUG_HW, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %11 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pr_notice(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %16 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %318 [
    i32 139, label %20
    i32 136, label %20
    i32 138, label %58
    i32 137, label %79
    i32 128, label %102
    i32 130, label %102
    i32 132, label %129
    i32 131, label %129
    i32 133, label %156
    i32 129, label %157
    i32 135, label %201
    i32 134, label %257
  ]

20:                                               ; preds = %14, %14
  %21 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %22 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @DIVA_PCI_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 0, i64 %27)
  %29 = call i32 @mdelay(i32 10)
  %30 = load i32, i32* @DIVA_RESET_BIT, align 4
  %31 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %32 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @DIVA_PCI_CTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i32 %30, i64 %37)
  %39 = call i32 @mdelay(i32 10)
  %40 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %41 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, 105
  %46 = call i32 @outb(i32 9, i64 %45)
  %47 = load i32, i32* @DIVA_RESET_BIT, align 4
  %48 = load i32, i32* @DIVA_LED_A, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %51 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @DIVA_PCI_CTRL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 %49, i64 %56)
  br label %319

58:                                               ; preds = %14
  %59 = load i32, i32* @PITA_PARA_SOFTRESET, align 4
  %60 = load i32, i32* @PITA_PARA_MPX_MODE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %63 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PITA_MISC_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %61, i64 %67)
  %69 = call i32 @mdelay(i32 1)
  %70 = load i32, i32* @PITA_PARA_MPX_MODE, align 4
  %71 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %72 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PITA_MISC_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %70, i64 %76)
  %78 = call i32 @mdelay(i32 10)
  br label %319

79:                                               ; preds = %14
  %80 = load i32, i32* @PITA_PARA_SOFTRESET, align 4
  %81 = load i32, i32* @PITA_PARA_MPX_MODE, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %84 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PITA_MISC_REG, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 %82, i64 %88)
  %90 = call i32 @mdelay(i32 1)
  %91 = load i32, i32* @PITA_PARA_MPX_MODE, align 4
  %92 = load i32, i32* @PITA_SER_SOFTRESET, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %95 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PITA_MISC_REG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %93, i64 %99)
  %101 = call i32 @mdelay(i32 10)
  br label %319

102:                                              ; preds = %14, %14
  %103 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %104 = call i32 @ipac_chip_reset(%struct.inf_hw* %103)
  %105 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %106 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %107, align 8
  %109 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %110 = bitcast %struct.inf_hw* %109 to %struct.inf_hw.0*
  %111 = load i32, i32* @IPAC_ACFG, align 4
  %112 = call i32 %108(%struct.inf_hw.0* %110, i32 %111, i32 255)
  %113 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %114 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %115, align 8
  %117 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %118 = bitcast %struct.inf_hw* %117 to %struct.inf_hw.0*
  %119 = load i32, i32* @IPAC_AOE, align 4
  %120 = call i32 %116(%struct.inf_hw.0* %118, i32 %119, i32 0)
  %121 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %122 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %123, align 8
  %125 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %126 = bitcast %struct.inf_hw* %125 to %struct.inf_hw.0*
  %127 = load i32, i32* @IPAC_PCFG, align 4
  %128 = call i32 %124(%struct.inf_hw.0* %126, i32 %127, i32 18)
  br label %319

129:                                              ; preds = %14, %14
  %130 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %131 = call i32 @ipac_chip_reset(%struct.inf_hw* %130)
  %132 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %133 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %134, align 8
  %136 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %137 = bitcast %struct.inf_hw* %136 to %struct.inf_hw.0*
  %138 = load i32, i32* @IPAC_ACFG, align 4
  %139 = call i32 %135(%struct.inf_hw.0* %137, i32 %138, i32 0)
  %140 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %141 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %142, align 8
  %144 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %145 = bitcast %struct.inf_hw* %144 to %struct.inf_hw.0*
  %146 = load i32, i32* @IPAC_AOE, align 4
  %147 = call i32 %143(%struct.inf_hw.0* %145, i32 %146, i32 60)
  %148 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %149 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %150, align 8
  %152 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %153 = bitcast %struct.inf_hw* %152 to %struct.inf_hw.0*
  %154 = load i32, i32* @IPAC_ATX, align 4
  %155 = call i32 %151(%struct.inf_hw.0* %153, i32 %154, i32 255)
  br label %319

156:                                              ; preds = %14
  br label %319

157:                                              ; preds = %14
  %158 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %159 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* @SCT_PLX_RESET_ADDR, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @inw(i64 %164)
  store i32 %165, i32* %3, align 4
  %166 = load i32, i32* @SCT_PLX_RESET_BIT, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %3, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %3, align 4
  %170 = load i32, i32* %3, align 4
  %171 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %172 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* @SCT_PLX_RESET_ADDR, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @outw(i32 %170, i64 %177)
  %179 = call i32 @mdelay(i32 10)
  %180 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %181 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* @SCT_PLX_RESET_ADDR, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @inw(i64 %186)
  store i32 %187, i32* %3, align 4
  %188 = load i32, i32* @SCT_PLX_RESET_BIT, align 4
  %189 = load i32, i32* %3, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %3, align 4
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %193 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* @SCT_PLX_RESET_ADDR, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @outw(i32 %191, i64 %198)
  %200 = call i32 @mdelay(i32 10)
  br label %319

201:                                              ; preds = %14
  %202 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %203 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = load i64, i64* @GAZEL_CNTRL, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i64 @inl(i64 %208)
  store i64 %209, i64* %4, align 8
  %210 = load i64, i64* @GAZEL_RESET_9050, align 8
  %211 = load i64, i64* @GAZEL_RESET, align 8
  %212 = add nsw i64 %210, %211
  %213 = load i64, i64* %4, align 8
  %214 = or i64 %213, %212
  store i64 %214, i64* %4, align 8
  %215 = load i64, i64* %4, align 8
  %216 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %217 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* @GAZEL_CNTRL, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @outl(i64 %215, i64 %222)
  %224 = load i64, i64* @GAZEL_RESET_9050, align 8
  %225 = load i64, i64* @GAZEL_RESET, align 8
  %226 = add nsw i64 %224, %225
  %227 = xor i64 %226, -1
  %228 = load i64, i64* %4, align 8
  %229 = and i64 %228, %227
  store i64 %229, i64* %4, align 8
  %230 = call i32 @mdelay(i32 4)
  %231 = load i64, i64* %4, align 8
  %232 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %233 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* @GAZEL_CNTRL, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @outl(i64 %231, i64 %238)
  %240 = call i32 @mdelay(i32 10)
  %241 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %242 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  store i32 135, i32* %244, align 8
  %245 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %246 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  store i32 31, i32* %250, align 4
  %251 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %252 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i64 0
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  store i32 35, i32* %256, align 4
  br label %319

257:                                              ; preds = %14
  %258 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %259 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = sext i32 %261 to i64
  %263 = load i64, i64* @GAZEL_CNTRL, align 8
  %264 = add nsw i64 %262, %263
  %265 = call i64 @inl(i64 %264)
  store i64 %265, i64* %4, align 8
  %266 = load i64, i64* @GAZEL_RESET_9050, align 8
  %267 = load i64, i64* @GAZEL_RESET, align 8
  %268 = add nsw i64 %266, %267
  %269 = load i64, i64* %4, align 8
  %270 = or i64 %269, %268
  store i64 %270, i64* %4, align 8
  %271 = load i64, i64* %4, align 8
  %272 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %273 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sext i32 %275 to i64
  %277 = load i64, i64* @GAZEL_CNTRL, align 8
  %278 = add nsw i64 %276, %277
  %279 = call i32 @outl(i64 %271, i64 %278)
  %280 = load i64, i64* @GAZEL_RESET_9050, align 8
  %281 = load i64, i64* @GAZEL_RESET, align 8
  %282 = add nsw i64 %280, %281
  %283 = xor i64 %282, -1
  %284 = load i64, i64* %4, align 8
  %285 = and i64 %284, %283
  store i64 %285, i64* %4, align 8
  %286 = call i32 @mdelay(i32 4)
  %287 = load i64, i64* %4, align 8
  %288 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %289 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = sext i32 %291 to i64
  %293 = load i64, i64* @GAZEL_CNTRL, align 8
  %294 = add nsw i64 %292, %293
  %295 = call i32 @outl(i64 %287, i64 %294)
  %296 = call i32 @mdelay(i32 10)
  %297 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %298 = call i32 @ipac_chip_reset(%struct.inf_hw* %297)
  %299 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %300 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %301, align 8
  %303 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %304 = bitcast %struct.inf_hw* %303 to %struct.inf_hw.0*
  %305 = load i32, i32* @IPAC_ACFG, align 4
  %306 = call i32 %302(%struct.inf_hw.0* %304, i32 %305, i32 255)
  %307 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %308 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 1
  %310 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %309, align 8
  %311 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %312 = bitcast %struct.inf_hw* %311 to %struct.inf_hw.0*
  %313 = load i32, i32* @IPAC_AOE, align 4
  %314 = call i32 %310(%struct.inf_hw.0* %312, i32 %313, i32 0)
  %315 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %316 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  store i32 1, i32* %317, align 8
  br label %319

318:                                              ; preds = %14
  br label %322

319:                                              ; preds = %257, %201, %157, %156, %129, %102, %79, %58, %20
  %320 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %321 = call i32 @enable_hwirq(%struct.inf_hw* %320)
  br label %322

322:                                              ; preds = %319, %318
  ret void
}

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ipac_chip_reset(%struct.inf_hw*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i32 @outl(i64, i64) #1

declare dso_local i32 @enable_hwirq(%struct.inf_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
