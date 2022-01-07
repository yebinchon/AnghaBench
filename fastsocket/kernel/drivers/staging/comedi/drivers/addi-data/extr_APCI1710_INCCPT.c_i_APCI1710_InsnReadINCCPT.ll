; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_InsnReadINCCPT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_InsnReadINCCPT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Latch Register Value %d\0A\00", align 1
@APCI1710_SAVE_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ReadType Parameter wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnReadINCCPT(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CR_CHAN(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @current, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %226 [
    i32 129, label %19
    i32 128, label %35
    i32 133, label %54
    i32 132, label %69
    i32 138, label %79
    i32 136, label %90
    i32 135, label %101
    i32 139, label %112
    i32 140, label %123
    i32 134, label %137
    i32 137, label %148
    i32 131, label %159
    i32 130, label %175
  ]

19:                                               ; preds = %4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @CR_AREF(i32 %23)
  %25 = trunc i64 %24 to i8
  %26 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @CR_RANGE(i32 %28)
  %30 = trunc i64 %29 to i8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 @i_APCI1710_ReadLatchRegisterStatus(%struct.comedi_device* %20, i8 zeroext %25, i8 zeroext %30, i8* %33)
  store i32 %34, i32* %10, align 4
  br label %228

35:                                               ; preds = %4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %37 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @CR_AREF(i32 %39)
  %41 = trunc i64 %40 to i8
  %42 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @CR_RANGE(i32 %44)
  %46 = trunc i64 %45 to i8
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i32 @i_APCI1710_ReadLatchRegisterValue(%struct.comedi_device* %36, i8 zeroext %41, i8 zeroext %46, i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %228

54:                                               ; preds = %4
  %55 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %56 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @CR_AREF(i32 %58)
  %60 = trunc i64 %59 to i8
  %61 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @CR_RANGE(i32 %63)
  %65 = trunc i64 %64 to i8
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = call i32 @i_APCI1710_Read16BitCounterValue(%struct.comedi_device* %55, i8 zeroext %60, i8 zeroext %65, i32* %67)
  store i32 %68, i32* %10, align 4
  br label %228

69:                                               ; preds = %4
  %70 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %71 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %72 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @CR_AREF(i32 %73)
  %75 = trunc i64 %74 to i8
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = call i32 @i_APCI1710_Read32BitCounterValue(%struct.comedi_device* %70, i8 zeroext %75, i32* %77)
  store i32 %78, i32* %10, align 4
  br label %228

79:                                               ; preds = %4
  %80 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %81 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @CR_AREF(i32 %83)
  %85 = trunc i64 %84 to i8
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = bitcast i32* %87 to i8*
  %89 = call i32 @i_APCI1710_GetIndexStatus(%struct.comedi_device* %80, i8 zeroext %85, i8* %88)
  store i32 %89, i32* %10, align 4
  br label %228

90:                                               ; preds = %4
  %91 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %92 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @CR_AREF(i32 %94)
  %96 = trunc i64 %95 to i8
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = bitcast i32* %98 to i8*
  %100 = call i32 @i_APCI1710_GetReferenceStatus(%struct.comedi_device* %91, i8 zeroext %96, i8* %99)
  store i32 %100, i32* %10, align 4
  br label %228

101:                                              ; preds = %4
  %102 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %103 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @CR_AREF(i32 %105)
  %107 = trunc i64 %106 to i8
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = bitcast i32* %109 to i8*
  %111 = call i32 @i_APCI1710_GetUASStatus(%struct.comedi_device* %102, i8 zeroext %107, i8* %110)
  store i32 %111, i32* %10, align 4
  br label %228

112:                                              ; preds = %4
  %113 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %114 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @CR_AREF(i32 %116)
  %118 = trunc i64 %117 to i8
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = bitcast i32* %120 to i8*
  %122 = call i32 @i_APCI1710_GetCBStatus(%struct.comedi_device* %113, i8 zeroext %118, i8* %121)
  store i32 %122, i32* %10, align 4
  br label %228

123:                                              ; preds = %4
  %124 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %125 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %126 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @CR_AREF(i32 %127)
  %129 = trunc i64 %128 to i8
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = bitcast i32* %131 to i8*
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = bitcast i32* %134 to i8*
  %136 = call i32 @i_APCI1710_Get16BitCBStatus(%struct.comedi_device* %124, i8 zeroext %129, i8* %132, i8* %135)
  store i32 %136, i32* %10, align 4
  br label %228

137:                                              ; preds = %4
  %138 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %139 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %140 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @CR_AREF(i32 %141)
  %143 = trunc i64 %142 to i8
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = bitcast i32* %145 to i8*
  %147 = call i32 @i_APCI1710_GetUDStatus(%struct.comedi_device* %138, i8 zeroext %143, i8* %146)
  store i32 %147, i32* %10, align 4
  br label %228

148:                                              ; preds = %4
  %149 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %150 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @CR_AREF(i32 %152)
  %154 = trunc i64 %153 to i8
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = bitcast i32* %156 to i8*
  %158 = call i32 @i_APCI1710_GetInterruptUDLatchedStatus(%struct.comedi_device* %149, i8 zeroext %154, i8* %157)
  store i32 %158, i32* %10, align 4
  br label %228

159:                                              ; preds = %4
  %160 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %161 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %162 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @CR_AREF(i32 %163)
  %165 = trunc i64 %164 to i8
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = bitcast i32* %167 to i8*
  %169 = load i32*, i32** %8, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = bitcast i32* %170 to i8*
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = call i32 @i_APCI1710_ReadFrequencyMeasurement(%struct.comedi_device* %160, i8 zeroext %165, i8* %168, i8* %171, i32* %173)
  store i32 %174, i32* %10, align 4
  br label %228

175:                                              ; preds = %4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %8, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 %186, i32* %188, align 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %8, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 2
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = add i64 %218, 1
  %220 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %221 = sext i32 %220 to i64
  %222 = urem i64 %219, %221
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  store i64 %222, i64* %225, align 8
  br label %228

226:                                              ; preds = %4
  %227 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %228

228:                                              ; preds = %226, %175, %159, %148, %137, %123, %112, %101, %90, %79, %69, %54, %35, %19
  %229 = load i32, i32* %10, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %10, align 4
  br label %235

235:                                              ; preds = %231, %228
  %236 = load i32, i32* %10, align 4
  ret i32 %236
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @i_APCI1710_ReadLatchRegisterStatus(%struct.comedi_device*, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i32 @i_APCI1710_ReadLatchRegisterValue(%struct.comedi_device*, i8 zeroext, i8 zeroext, i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @i_APCI1710_Read16BitCounterValue(%struct.comedi_device*, i8 zeroext, i8 zeroext, i32*) #1

declare dso_local i32 @i_APCI1710_Read32BitCounterValue(%struct.comedi_device*, i8 zeroext, i32*) #1

declare dso_local i32 @i_APCI1710_GetIndexStatus(%struct.comedi_device*, i8 zeroext, i8*) #1

declare dso_local i32 @i_APCI1710_GetReferenceStatus(%struct.comedi_device*, i8 zeroext, i8*) #1

declare dso_local i32 @i_APCI1710_GetUASStatus(%struct.comedi_device*, i8 zeroext, i8*) #1

declare dso_local i32 @i_APCI1710_GetCBStatus(%struct.comedi_device*, i8 zeroext, i8*) #1

declare dso_local i32 @i_APCI1710_Get16BitCBStatus(%struct.comedi_device*, i8 zeroext, i8*, i8*) #1

declare dso_local i32 @i_APCI1710_GetUDStatus(%struct.comedi_device*, i8 zeroext, i8*) #1

declare dso_local i32 @i_APCI1710_GetInterruptUDLatchedStatus(%struct.comedi_device*, i8 zeroext, i8*) #1

declare dso_local i32 @i_APCI1710_ReadFrequencyMeasurement(%struct.comedi_device*, i8 zeroext, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
