; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_async_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_async_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i64 }

@IRQ_ALL = common dso_local global i32 0, align 4
@IRQ_MASTER = common dso_local global i32 0, align 4
@MGSL_INTERFACE_RTS_EN = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i16 0, align 2
@ASYNC_PARITY_NONE = common dso_local global i64 0, align 8
@BIT9 = common dso_local global i16 0, align 2
@ASYNC_PARITY_ODD = common dso_local global i64 0, align 8
@BIT8 = common dso_local global i16 0, align 2
@BIT4 = common dso_local global i16 0, align 2
@BIT5 = common dso_local global i16 0, align 2
@BIT3 = common dso_local global i16 0, align 2
@HDLC_FLAG_AUTO_CTS = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i16 0, align 2
@TCR = common dso_local global i32 0, align 4
@HDLC_FLAG_AUTO_DCD = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@BIT15 = common dso_local global i16 0, align 2
@BIT14 = common dso_local global i16 0, align 2
@JCR = common dso_local global i32 0, align 4
@SCR = common dso_local global i32 0, align 4
@IRQ_RXBREAK = common dso_local global i32 0, align 4
@IRQ_RXOVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @async_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_mode(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = load i32, i32* @IRQ_ALL, align 4
  %6 = load i32, i32* @IRQ_MASTER, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @slgt_irq_off(%struct.slgt_info* %4, i32 %7)
  %9 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %10 = call i32 @tx_stop(%struct.slgt_info* %9)
  %11 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %12 = call i32 @rx_stop(%struct.slgt_info* %11)
  store i16 16384, i16* %3, align 2
  %13 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MGSL_INTERFACE_RTS_EN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i16, i16* @BIT7, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %3, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %23, %21
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %3, align 2
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %28 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ASYNC_PARITY_NONE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load i16, i16* @BIT9, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %3, align 2
  %37 = zext i16 %36 to i32
  %38 = or i32 %37, %35
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %3, align 2
  %40 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %41 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ASYNC_PARITY_ODD, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load i16, i16* @BIT8, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* %3, align 2
  %50 = zext i16 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %3, align 2
  br label %53

53:                                               ; preds = %46, %33
  br label %54

54:                                               ; preds = %53, %26
  %55 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %56 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %83 [
    i32 6, label %59
    i32 7, label %66
    i32 8, label %73
  ]

59:                                               ; preds = %54
  %60 = load i16, i16* @BIT4, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* %3, align 2
  %63 = zext i16 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %3, align 2
  br label %83

66:                                               ; preds = %54
  %67 = load i16, i16* @BIT5, align 2
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* %3, align 2
  %70 = zext i16 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %3, align 2
  br label %83

73:                                               ; preds = %54
  %74 = load i16, i16* @BIT5, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16, i16* @BIT4, align 2
  %77 = zext i16 %76 to i32
  %78 = add nsw i32 %75, %77
  %79 = load i16, i16* %3, align 2
  %80 = zext i16 %79 to i32
  %81 = or i32 %80, %78
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %3, align 2
  br label %83

83:                                               ; preds = %54, %73, %66, %59
  %84 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %85 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i16, i16* @BIT3, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* %3, align 2
  %93 = zext i16 %92 to i32
  %94 = or i32 %93, %91
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %3, align 2
  br label %96

96:                                               ; preds = %89, %83
  %97 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %98 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @HDLC_FLAG_AUTO_CTS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load i16, i16* @BIT0, align 2
  %106 = zext i16 %105 to i32
  %107 = load i16, i16* %3, align 2
  %108 = zext i16 %107 to i32
  %109 = or i32 %108, %106
  %110 = trunc i32 %109 to i16
  store i16 %110, i16* %3, align 2
  br label %111

111:                                              ; preds = %104, %96
  %112 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %113 = load i32, i32* @TCR, align 4
  %114 = load i16, i16* %3, align 2
  %115 = call i32 @wr_reg16(%struct.slgt_info* %112, i32 %113, i16 zeroext %114)
  store i16 16384, i16* %3, align 2
  %116 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %117 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ASYNC_PARITY_NONE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %111
  %123 = load i16, i16* @BIT9, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, i16* %3, align 2
  %126 = zext i16 %125 to i32
  %127 = or i32 %126, %124
  %128 = trunc i32 %127 to i16
  store i16 %128, i16* %3, align 2
  %129 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %130 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ASYNC_PARITY_ODD, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %122
  %136 = load i16, i16* @BIT8, align 2
  %137 = zext i16 %136 to i32
  %138 = load i16, i16* %3, align 2
  %139 = zext i16 %138 to i32
  %140 = or i32 %139, %137
  %141 = trunc i32 %140 to i16
  store i16 %141, i16* %3, align 2
  br label %142

142:                                              ; preds = %135, %122
  br label %143

143:                                              ; preds = %142, %111
  %144 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %145 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  switch i32 %147, label %172 [
    i32 6, label %148
    i32 7, label %155
    i32 8, label %162
  ]

148:                                              ; preds = %143
  %149 = load i16, i16* @BIT4, align 2
  %150 = zext i16 %149 to i32
  %151 = load i16, i16* %3, align 2
  %152 = zext i16 %151 to i32
  %153 = or i32 %152, %150
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %3, align 2
  br label %172

155:                                              ; preds = %143
  %156 = load i16, i16* @BIT5, align 2
  %157 = zext i16 %156 to i32
  %158 = load i16, i16* %3, align 2
  %159 = zext i16 %158 to i32
  %160 = or i32 %159, %157
  %161 = trunc i32 %160 to i16
  store i16 %161, i16* %3, align 2
  br label %172

162:                                              ; preds = %143
  %163 = load i16, i16* @BIT5, align 2
  %164 = zext i16 %163 to i32
  %165 = load i16, i16* @BIT4, align 2
  %166 = zext i16 %165 to i32
  %167 = add nsw i32 %164, %166
  %168 = load i16, i16* %3, align 2
  %169 = zext i16 %168 to i32
  %170 = or i32 %169, %167
  %171 = trunc i32 %170 to i16
  store i16 %171, i16* %3, align 2
  br label %172

172:                                              ; preds = %143, %162, %155, %148
  %173 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %174 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @HDLC_FLAG_AUTO_DCD, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %172
  %181 = load i16, i16* @BIT0, align 2
  %182 = zext i16 %181 to i32
  %183 = load i16, i16* %3, align 2
  %184 = zext i16 %183 to i32
  %185 = or i32 %184, %182
  %186 = trunc i32 %185 to i16
  store i16 %186, i16* %3, align 2
  br label %187

187:                                              ; preds = %180, %172
  %188 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %189 = load i32, i32* @RCR, align 4
  %190 = load i16, i16* %3, align 2
  %191 = call i32 @wr_reg16(%struct.slgt_info* %188, i32 %189, i16 zeroext %190)
  %192 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %193 = load i32, i32* @CCR, align 4
  %194 = call i32 @wr_reg8(%struct.slgt_info* %192, i32 %193, i32 105)
  %195 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %196 = call i32 @msc_set_vcr(%struct.slgt_info* %195)
  %197 = load i16, i16* @BIT15, align 2
  %198 = zext i16 %197 to i32
  %199 = load i16, i16* @BIT14, align 2
  %200 = zext i16 %199 to i32
  %201 = add nsw i32 %198, %200
  %202 = load i16, i16* @BIT0, align 2
  %203 = zext i16 %202 to i32
  %204 = add nsw i32 %201, %203
  %205 = trunc i32 %204 to i16
  store i16 %205, i16* %3, align 2
  %206 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %207 = load i32, i32* @JCR, align 4
  %208 = call zeroext i16 @rd_reg32(%struct.slgt_info* %206, i32 %207)
  %209 = zext i16 %208 to i32
  %210 = load i16, i16* @BIT8, align 2
  %211 = zext i16 %210 to i32
  %212 = and i32 %209, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %255

214:                                              ; preds = %187
  %215 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %216 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %255

220:                                              ; preds = %214
  %221 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %222 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %225 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %227, 16
  %229 = icmp slt i32 %223, %228
  br i1 %229, label %241, label %230

230:                                              ; preds = %220
  %231 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %232 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %235 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %237, 16
  %239 = srem i32 %233, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %255

241:                                              ; preds = %230, %220
  %242 = load i16, i16* @BIT3, align 2
  %243 = zext i16 %242 to i32
  %244 = load i16, i16* %3, align 2
  %245 = zext i16 %244 to i32
  %246 = or i32 %245, %243
  %247 = trunc i32 %246 to i16
  store i16 %247, i16* %3, align 2
  %248 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %249 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %250 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %252, 8
  %254 = call i32 @set_rate(%struct.slgt_info* %248, i32 %253)
  br label %263

255:                                              ; preds = %230, %214, %187
  %256 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %257 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %258 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = mul nsw i32 %260, 16
  %262 = call i32 @set_rate(%struct.slgt_info* %256, i32 %261)
  br label %263

263:                                              ; preds = %255, %241
  %264 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %265 = load i32, i32* @SCR, align 4
  %266 = load i16, i16* %3, align 2
  %267 = call i32 @wr_reg16(%struct.slgt_info* %264, i32 %265, i16 zeroext %266)
  %268 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %269 = load i32, i32* @IRQ_RXBREAK, align 4
  %270 = load i32, i32* @IRQ_RXOVER, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @slgt_irq_on(%struct.slgt_info* %268, i32 %271)
  %273 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %274 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %263
  %279 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %280 = call i32 @enable_loopback(%struct.slgt_info* %279)
  br label %281

281:                                              ; preds = %278, %263
  ret void
}

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i32) #1

declare dso_local i32 @tx_stop(%struct.slgt_info*) #1

declare dso_local i32 @rx_stop(%struct.slgt_info*) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @wr_reg8(%struct.slgt_info*, i32, i32) #1

declare dso_local i32 @msc_set_vcr(%struct.slgt_info*) #1

declare dso_local zeroext i16 @rd_reg32(%struct.slgt_info*, i32) #1

declare dso_local i32 @set_rate(%struct.slgt_info*, i32) #1

declare dso_local i32 @slgt_irq_on(%struct.slgt_info*, i32) #1

declare dso_local i32 @enable_loopback(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
