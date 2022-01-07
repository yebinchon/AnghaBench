; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64, i32, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32, i64, i64, i64, i64, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"adl_pci9118 EDBG: BGN: pci9118_ai_cmd(%d,)\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@TRIG_EXT = common dso_local global i64 0, align 8
@START_AI_EXT = common dso_local global i32 0, align 4
@STOP_AI_EXT = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i64 0, align 8
@START_AI_INT = common dso_local global i32 0, align 4
@pci9118_ai_inttrig = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@TRIG_NOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"1 neverending=%d scans=%u usessh=%d ai_startstop=0x%2x\0A\00", align 1
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"2 usedma=%d realscan=%d af=%u n_chan=%d ab=%d n_scanlen=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"cmd->scan_begin_src=TRIG_TIMER works only with bus mastering!\00", align 1
@EIO = common dso_local global i32 0, align 4
@PCI9118_ADCNTRL = common dso_local global i64 0, align 8
@AdFunction_PDTrg = common dso_local global i32 0, align 4
@AdFunction_PETrg = common dso_local global i32 0, align 4
@PCI9118_ADFUNC = common dso_local global i64 0, align 8
@PCI9118_DELFIFO = common dso_local global i64 0, align 8
@PCI9118_ADSTAT = common dso_local global i64 0, align 8
@PCI9118_INTSRC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"adl_pci9118 EDBG: END: pci9118_ai_cmd()\0A\00", align 1
@STOP_AI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9118_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store %struct.comedi_cmd* %12, %struct.comedi_cmd** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 24
  store i32 0, i32* %18, align 8
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 22
  store i32 %36, i32* %38, align 8
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 28
  store i32 %43, i32* %45, align 8
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 27
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 18
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i32 0, i32* %56, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  store i32 0, i32* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  store i32 0, i32* %60, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  store i32 270, i32* %62, align 8
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TRIG_EXT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %2
  %69 = load i32, i32* @START_AI_EXT, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 24
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %2
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TRIG_EXT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 7
  store i32 1, i32* %82, align 4
  %83 = load i32, i32* @STOP_AI_EXT, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 24
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %80, %74
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TRIG_INT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load i32, i32* @START_AI_INT, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 24
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 26
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @pci9118_ai_inttrig, align 4
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %107 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 8
  br label %110

110:                                              ; preds = %94, %88
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TRIG_NONE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 7
  store i32 1, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %110
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TRIG_COUNT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 9
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 25
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 7
  store i32 0, i32* %132, align 4
  br label %136

133:                                              ; preds = %119
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 25
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %133, %125
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @TRIG_NOW, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 8
  store i32 1, i32* %144, align 8
  br label %148

145:                                              ; preds = %136
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 8
  store i32 0, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %142
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 25
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 24
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %151, i64 %154, i32 %157, i32 %160)
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  store i32 0, i32* %163, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 5
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 21
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 23
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %237

172:                                              ; preds = %148
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 9
  store i32 1, i32* %174, align 4
  %175 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %176 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %205

181:                                              ; preds = %172
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %205

186:                                              ; preds = %181
  %187 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %188 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @TRIG_NOW, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 5
  store i32 1, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %186
  %196 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %197 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @TRIG_TIMER, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 9
  store i32 0, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %195
  br label %205

205:                                              ; preds = %204, %181, %172
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %236

212:                                              ; preds = %205
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, 1
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %236

218:                                              ; preds = %212
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %223, label %236

223:                                              ; preds = %218
  %224 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %225 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %224, i32 0, i32 6
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @TRIG_FOLLOW, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 9
  store i32 0, i32* %231, align 4
  br label %235

232:                                              ; preds = %223
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 5
  store i32 1, i32* %234, align 4
  br label %235

235:                                              ; preds = %232, %229
  br label %236

236:                                              ; preds = %235, %218, %212, %205
  br label %240

237:                                              ; preds = %148
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 9
  store i32 0, i32* %239, align 4
  br label %240

