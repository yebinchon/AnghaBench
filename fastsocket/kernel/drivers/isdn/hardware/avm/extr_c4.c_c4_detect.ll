; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_c4.c_c4_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_c4.c_c4_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@PCI_OUT_INT_MASK = common dso_local global i64 0, align 8
@DOORBELL = common dso_local global i64 0, align 8
@DBELL_RESET_ARM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DBELL_ADDR = common dso_local global i32 0, align 4
@DC21285_ARMCSR_BASE = common dso_local global i32 0, align 4
@CHAN_1_CONTROL = common dso_local global i32 0, align 4
@CHAN_2_CONTROL = common dso_local global i32 0, align 4
@MAILBOX_0 = common dso_local global i64 0, align 8
@DBELL_SA_MASK = common dso_local global i32 0, align 4
@DBELL_PCI_MASK = common dso_local global i32 0, align 4
@SA_CONTROL = common dso_local global i32 0, align 4
@SA_CTL_ALLRIGHT = common dso_local global i32 0, align 4
@XBUS_CYCLE = common dso_local global i32 0, align 4
@INIT_XBUS_CYCLE = common dso_local global i32 0, align 4
@XBUS_STROBE = common dso_local global i32 0, align 4
@INIT_XBUS_STROBE = common dso_local global i32 0, align 4
@DRAM_TIMING = common dso_local global i32 0, align 4
@DC21285_DRAM_A0MR = common dso_local global i32 0, align 4
@DC21285_DRAM_A1MR = common dso_local global i32 0, align 4
@DC21285_DRAM_A2MR = common dso_local global i32 0, align 4
@DC21285_DRAM_A3MR = common dso_local global i32 0, align 4
@CAS_OFFSET = common dso_local global i32 0, align 4
@DRAM_TIMING_DEF = common dso_local global i32 0, align 4
@DRAM_ADDR_SIZE_0 = common dso_local global i32 0, align 4
@DRAM_AD_SZ_DEF0 = common dso_local global i32 0, align 4
@DRAM_ADDR_SIZE_1 = common dso_local global i32 0, align 4
@DRAM_AD_SZ_NULL = common dso_local global i32 0, align 4
@DRAM_ADDR_SIZE_2 = common dso_local global i32 0, align 4
@DRAM_ADDR_SIZE_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @c4_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4_detect(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PCI_OUT_INT_MASK, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @c4outmeml(i64 %10, i32 12)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_OUT_INT_MASK, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @c4inmeml(i64 %16)
  %18 = icmp ne i32 %17, 12
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %343

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DOORBELL, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @DBELL_RESET_ARM, align 4
  %27 = call i32 @c4outmeml(i64 %25, i32 %26)
  %28 = load i32, i32* @jiffies, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %29, 10
  %31 = add nsw i32 %28, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %47, %20
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DOORBELL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @c4inmeml(i64 %38)
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load i32, i32* @jiffies, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @time_before(i32 %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 2, i32* %2, align 4
  br label %343

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DOORBELL, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* @DBELL_ADDR, align 4
  %54 = call i32 @c4outmeml(i64 %52, i32 %53)
  %55 = call i32 (...) @mb()
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %59 = load i32, i32* @CHAN_1_CONTROL, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i64 @c4_poke(%struct.TYPE_5__* %57, i32 %60, i32 0)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %64 = load i32, i32* @CHAN_2_CONTROL, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i64 @c4_poke(%struct.TYPE_5__* %62, i32 %65, i32 0)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MAILBOX_0, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @c4outmeml(i64 %71, i32 1437226410)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MAILBOX_0, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @c4inmeml(i64 %77)
  %79 = icmp ne i32 %78, 1437226410
  br i1 %79, label %80, label %81

80:                                               ; preds = %56
  store i32 3, i32* %2, align 4
  br label %343

81:                                               ; preds = %56
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MAILBOX_0, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @c4outmeml(i64 %86, i32 -1437226411)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MAILBOX_0, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @c4inmeml(i64 %92)
  %94 = icmp ne i32 %93, -1437226411
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  store i32 4, i32* %2, align 4
  br label %343

96:                                               ; preds = %81
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %99 = load i32, i32* @DBELL_SA_MASK, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i64 @c4_poke(%struct.TYPE_5__* %97, i32 %100, i32 0)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 5, i32* %2, align 4
  br label %343

104:                                              ; preds = %96
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %107 = load i32, i32* @DBELL_PCI_MASK, align 4
  %108 = add nsw i32 %106, %107
  %109 = call i64 @c4_poke(%struct.TYPE_5__* %105, i32 %108, i32 0)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 6, i32* %2, align 4
  br label %343

112:                                              ; preds = %104
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %115 = load i32, i32* @SA_CONTROL, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* @SA_CTL_ALLRIGHT, align 4
  %118 = call i64 @c4_poke(%struct.TYPE_5__* %113, i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  store i32 7, i32* %2, align 4
  br label %343

121:                                              ; preds = %112
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %124 = load i32, i32* @XBUS_CYCLE, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* @INIT_XBUS_CYCLE, align 4
  %127 = call i64 @c4_poke(%struct.TYPE_5__* %122, i32 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i32 8, i32* %2, align 4
  br label %343

130:                                              ; preds = %121
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %133 = load i32, i32* @XBUS_STROBE, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* @INIT_XBUS_STROBE, align 4
  %136 = call i64 @c4_poke(%struct.TYPE_5__* %131, i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 8, i32* %2, align 4
  br label %343

139:                                              ; preds = %130
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %142 = load i32, i32* @DRAM_TIMING, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i64 @c4_poke(%struct.TYPE_5__* %140, i32 %143, i32 0)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  store i32 9, i32* %2, align 4
  br label %343

147:                                              ; preds = %139
  %148 = call i32 @mdelay(i32 1)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = load i32, i32* @DC21285_DRAM_A0MR, align 4
  %151 = call i64 @c4_peek(%struct.TYPE_5__* %149, i32 %150, i64* %5)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 10, i32* %2, align 4
  br label %343

154:                                              ; preds = %147
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %156 = load i32, i32* @DC21285_DRAM_A1MR, align 4
  %157 = call i64 @c4_peek(%struct.TYPE_5__* %155, i32 %156, i64* %5)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  store i32 11, i32* %2, align 4
  br label %343

160:                                              ; preds = %154
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = load i32, i32* @DC21285_DRAM_A2MR, align 4
  %163 = call i64 @c4_peek(%struct.TYPE_5__* %161, i32 %162, i64* %5)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 12, i32* %2, align 4
  br label %343

166:                                              ; preds = %160
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %168 = load i32, i32* @DC21285_DRAM_A3MR, align 4
  %169 = call i64 @c4_peek(%struct.TYPE_5__* %167, i32 %168, i64* %5)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 13, i32* %2, align 4
  br label %343

172:                                              ; preds = %166
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %174 = load i32, i32* @DC21285_DRAM_A0MR, align 4
  %175 = load i32, i32* @CAS_OFFSET, align 4
  %176 = add nsw i32 %174, %175
  %177 = call i64 @c4_poke(%struct.TYPE_5__* %173, i32 %176, i32 0)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  store i32 14, i32* %2, align 4
  br label %343

180:                                              ; preds = %172
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %182 = load i32, i32* @DC21285_DRAM_A1MR, align 4
  %183 = load i32, i32* @CAS_OFFSET, align 4
  %184 = add nsw i32 %182, %183
  %185 = call i64 @c4_poke(%struct.TYPE_5__* %181, i32 %184, i32 0)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  store i32 15, i32* %2, align 4
  br label %343

188:                                              ; preds = %180
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %190 = load i32, i32* @DC21285_DRAM_A2MR, align 4
  %191 = load i32, i32* @CAS_OFFSET, align 4
  %192 = add nsw i32 %190, %191
  %193 = call i64 @c4_poke(%struct.TYPE_5__* %189, i32 %192, i32 0)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  store i32 16, i32* %2, align 4
  br label %343

196:                                              ; preds = %188
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %198 = load i32, i32* @DC21285_DRAM_A3MR, align 4
  %199 = load i32, i32* @CAS_OFFSET, align 4
  %200 = add nsw i32 %198, %199
  %201 = call i64 @c4_poke(%struct.TYPE_5__* %197, i32 %200, i32 0)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  store i32 17, i32* %2, align 4
  br label %343

204:                                              ; preds = %196
  %205 = call i32 @mdelay(i32 1)
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %207 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %208 = load i32, i32* @DRAM_TIMING, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* @DRAM_TIMING_DEF, align 4
  %211 = call i64 @c4_poke(%struct.TYPE_5__* %206, i32 %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  store i32 18, i32* %2, align 4
  br label %343

214:                                              ; preds = %204
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %216 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %217 = load i32, i32* @DRAM_ADDR_SIZE_0, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* @DRAM_AD_SZ_DEF0, align 4
  %220 = call i64 @c4_poke(%struct.TYPE_5__* %215, i32 %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  store i32 19, i32* %2, align 4
  br label %343

223:                                              ; preds = %214
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %226 = load i32, i32* @DRAM_ADDR_SIZE_1, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32, i32* @DRAM_AD_SZ_NULL, align 4
  %229 = call i64 @c4_poke(%struct.TYPE_5__* %224, i32 %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  store i32 20, i32* %2, align 4
  br label %343

232:                                              ; preds = %223
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %234 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %235 = load i32, i32* @DRAM_ADDR_SIZE_2, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* @DRAM_AD_SZ_NULL, align 4
  %238 = call i64 @c4_poke(%struct.TYPE_5__* %233, i32 %236, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  store i32 21, i32* %2, align 4
  br label %343

241:                                              ; preds = %232
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %243 = load i32, i32* @DC21285_ARMCSR_BASE, align 4
  %244 = load i32, i32* @DRAM_ADDR_SIZE_3, align 4
  %245 = add nsw i32 %243, %244
  %246 = load i32, i32* @DRAM_AD_SZ_NULL, align 4
  %247 = call i64 @c4_poke(%struct.TYPE_5__* %242, i32 %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  store i32 22, i32* %2, align 4
  br label %343

250:                                              ; preds = %241
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %252 = call i64 @c4_poke(%struct.TYPE_5__* %251, i32 0, i32 286331153)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %266, label %254

254:                                              ; preds = %250
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %256 = call i64 @c4_poke(%struct.TYPE_5__* %255, i32 4194304, i32 572662306)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %266, label %258

258:                                              ; preds = %254
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %260 = call i64 @c4_poke(%struct.TYPE_5__* %259, i32 8388608, i32 858993459)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %264 = call i64 @c4_poke(%struct.TYPE_5__* %263, i32 12582912, i32 1145324612)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %262, %258, %254, %250
  store i32 23, i32* %2, align 4
  br label %343

267:                                              ; preds = %262
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %269 = call i64 @c4_peek(%struct.TYPE_5__* %268, i32 0, i64* %5)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %295, label %271

271:                                              ; preds = %267
  %272 = load i64, i64* %5, align 8
  %273 = icmp ne i64 %272, 286331153
  br i1 %273, label %295, label %274

274:                                              ; preds = %271
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %276 = call i64 @c4_peek(%struct.TYPE_5__* %275, i32 4194304, i64* %5)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %295, label %278

278:                                              ; preds = %274
  %279 = load i64, i64* %5, align 8
  %280 = icmp ne i64 %279, 572662306
  br i1 %280, label %295, label %281

281:                                              ; preds = %278
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %283 = call i64 @c4_peek(%struct.TYPE_5__* %282, i32 8388608, i64* %5)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %295, label %285

285:                                              ; preds = %281
  %286 = load i64, i64* %5, align 8
  %287 = icmp ne i64 %286, 858993459
  br i1 %287, label %295, label %288

288:                                              ; preds = %285
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %290 = call i64 @c4_peek(%struct.TYPE_5__* %289, i32 12582912, i64* %5)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %288
  %293 = load i64, i64* %5, align 8
  %294 = icmp ne i64 %293, 1145324612
  br i1 %294, label %295, label %296

295:                                              ; preds = %292, %288, %285, %281, %278, %274, %271, %267
  store i32 24, i32* %2, align 4
  br label %343

296:                                              ; preds = %292
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %298 = call i64 @c4_poke(%struct.TYPE_5__* %297, i32 0, i32 1431655765)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %312, label %300

300:                                              ; preds = %296
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %302 = call i64 @c4_poke(%struct.TYPE_5__* %301, i32 4194304, i32 1717986918)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %312, label %304

304:                                              ; preds = %300
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %306 = call i64 @c4_poke(%struct.TYPE_5__* %305, i32 8388608, i32 2004318071)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %312, label %308

308:                                              ; preds = %304
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %310 = call i64 @c4_poke(%struct.TYPE_5__* %309, i32 12582912, i32 -2004318072)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %308, %304, %300, %296
  store i32 25, i32* %2, align 4
  br label %343

313:                                              ; preds = %308
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %315 = call i64 @c4_peek(%struct.TYPE_5__* %314, i32 0, i64* %5)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %341, label %317

317:                                              ; preds = %313
  %318 = load i64, i64* %5, align 8
  %319 = icmp ne i64 %318, 1431655765
  br i1 %319, label %341, label %320

320:                                              ; preds = %317
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %322 = call i64 @c4_peek(%struct.TYPE_5__* %321, i32 4194304, i64* %5)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %341, label %324

324:                                              ; preds = %320
  %325 = load i64, i64* %5, align 8
  %326 = icmp ne i64 %325, 1717986918
  br i1 %326, label %341, label %327

327:                                              ; preds = %324
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %329 = call i64 @c4_peek(%struct.TYPE_5__* %328, i32 8388608, i64* %5)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %341, label %331

331:                                              ; preds = %327
  %332 = load i64, i64* %5, align 8
  %333 = icmp ne i64 %332, 2004318071
  br i1 %333, label %341, label %334

334:                                              ; preds = %331
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %336 = call i64 @c4_peek(%struct.TYPE_5__* %335, i32 12582912, i64* %5)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %341, label %338

338:                                              ; preds = %334
  %339 = load i64, i64* %5, align 8
  %340 = icmp ne i64 %339, 2290649224
  br i1 %340, label %341, label %342

341:                                              ; preds = %338, %334, %331, %327, %324, %320, %317, %313
  store i32 26, i32* %2, align 4
  br label %343

342:                                              ; preds = %338
  store i32 0, i32* %2, align 4
  br label %343

343:                                              ; preds = %342, %341, %312, %295, %266, %249, %240, %231, %222, %213, %203, %195, %187, %179, %171, %165, %159, %153, %146, %138, %129, %120, %111, %103, %95, %80, %46, %19
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local i32 @c4outmeml(i64, i32) #1

declare dso_local i32 @c4inmeml(i64) #1

declare dso_local i32 @time_before(i32, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @c4_poke(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @c4_peek(%struct.TYPE_5__*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
