; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_start_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_start_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.comedi_device = type { i32, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.comedi_cmd, i32 }
%struct.comedi_cmd = type { i32, i32* }

@subpriv = common dso_local global %struct.TYPE_11__* null, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@CHANS_PER_PORT = common dso_local global i32 0, align 4
@PAGE_ENAB = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_12__* null, align 8
@REG_ENAB0 = common dso_local global i64 0, align 8
@PAGE_POL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcmmio_start_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmmio_start_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.comedi_cmd*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load i32, i32* @COMEDI_CB_EOA, align 4
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 8
  store i32 1, i32* %3, align 4
  br label %254

42:                                               ; preds = %23, %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store %struct.comedi_cmd* %46, %struct.comedi_cmd** %13, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %254

55:                                               ; preds = %42
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  store i32 0, i32* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CHANS_PER_PORT, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %9, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CHANS_PER_PORT, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %10, align 4
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %139

82:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %135, %82
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %138

89:                                               ; preds = %83
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CR_CHAN(i32 %96)
  %98 = shl i32 1, %97
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @CR_AREF(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %89
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @CR_RANGE(i32 %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %110, %89
  %121 = phi i1 [ true, %89 ], [ %119, %110 ]
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 1, i32 0
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @CR_CHAN(i32 %130)
  %132 = shl i32 %123, %131
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %120
  %136 = load i32, i32* %8, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %83

138:                                              ; preds = %83
  br label %139

139:                                              ; preds = %138, %55
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 1, %144
  %146 = sub nsw i32 %145, 1
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %146, %151
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  store i32 %155, i32* %159, align 8
  %160 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %161 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, 3
  %164 = call i32 @outb(i32 16, i64 %163)
  %165 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %166 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 15
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %14, align 1
  %170 = load i8, i8* %14, align 1
  %171 = zext i8 %170 to i32
  %172 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %173 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 2
  %176 = call i32 @outb(i32 %171, i64 %175)
  %177 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @PAGE_ENAB, align 4
  %180 = call i32 @switch_page(%struct.comedi_device* %177, i32 %178, i32 %179)
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %249, %139
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %184, %185
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %252

188:                                              ; preds = %182
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %10, align 4
  %197 = sub nsw i32 %195, %196
  %198 = mul nsw i32 %197, 8
  %199 = add nsw i32 %194, %198
  %200 = lshr i32 %189, %199
  %201 = and i32 %200, 255
  store i32 %201, i32* %15, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** @subpriv, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %10, align 4
  %210 = sub nsw i32 %208, %209
  %211 = mul nsw i32 %210, 8
  %212 = add nsw i32 %207, %211
  %213 = lshr i32 %202, %212
  %214 = and i32 %213, 255
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* %15, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @REG_ENAB0, align 8
  %225 = add nsw i64 %223, %224
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %225, %227
  %229 = call i32 @outb(i32 %215, i64 %228)
  %230 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @PAGE_POL, align 4
  %233 = call i32 @switch_page(%struct.comedi_device* %230, i32 %231, i32 %232)
  %234 = load i32, i32* %16, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @REG_ENAB0, align 8
  %244 = add nsw i64 %242, %243
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %244, %246
  %248 = call i32 @outb(i32 %234, i64 %247)
  br label %249

249:                                              ; preds = %188
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %12, align 4
  br label %182

252:                                              ; preds = %182
  br label %253

253:                                              ; preds = %252
  store i32 0, i32* %3, align 4
  br label %254

254:                                              ; preds = %253, %54, %30
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @switch_page(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
