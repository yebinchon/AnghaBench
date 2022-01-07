; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32*, i32, i32, i32, i32, i64, i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i32, i32, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@PCI224_DACCEN = common dso_local global i64 0, align 8
@PCI224_DACCON_TRIG_NONE = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFOINTR_NHALF = common dso_local global i32 0, align 4
@PCI224_DACCON_POLAR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_VREF_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_TRIG_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFOINTR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFORESET = common dso_local global i32 0, align 4
@PCI224_DACCON = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@TIMEBASE_10MHZ = common dso_local global i32 0, align 4
@GAT_VCC = common dso_local global i32 0, align 4
@PCI224_ZGAT_SCE = common dso_local global i64 0, align 8
@CLK_10MHZ = common dso_local global i32 0, align 4
@PCI224_ZCLK_SCE = common dso_local global i64 0, align 8
@PCI224_Z2_CT0 = common dso_local global i64 0, align 8
@CLK_OUTNM1 = common dso_local global i32 0, align 4
@pci224_ao_inttrig_start = common dso_local global i32 0, align 4
@PCI224_INTR_EXT = common dso_local global i32 0, align 4
@PCI224_INT_SCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci224_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci224_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %6, align 8
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %321

34:                                               ; preds = %26
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %90, %34
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %93

43:                                               ; preds = %37
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @CR_CHAN(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 1, %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %79, %43
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @CR_CHAN(i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %58

82:                                               ; preds = %58
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %37

93:                                               ; preds = %37
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PCI224_DACCEN, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outw(i32 %96, i64 %101)
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 7
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @CR_RANGE(i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PCI224_DACCON_TRIG_NONE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @PCI224_DACCON_FIFOINTR_NHALF, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @PCI224_DACCON_POLAR_MASK, align 4
  %124 = load i32, i32* @PCI224_DACCON_VREF_MASK, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @PCI224_DACCON_TRIG_MASK, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @PCI224_DACCON_FIFOINTR_MASK, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @COMBINE(i32 %111, i32 %122, i32 %129)
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @PCI224_DACCON_FIFORESET, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %139 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PCI224_DACCON, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @outw(i32 %137, i64 %142)
  %144 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @TRIG_TIMER, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %263

149:                                              ; preds = %93
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %16, align 4
  %153 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %154 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %157 = and i32 %155, %156
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  switch i32 %158, label %160 [
    i32 129, label %159
    i32 130, label %163
    i32 128, label %164
  ]

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %149, %159
  %161 = load i32, i32* @TIMEBASE_10MHZ, align 4
  %162 = sdiv i32 %161, 2
  store i32 %162, i32* %15, align 4
  br label %167

163:                                              ; preds = %149
  store i32 0, i32* %15, align 4
  br label %167

164:                                              ; preds = %149
  %165 = load i32, i32* @TIMEBASE_10MHZ, align 4
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %164, %163, %160
  %168 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %169 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @TIMEBASE_10MHZ, align 4
  %172 = udiv i32 %170, %171
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %175 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @TIMEBASE_10MHZ, align 4
  %178 = urem i32 %176, %177
  %179 = add i32 %173, %178
  %180 = load i32, i32* @TIMEBASE_10MHZ, align 4
  %181 = udiv i32 %179, %180
  %182 = load i32, i32* %14, align 4
  %183 = add i32 %182, %181
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp ule i32 %184, 65536
  br i1 %185, label %186, label %193

186:                                              ; preds = %167
  %187 = load i32, i32* %14, align 4
  %188 = icmp ult i32 %187, 2
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 2, i32* %14, align 4
  br label %190

190:                                              ; preds = %189, %186
  %191 = load i32, i32* %14, align 4
  %192 = and i32 %191, 65535
  store i32 %192, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %203

193:                                              ; preds = %167
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %13, align 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* @TIMEBASE_10MHZ, align 4
  %201 = load i32, i32* %17, align 4
  %202 = call i32 @pci224_cascade_ns_to_timer(i32 %200, i32* %13, i32* %14, i32* %16, i32 %201)
  br label %203

203:                                              ; preds = %193, %190
  %204 = load i32, i32* @GAT_VCC, align 4
  %205 = call i32 @GAT_CONFIG(i32 0, i32 %204)
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 8
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @PCI224_ZGAT_SCE, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @outb(i32 %205, i64 %210)
  %212 = load i32, i32* %13, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %223

214:                                              ; preds = %203
  %215 = load i32, i32* @CLK_10MHZ, align 4
  %216 = call i32 @CLK_CONFIG(i32 0, i32 %215)
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 8
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @PCI224_ZCLK_SCE, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32 @outb(i32 %216, i64 %221)
  br label %255

223:                                              ; preds = %203
  %224 = load i32, i32* @GAT_VCC, align 4
  %225 = call i32 @GAT_CONFIG(i32 2, i32 %224)
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 8
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @PCI224_ZGAT_SCE, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @outb(i32 %225, i64 %230)
  %232 = load i32, i32* @CLK_10MHZ, align 4
  %233 = call i32 @CLK_CONFIG(i32 2, i32 %232)
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 8
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @PCI224_ZCLK_SCE, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @outb(i32 %233, i64 %238)
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 8
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @PCI224_Z2_CT0, align 8
  %244 = add nsw i64 %242, %243
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @i8254_load(i64 %244, i32 0, i32 2, i32 %245, i32 2)
  %247 = load i32, i32* @CLK_OUTNM1, align 4
  %248 = call i32 @CLK_CONFIG(i32 0, i32 %247)
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 8
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @PCI224_ZCLK_SCE, align 8
  %253 = add nsw i64 %251, %252
  %254 = call i32 @outb(i32 %248, i64 %253)
  br label %255

255:                                              ; preds = %223, %214
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 8
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @PCI224_Z2_CT0, align 8
  %260 = add nsw i64 %258, %259
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @i8254_load(i64 %260, i32 0, i32 0, i32 %261, i32 2)
  br label %263

263:                                              ; preds = %255, %93
  %264 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %265 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  switch i32 %266, label %275 [
    i32 133, label %267
  ]

267:                                              ; preds = %263
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 6
  store i32 0, i32* %269, align 8
  %270 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %271 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 10
  store i32 %272, i32* %274, align 4
  br label %280

275:                                              ; preds = %263
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 6
  store i32 1, i32* %277, align 8
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 10
  store i32 0, i32* %279, align 4
  br label %280

280:                                              ; preds = %275, %267
  %281 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %282 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  switch i32 %283, label %320 [
    i32 131, label %284
    i32 132, label %297
  ]

284:                                              ; preds = %280
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 7
  %287 = load i64, i64* %12, align 8
  %288 = call i32 @spin_lock_irqsave(i32* %286, i64 %287)
  %289 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %290 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %289, i32 0, i32 0
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 0
  store i32* @pci224_ao_inttrig_start, i32** %292, align 8
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 7
  %295 = load i64, i64* %12, align 8
  %296 = call i32 @spin_unlock_irqrestore(i32* %294, i64 %295)
  br label %320

297:                                              ; preds = %280
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 7
  %300 = load i64, i64* %12, align 8
  %301 = call i32 @spin_lock_irqsave(i32* %299, i64 %300)
  %302 = load i32, i32* @PCI224_INTR_EXT, align 4
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 9
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 9
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 8
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @PCI224_INT_SCE, align 8
  %314 = add nsw i64 %312, %313
  %315 = call i32 @outb(i32 %309, i64 %314)
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 7
  %318 = load i64, i64* %12, align 8
  %319 = call i32 @spin_unlock_irqrestore(i32* %317, i64 %318)
  br label %320

320:                                              ; preds = %280, %297, %284
  store i32 0, i32* %3, align 4
  br label %321

321:                                              ; preds = %320, %31
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @COMBINE(i32, i32, i32) #1

declare dso_local i32 @pci224_cascade_ns_to_timer(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @GAT_CONFIG(i32, i32) #1

declare dso_local i32 @CLK_CONFIG(i32, i32) #1

declare dso_local i32 @i8254_load(i64, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
