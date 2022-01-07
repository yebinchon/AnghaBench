; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscISR.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscISR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i64, i32 }

@FALSE = common dso_local global i8* null, align 8
@ASC_INIT_STATE_END_LOAD_MC = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@ASCQ_ERR_ISR_ON_CRITICAL = common dso_local global i32 0, align 4
@ASCQ_ERR_ISR_RE_ENTRY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@CC_SCSI_RESET = common dso_local global i32 0, align 4
@CC_CHIP_RESET = common dso_local global i32 0, align 4
@CC_SINGLE_STEP = common dso_local global i32 0, align 4
@CC_DIAG = common dso_local global i32 0, align 4
@CC_TEST = common dso_local global i32 0, align 4
@CSW_SCSI_RESET_LATCH = common dso_local global i32 0, align 4
@ASC_IS_VL = common dso_local global i32 0, align 4
@ASC_IS_EISA = common dso_local global i32 0, align 4
@CC_HALT = common dso_local global i32 0, align 4
@CSW_SCSI_RESET_ACTIVE = common dso_local global i32 0, align 4
@CIW_CLR_SCSI_RESET_INT = common dso_local global i32 0, align 4
@ASCV_HOST_FLAG_B = common dso_local global i32 0, align 4
@ASC_HOST_FLAG_IN_ISR = common dso_local global i64 0, align 8
@CSW_INT_PENDING = common dso_local global i32 0, align 4
@CSW_HALTED = common dso_local global i32 0, align 4
@ASC_CNTL_INT_MULTI_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @AscISR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscISR(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load i8*, i8** @FALSE, align 8
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @AscIsIntPending(i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %2, align 4
  br label %227

23:                                               ; preds = %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ASC_INIT_STATE_END_LOAD_MC, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @ERR, align 4
  store i32 %31, i32* %2, align 4
  br label %227

32:                                               ; preds = %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = load i32, i32* @ASCQ_ERR_ISR_ON_CRITICAL, align 4
  %40 = call i32 @AscSetLibErrorCode(%struct.TYPE_6__* %38, i32 %39)
  %41 = load i32, i32* @ERR, align 4
  store i32 %41, i32* %2, align 4
  br label %227

42:                                               ; preds = %32
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = load i32, i32* @ASCQ_ERR_ISR_RE_ENTRY, align 4
  %50 = call i32 @AscSetLibErrorCode(%struct.TYPE_6__* %48, i32 %49)
  %51 = load i32, i32* @ERR, align 4
  store i32 %51, i32* %2, align 4
  br label %227

52:                                               ; preds = %42
  %53 = load i8*, i8** @TRUE, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @AscGetChipControl(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @CC_SCSI_RESET, align 4
  %61 = load i32, i32* @CC_CHIP_RESET, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CC_SINGLE_STEP, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CC_DIAG, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CC_TEST, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %59, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @AscGetChipStatus(i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @CSW_SCSI_RESET_LATCH, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %126

77:                                               ; preds = %52
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ASC_IS_VL, align 4
  %82 = load i32, i32* @ASC_IS_EISA, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %125, label %86

86:                                               ; preds = %77
  store i32 10, i32* %12, align 4
  %87 = load i8*, i8** @TRUE, align 8
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %9, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @CC_HALT, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %107, %86
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @AscGetChipStatus(i32 %96)
  %98 = load i32, i32* @CSW_SCSI_RESET_ACTIVE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %12, align 4
  %104 = icmp sgt i32 %102, 0
  br label %105

105:                                              ; preds = %101, %95
  %106 = phi i1 [ false, %95 ], [ %104, %101 ]
  br i1 %106, label %107, label %109

107:                                              ; preds = %105
  %108 = call i32 @mdelay(i32 100)
  br label %95

109:                                              ; preds = %105
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @CC_CHIP_RESET, align 4
  %112 = load i32, i32* @CC_HALT, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @AscSetChipControl(i32 %110, i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @CC_HALT, align 4
  %117 = call i32 @AscSetChipControl(i32 %115, i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @CIW_CLR_SCSI_RESET_INT, align 4
  %120 = call i32 @AscSetChipStatus(i32 %118, i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @AscSetChipStatus(i32 %121, i32 0)
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @AscGetChipStatus(i32 %123)
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %109, %77
  br label %126

126:                                              ; preds = %125, %52
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @AscGetChipLramAddr(i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @ASCV_HOST_FLAG_B, align 4
  %131 = call i32 @AscReadLramByte(i32 %129, i32 %130)
  %132 = load i64, i64* @ASC_HOST_FLAG_IN_ISR, align 8
  %133 = xor i64 %132, -1
  %134 = trunc i64 %133 to i32
  %135 = and i32 %131, %134
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @ASCV_HOST_FLAG_B, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i64, i64* @ASC_HOST_FLAG_IN_ISR, align 8
  %140 = trunc i64 %139 to i32
  %141 = or i32 %138, %140
  %142 = call i32 @AscWriteLramByte(i32 %136, i32 %137, i32 %141)
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @CSW_INT_PENDING, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %126
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %211

150:                                              ; preds = %147, %126
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @AscAckInterrupt(i32 %151)
  %153 = load i8*, i8** @TRUE, align 8
  %154 = ptrtoint i8* %153 to i32
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @CSW_HALTED, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %150
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @CC_SINGLE_STEP, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = call i32 @AscIsrChipHalted(%struct.TYPE_6__* %165)
  %167 = load i32, i32* @ERR, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %177

170:                                              ; preds = %164
  %171 = load i32, i32* @CC_HALT, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %170
  br label %210

176:                                              ; preds = %159, %150
  br label %177

177:                                              ; preds = %176, %169
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @ASC_CNTL_INT_MULTI_Q, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %190, %184
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %187 = call i32 @AscIsrQDone(%struct.TYPE_6__* %186)
  store i32 %187, i32* %10, align 4
  %188 = and i32 %187, 1
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %185

191:                                              ; preds = %185
  br label %203

192:                                              ; preds = %177
  br label %193

193:                                              ; preds = %199, %192
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %195 = call i32 @AscIsrQDone(%struct.TYPE_6__* %194)
  store i32 %195, i32* %10, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %202

198:                                              ; preds = %193
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %10, align 4
  %201 = icmp eq i32 %200, 17
  br i1 %201, label %193, label %202

202:                                              ; preds = %199, %197
  br label %203

203:                                              ; preds = %202, %191
  %204 = load i32, i32* %10, align 4
  %205 = and i32 %204, 128
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @ERR, align 4
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %207, %203
  br label %210

210:                                              ; preds = %209, %175
  br label %211

211:                                              ; preds = %210, %147
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* @ASCV_HOST_FLAG_B, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @AscWriteLramByte(i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @AscSetChipLramAddr(i32 %216, i32 %217)
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @AscSetChipControl(i32 %219, i32 %220)
  %222 = load i8*, i8** @FALSE, align 8
  %223 = ptrtoint i8* %222 to i32
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %211, %47, %37, %30, %21
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i64 @AscIsIntPending(i32) #1

declare dso_local i32 @AscSetLibErrorCode(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @AscGetChipControl(i32) #1

declare dso_local i32 @AscGetChipStatus(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @AscSetChipControl(i32, i32) #1

declare dso_local i32 @AscSetChipStatus(i32, i32) #1

declare dso_local i32 @AscGetChipLramAddr(i32) #1

declare dso_local i32 @AscReadLramByte(i32, i32) #1

declare dso_local i32 @AscWriteLramByte(i32, i32, i32) #1

declare dso_local i32 @AscAckInterrupt(i32) #1

declare dso_local i32 @AscIsrChipHalted(%struct.TYPE_6__*) #1

declare dso_local i32 @AscIsrQDone(%struct.TYPE_6__*) #1

declare dso_local i32 @AscSetChipLramAddr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