240:                                              ; preds = %237, %236
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %340

245:                                              ; preds = %240
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 10
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %340

250:                                              ; preds = %245
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 4
  store i32 2, i32* %252, align 8
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %269

257:                                              ; preds = %250
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %269

262:                                              ; preds = %257
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 8
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 5
  store i32 0, i32* %268, align 4
  br label %269

269:                                              ; preds = %262, %257, %250
  %270 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %271 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp ult i32 %272, %275
  br i1 %276, label %277, label %283

277:                                              ; preds = %269
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %282 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %281, i32 0, i32 7
  store i32 %280, i32* %282, align 8
  br label %283

283:                                              ; preds = %277, %269
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 10
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %288 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 8
  %290 = udiv i32 %286, %289
  store i32 %290, i32* %7, align 4
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %295 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %294, i32 0, i32 7
  %296 = load i32, i32* %295, align 8
  %297 = urem i32 %293, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %283
  %300 = load i32, i32* %7, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %7, align 4
  br label %302

302:                                              ; preds = %299, %283
  %303 = load i32, i32* %7, align 4
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = sub nsw i32 %306, 1
  %308 = icmp ugt i32 %303, %307
  br i1 %308, label %309, label %339

309:                                              ; preds = %302
  %310 = load i32, i32* %7, align 4
  %311 = add i32 %310, 1
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 4
  store i32 %311, i32* %313, align 8
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 9
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %318, label %338

318:                                              ; preds = %309
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %321, %324
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %325, %328
  %330 = and i32 %329, 1
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %318
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %332, %318
  br label %338

338:                                              ; preds = %337, %309
  br label %339

339:                                              ; preds = %338, %302
  br label %340

