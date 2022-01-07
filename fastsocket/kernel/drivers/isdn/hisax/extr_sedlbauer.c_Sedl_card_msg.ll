; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sedlbauer.c_Sedl_card_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sedlbauer.c_Sedl_card_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__, i32, i32 (%struct.IsdnCardState*, i32, i32)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@SEDL_BUS_PCI = common dso_local global i32 0, align 4
@SEDL_CHIP_ISAC_ISAR = common dso_local global i32 0, align 4
@ISAR_IRQBIT = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@ISAC_CMDR = common dso_local global i32 0, align 4
@SEDL_SPEEDFAX_PYRAMID = common dso_local global i32 0, align 4
@SEDL_ISAR_PCI_LED2 = common dso_local global i32 0, align 4
@SEDL_ISAR_PCI_LED1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, i32, i8*)* @Sedl_card_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Sedl_card_msg(%struct.IsdnCardState* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %275 [
    i32 131, label %10
    i32 132, label %21
    i32 133, label %107
    i32 130, label %176
    i32 129, label %177
    i32 128, label %227
  ]

10:                                               ; preds = %3
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = call i32 @reset_sedlbauer(%struct.IsdnCardState* %15)
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %276

21:                                               ; preds = %3
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SEDL_BUS_PCI, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %31 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 5
  %36 = call i32 @byteout(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %39 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SEDL_CHIP_ISAC_ISAR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %104

45:                                               ; preds = %37
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 0
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @spin_lock_irqsave(i32* %47, i32 %48)
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %51 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ISAR_IRQBIT, align 4
  %61 = call i32 @writereg(i32 %54, i32 %59, i32 %60, i32 0)
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %63 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ISAC_MASK, align 4
  %73 = call i32 @writereg(i32 %66, i32 %71, i32 %72, i32 255)
  %74 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %75 = call i32 @reset_sedlbauer(%struct.IsdnCardState* %74)
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %82 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ISAR_IRQBIT, align 4
  %87 = call i32 @writereg(i32 %80, i32 %85, i32 %86, i32 0)
  %88 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %89 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ISAC_MASK, align 4
  %99 = call i32 @writereg(i32 %92, i32 %97, i32 %98, i32 255)
  %100 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %101 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %100, i32 0, i32 0
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %45, %37
  %105 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %106 = call i32 @release_io_sedlbauer(%struct.IsdnCardState* %105)
  store i32 0, i32* %4, align 4
  br label %276

107:                                              ; preds = %3
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %109 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %108, i32 0, i32 0
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @spin_lock_irqsave(i32* %109, i32 %110)
  %112 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %113 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SEDL_BUS_PCI, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %107
  %120 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %121 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 5
  %126 = call i32 @byteout(i32 %125, i32 2)
  br label %127

127:                                              ; preds = %119, %107
  %128 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %129 = call i32 @reset_sedlbauer(%struct.IsdnCardState* %128)
  %130 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %131 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SEDL_CHIP_ISAC_ISAR, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %168

137:                                              ; preds = %127
  %138 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %139 = call i32 @clear_pending_isac_ints(%struct.IsdnCardState* %138)
  %140 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %141 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %146 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ISAR_IRQBIT, align 4
  %151 = call i32 @writereg(i32 %144, i32 %149, i32 %150, i32 0)
  %152 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %153 = call i32 @initisac(%struct.IsdnCardState* %152)
  %154 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %155 = call i32 @initisar(%struct.IsdnCardState* %154)
  %156 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %157 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %156, i32 0, i32 3
  %158 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %157, align 8
  %159 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %160 = load i32, i32* @ISAC_MASK, align 4
  %161 = call i32 %158(%struct.IsdnCardState* %159, i32 %160, i32 0)
  %162 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %163 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %162, i32 0, i32 3
  %164 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %163, align 8
  %165 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %166 = load i32, i32* @ISAC_CMDR, align 4
  %167 = call i32 %164(%struct.IsdnCardState* %165, i32 %166, i32 65)
  br label %171

168:                                              ; preds = %127
  %169 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %170 = call i32 @inithscxisac(%struct.IsdnCardState* %169, i32 3)
  br label %171

171:                                              ; preds = %168, %137
  %172 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %173 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %172, i32 0, i32 0
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i32 %174)
  store i32 0, i32* %4, align 4
  br label %276

176:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %276

177:                                              ; preds = %3
  %178 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %179 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @SEDL_SPEEDFAX_PYRAMID, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %276

184:                                              ; preds = %177
  %185 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %186 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %185, i32 0, i32 0
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @spin_lock_irqsave(i32* %186, i32 %187)
  %189 = load i8*, i8** %7, align 8
  %190 = ptrtoint i8* %189 to i64
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %184
  %193 = load i32, i32* @SEDL_ISAR_PCI_LED2, align 4
  %194 = xor i32 %193, -1
  %195 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %196 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, %194
  store i32 %200, i32* %198, align 4
  br label %210

201:                                              ; preds = %184
  %202 = load i32, i32* @SEDL_ISAR_PCI_LED1, align 4
  %203 = xor i32 %202, -1
  %204 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %205 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %203
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %201, %192
  %211 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %212 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 3
  %217 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %218 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @byteout(i32 %216, i32 %221)
  %223 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %224 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %223, i32 0, i32 0
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @spin_unlock_irqrestore(i32* %224, i32 %225)
  br label %275

227:                                              ; preds = %3
  %228 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %229 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @SEDL_SPEEDFAX_PYRAMID, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  store i32 0, i32* %4, align 4
  br label %276

234:                                              ; preds = %227
  %235 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %236 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %235, i32 0, i32 0
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @spin_lock_irqsave(i32* %236, i32 %237)
  %239 = load i8*, i8** %7, align 8
  %240 = ptrtoint i8* %239 to i64
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %234
  %243 = load i32, i32* @SEDL_ISAR_PCI_LED2, align 4
  %244 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %245 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %243
  store i32 %249, i32* %247, align 4
  br label %258

250:                                              ; preds = %234
  %251 = load i32, i32* @SEDL_ISAR_PCI_LED1, align 4
  %252 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %253 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %251
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %250, %242
  %259 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %260 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 3
  %265 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %266 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @byteout(i32 %264, i32 %269)
  %271 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %272 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %271, i32 0, i32 0
  %273 = load i32, i32* %8, align 4
  %274 = call i32 @spin_unlock_irqrestore(i32* %272, i32 %273)
  br label %275

275:                                              ; preds = %3, %258, %210
  store i32 0, i32* %4, align 4
  br label %276

276:                                              ; preds = %275, %233, %183, %176, %171, %104, %10
  %277 = load i32, i32* %4, align 4
  ret i32 %277
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_sedlbauer(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @byteout(i32, i32) #1

declare dso_local i32 @writereg(i32, i32, i32, i32) #1

declare dso_local i32 @release_io_sedlbauer(%struct.IsdnCardState*) #1

declare dso_local i32 @clear_pending_isac_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @initisac(%struct.IsdnCardState*) #1

declare dso_local i32 @initisar(%struct.IsdnCardState*) #1

declare dso_local i32 @inithscxisac(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
