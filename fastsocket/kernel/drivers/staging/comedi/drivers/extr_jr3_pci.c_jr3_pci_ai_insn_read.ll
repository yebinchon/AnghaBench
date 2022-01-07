; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.jr3_pci_subdev_private* }
%struct.jr3_pci_subdev_private = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_insn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@state_jr3_done = common dso_local global i64 0, align 8
@watch_dog = common dso_local global i32 0, align 4
@watch_dog2 = common dso_local global i32 0, align 4
@sensor_change = common dso_local global i32 0, align 4
@state_jr3_poll = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @jr3_pci_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jr3_pci_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.jr3_pci_subdev_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %17, align 8
  store %struct.jr3_pci_subdev_private* %18, %struct.jr3_pci_subdev_private** %10, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %24 = icmp eq %struct.jr3_pci_subdev_private* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 57
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %246

31:                                               ; preds = %25
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %36 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @state_jr3_done, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %53, label %40

40:                                               ; preds = %31
  %41 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %42 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = call i32 @get_u16(i32* %44)
  %46 = load i32, i32* @watch_dog, align 4
  %47 = load i32, i32* @watch_dog2, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @sensor_change, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %45, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %40, %31
  %54 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %55 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @state_jr3_done, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* @state_jr3_poll, align 8
  %61 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %62 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %40
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %242, %66
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %245

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 56
  br i1 %75, label %76, label %189

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = srem i32 %77, 8
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sdiv i32 %79, 8
  store i32 %80, i32* %14, align 4
  %81 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %82 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @state_jr3_done, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 0, i32* %90, align 4
  br label %188

91:                                               ; preds = %76
  store i32 0, i32* %15, align 4
  %92 = load i32, i32* %13, align 4
  switch i32 %92, label %181 [
    i32 0, label %93
    i32 1, label %104
    i32 2, label %115
    i32 3, label %126
    i32 4, label %137
    i32 5, label %148
    i32 6, label %159
    i32 7, label %170
  ]

93:                                               ; preds = %91
  %94 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %95 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 7
  %103 = call i32 @get_s16(i32* %102)
  store i32 %103, i32* %15, align 4
  br label %181

104:                                              ; preds = %91
  %105 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %106 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 6
  %114 = call i32 @get_s16(i32* %113)
  store i32 %114, i32* %15, align 4
  br label %181

115:                                              ; preds = %91
  %116 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %117 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 5
  %125 = call i32 @get_s16(i32* %124)
  store i32 %125, i32* %15, align 4
  br label %181

126:                                              ; preds = %91
  %127 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %128 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = call i32 @get_s16(i32* %135)
  store i32 %136, i32* %15, align 4
  br label %181

137:                                              ; preds = %91
  %138 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %139 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %138, i32 0, i32 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = call i32 @get_s16(i32* %146)
  store i32 %147, i32* %15, align 4
  br label %181

148:                                              ; preds = %91
  %149 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %150 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = call i32 @get_s16(i32* %157)
  store i32 %158, i32* %15, align 4
  br label %181

159:                                              ; preds = %91
  %160 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %161 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = call i32 @get_s16(i32* %168)
  store i32 %169, i32* %15, align 4
  br label %181

170:                                              ; preds = %91
  %171 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %172 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = call i32 @get_s16(i32* %179)
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %91, %170, %159, %148, %137, %126, %115, %104, %93
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 16384
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %183, i32* %187, align 4
  br label %188

188:                                              ; preds = %181, %86
  br label %241

189:                                              ; preds = %73
  %190 = load i32, i32* %11, align 4
  %191 = icmp eq i32 %190, 56
  br i1 %191, label %192, label %214

192:                                              ; preds = %189
  %193 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %194 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @state_jr3_done, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %192
  %199 = load i32*, i32** %8, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 0, i32* %202, align 4
  br label %213

203:                                              ; preds = %192
  %204 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %205 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = call i32 @get_u16(i32* %207)
  %209 = load i32*, i32** %8, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %208, i32* %212, align 4
  br label %213

213:                                              ; preds = %203, %198
  br label %240

214:                                              ; preds = %189
  %215 = load i32, i32* %11, align 4
  %216 = icmp eq i32 %215, 57
  br i1 %216, label %217, label %239

217:                                              ; preds = %214
  %218 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %219 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @state_jr3_done, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 0, i32* %227, align 4
  br label %238

228:                                              ; preds = %217
  %229 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %10, align 8
  %230 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %229, i32 0, i32 1
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = call i32 @get_u16(i32* %232)
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %233, i32* %237, align 4
  br label %238

238:                                              ; preds = %228, %223
  br label %239

239:                                              ; preds = %238, %214
  br label %240

240:                                              ; preds = %239, %213
  br label %241

241:                                              ; preds = %240, %188
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %67

245:                                              ; preds = %67
  br label %246

246:                                              ; preds = %245, %28
  %247 = load i32, i32* %9, align 4
  ret i32 %247
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @get_u16(i32*) #1

declare dso_local i32 @get_s16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