340:                                              ; preds = %339, %245, %240
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %343, %346
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 5
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %347, %350
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = sdiv i32 %354, %357
  %359 = mul nsw i32 %351, %358
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 11
  store i32 %359, i32* %361, align 4
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 9
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 11
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %364, i32 %367, i32 %370, i32 %373, i32 %376, i32 %379)
  %381 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %382 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 22
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @check_channel_list(%struct.comedi_device* %381, %struct.comedi_subdevice* %382, i32 %385, i32 %388, i32 %391, i32 %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %400, label %397

397:                                              ; preds = %340
  %398 = load i32, i32* @EINVAL, align 4
  %399 = sub nsw i32 0, %398
  store i32 %399, i32* %3, align 4
  br label %648

400:                                              ; preds = %340
  %401 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %402 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 22
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 9
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 21
  %420 = load i64, i64* %419, align 8
  %421 = call i32 @setup_channel_list(%struct.comedi_device* %401, %struct.comedi_subdevice* %402, i32 %405, i32 %408, i32 0, i32 %411, i32 %414, i32 %417, i64 %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %426, label %423

423:                                              ; preds = %400
  %424 = load i32, i32* @EINVAL, align 4
  %425 = sub nsw i32 0, %424
  store i32 %425, i32* %3, align 4
  br label %648

426:                                              ; preds = %400
  %427 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %428 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %427, i32 0, i32 6
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @TRIG_FOLLOW, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %444, label %432

432:                                              ; preds = %426
  %433 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %434 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %433, i32 0, i32 6
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @TRIG_EXT, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %444, label %438

438:                                              ; preds = %432
  %439 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %440 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %439, i32 0, i32 6
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @TRIG_INT, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %494

444:                                              ; preds = %438, %432, %426
  %445 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %446 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %445, i32 0, i32 5
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @TRIG_TIMER, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %494

450:                                              ; preds = %444
  %451 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %452 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %451, i32 0, i32 6
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @TRIG_EXT, align 8
  %455 = icmp eq i64 %453, %454
  br i1 %455, label %456, label %459

456:                                              ; preds = %450
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 12
  store i32 4, i32* %458, align 8
  br label %462

459:                                              ; preds = %450
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 12
  store i32 1, i32* %461, align 8
  br label %462

462:                                              ; preds = %459, %456
  %463 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 12
  %465 = load i32, i32* %464, align 8
  %466 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %467 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %468 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %469 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %468, i32 0, i32 8
  %470 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %471 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %470, i32 0, i32 7
  %472 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %476 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %475, i32 0, i32 11
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 20
  %480 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %481 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %480, i32 0, i32 19
  %482 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 8
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 4
  %487 = load i32, i32* %486, align 8
  %488 = call i32 @pci9118_calc_divisors(i32 %465, %struct.comedi_device* %466, %struct.comedi_subdevice* %467, i64* %469, i32* %471, i32 %474, i32 %477, i32* %479, i32* %481, i32 %484, i32 %487)
  %489 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %490 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %489, i32 0, i32 7
  %491 = load i32, i32* %490, align 8
  %492 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 3
  store i32 %491, i32* %493, align 4
  br label %494

494:                                              ; preds = %462, %444, %438
  %495 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %496 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %495, i32 0, i32 6
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @TRIG_TIMER, align 8
  %499 = icmp eq i64 %497, %498
  br i1 %499, label %500, label %561

500:                                              ; preds = %494
  %501 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %502 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %501, i32 0, i32 5
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* @TRIG_TIMER, align 8
  %505 = icmp eq i64 %503, %504
  br i1 %505, label %512, label %506

506:                                              ; preds = %500
  %507 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %508 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %507, i32 0, i32 5
  %509 = load i64, i64* %508, align 8
  %510 = load i64, i64* @TRIG_NOW, align 8
  %511 = icmp eq i64 %509, %510
  br i1 %511, label %512, label %561

512:                                              ; preds = %506, %500
  %513 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i32 0, i32 9
  %515 = load i32, i32* %514, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %522, label %517

517:                                              ; preds = %512
  %518 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %519 = call i32 @comedi_error(%struct.comedi_device* %518, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %520 = load i32, i32* @EIO, align 4
  %521 = sub nsw i32 0, %520
  store i32 %521, i32* %3, align 4
  br label %648

522:                                              ; preds = %512
  %523 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %523, i32 0, i32 12
  store i32 2, i32* %524, align 8
  %525 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %525, i32 0, i32 12
  %527 = load i32, i32* %526, align 8
  %528 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %529 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %530 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %531 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %530, i32 0, i32 8
  %532 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %533 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %532, i32 0, i32 7
  %534 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %535 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 11
  %539 = load i32, i32* %538, align 4
  %540 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %540, i32 0, i32 20
  %542 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i32 0, i32 19
  %544 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %545 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %544, i32 0, i32 8
  %546 = load i32, i32* %545, align 8
  %547 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %548 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %547, i32 0, i32 4
  %549 = load i32, i32* %548, align 8
  %550 = call i32 @pci9118_calc_divisors(i32 %527, %struct.comedi_device* %528, %struct.comedi_subdevice* %529, i64* %531, i32* %533, i32 %536, i32 %539, i32* %541, i32* %543, i32 %546, i32 %549)
  %551 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %552 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %551, i32 0, i32 8
  %553 = load i64, i64* %552, align 8
  %554 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %555 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %554, i32 0, i32 18
  store i64 %553, i64* %555, align 8
  %556 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %557 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %556, i32 0, i32 7
  %558 = load i32, i32* %557, align 8
  %559 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %560 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %559, i32 0, i32 3
  store i32 %558, i32* %560, align 4
  br label %561

561:                                              ; preds = %522, %506, %494
  %562 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %563 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %562, i32 0, i32 6
  %564 = load i64, i64* %563, align 8
  %565 = load i64, i64* @TRIG_FOLLOW, align 8
  %566 = icmp eq i64 %564, %565
  br i1 %566, label %567, label %576

567:                                              ; preds = %561
  %568 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %569 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %568, i32 0, i32 5
  %570 = load i64, i64* %569, align 8
  %571 = load i64, i64* @TRIG_EXT, align 8
  %572 = icmp eq i64 %570, %571
  br i1 %572, label %573, label %576

573:                                              ; preds = %567
  %574 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %575 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %574, i32 0, i32 12
  store i32 3, i32* %575, align 8
  br label %576

576:                                              ; preds = %573, %567, %561
  %577 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %578 = call i32 @start_pacer(%struct.comedi_device* %577, i32 -1, i32 0, i32 0)
  %579 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %580 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %579, i32 0, i32 13
  store i32 0, i32* %580, align 4
  %581 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %582 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %581, i32 0, i32 13
  %583 = load i32, i32* %582, align 4
  %584 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %585 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %584, i32 0, i32 0
  %586 = load i64, i64* %585, align 8
  %587 = load i64, i64* @PCI9118_ADCNTRL, align 8
  %588 = add nsw i64 %586, %587
  %589 = call i32 @outl(i32 %583, i64 %588)
  %590 = load i32, i32* @AdFunction_PDTrg, align 4
  %591 = load i32, i32* @AdFunction_PETrg, align 4
  %592 = or i32 %590, %591
  %593 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %594 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %593, i32 0, i32 14
  store i32 %592, i32* %594, align 8
  %595 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %596 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %595, i32 0, i32 14
  %597 = load i32, i32* %596, align 8
  %598 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %599 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %598, i32 0, i32 0
  %600 = load i64, i64* %599, align 8
  %601 = load i64, i64* @PCI9118_ADFUNC, align 8
  %602 = add nsw i64 %600, %601
  %603 = call i32 @outl(i32 %597, i64 %602)
  %604 = call i32 @udelay(i32 1)
  %605 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %606 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = load i64, i64* @PCI9118_DELFIFO, align 8
  %609 = add nsw i64 %607, %608
  %610 = call i32 @outl(i32 0, i64 %609)
  %611 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %612 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = load i64, i64* @PCI9118_ADSTAT, align 8
  %615 = add nsw i64 %613, %614
  %616 = call i32 @inl(i64 %615)
  %617 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %618 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %617, i32 0, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = load i64, i64* @PCI9118_INTSRC, align 8
  %621 = add nsw i64 %619, %620
  %622 = call i32 @inl(i64 %621)
  %623 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %624 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %623, i32 0, i32 17
  store i64 0, i64* %624, align 8
  %625 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %626 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %625, i32 0, i32 16
  store i64 0, i64* %626, align 8
  %627 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %628 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %627, i32 0, i32 0
  %629 = load %struct.TYPE_4__*, %struct.TYPE_4__** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %629, i32 0, i32 0
  store i64 0, i64* %630, align 8
  %631 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %632 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %631, i32 0, i32 15
  store i64 0, i64* %632, align 8
  %633 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %634 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %633, i32 0, i32 9
  %635 = load i32, i32* %634, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %641

637:                                              ; preds = %576
  %638 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %639 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %640 = call i32 @pci9118_ai_docmd_dma(%struct.comedi_device* %638, %struct.comedi_subdevice* %639)
  store i32 %640, i32* %8, align 4
  br label %645

641:                                              ; preds = %576
  %642 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %643 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %644 = call i32 @pci9118_ai_docmd_sampl(%struct.comedi_device* %642, %struct.comedi_subdevice* %643)
  store i32 %644, i32* %8, align 4
  br label %645

645:                                              ; preds = %641, %637
  %646 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %647 = load i32, i32* %8, align 4
  store i32 %647, i32* %3, align 4
  br label %648

648:                                              ; preds = %645, %517, %423, %397
  %649 = load i32, i32* %3, align 4
  ret i32 %649
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @check_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32, i32) #1

declare dso_local i32 @setup_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @pci9118_calc_divisors(i32, %struct.comedi_device*, %struct.comedi_subdevice*, i64*, i32*, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @pci9118_ai_docmd_dma(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci9118_ai_docmd_sampl(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
