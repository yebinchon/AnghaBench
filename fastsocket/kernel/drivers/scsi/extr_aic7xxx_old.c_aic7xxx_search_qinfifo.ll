; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_search_qinfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_search_qinfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i8, i64*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.aic7xxx_scb** }
%struct.aic7xxx_scb = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@QINPOS = common dso_local global i32 0, align 4
@SCB_WAITINGQ = common dso_local global i32 0, align 4
@TAG_ENB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCB_RECOVERY_SCB = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@AHC_QUEUE_REGS = common dso_local global i32 0, align 4
@HNSCB_QOFF = common dso_local global i32 0, align 4
@KERNEL_QINPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aic7xxx_host*, i32, i32, i32, i8, i32, i32, i32*)* @aic7xxx_search_qinfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7xxx_search_qinfifo(%struct.aic7xxx_host* %0, i32 %1, i32 %2, i32 %3, i8 zeroext %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.aic7xxx_host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca %struct.aic7xxx_scb*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8 %4, i8* %13, align 1
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %22 = load i32, i32* @QINPOS, align 4
  %23 = call zeroext i8 @aic_inb(%struct.aic7xxx_host* %21, i32 %22)
  store i8 %23, i8* %18, align 1
  %24 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %25 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 8
  store i8 %26, i8* %19, align 1
  %27 = load i8, i8* %18, align 1
  %28 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %29 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %28, i32 0, i32 0
  store i8 %27, i8* %29, align 8
  br label %30

30:                                               ; preds = %206, %8
  %31 = load i8, i8* %18, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %19, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %207

36:                                               ; preds = %30
  %37 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %38 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %37, i32 0, i32 5
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.aic7xxx_scb**, %struct.aic7xxx_scb*** %40, align 8
  %42 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %43 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i8, i8* %18, align 1
  %46 = add i8 %45, 1
  store i8 %46, i8* %18, align 1
  %47 = zext i8 %45 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %41, i64 %49
  %51 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %50, align 8
  store %struct.aic7xxx_scb* %51, %struct.aic7xxx_scb** %20, align 8
  %52 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %53 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i8, i8* %13, align 1
  %58 = call i64 @aic7xxx_match_scb(%struct.aic7xxx_host* %52, %struct.aic7xxx_scb* %53, i32 %54, i32 %55, i32 %56, i8 zeroext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %191

60:                                               ; preds = %36
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %135

63:                                               ; preds = %60
  %64 = load i32*, i32** %16, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %135

66:                                               ; preds = %63
  %67 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %68 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SCB_WAITINGQ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %66
  %74 = load i32*, i32** %16, align 8
  %75 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %76 = call i32 @scbq_remove(i32* %74, %struct.aic7xxx_scb* %75)
  %77 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %78 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %77, i32 0, i32 4
  %79 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %80 = call i32 @scbq_remove(i32* %78, %struct.aic7xxx_scb* %79)
  %81 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %82 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.TYPE_6__* @AIC_DEV(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %87 = call i32 @scbq_remove(i32* %85, %struct.aic7xxx_scb* %86)
  %88 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %89 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.TYPE_6__* @AIC_DEV(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %96 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %73, %66
  %100 = load i32*, i32** %16, align 8
  %101 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %102 = call i32 @scbq_insert_tail(i32* %100, %struct.aic7xxx_scb* %101)
  %103 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %104 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call %struct.TYPE_6__* @AIC_DEV(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %111 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @SCB_WAITINGQ, align 4
  %115 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %116 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %120 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @TAG_ENB, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %99
  %126 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %127 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %128 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @TRUE, align 4
  %133 = call i64 @aic7xxx_index_busy_target(%struct.aic7xxx_host* %126, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %125, %99
  br label %188

135:                                              ; preds = %63, %60
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %140 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %139, i32 0, i32 2
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %145 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %148 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %147, i32 0, i32 0
  %149 = load i8, i8* %148, align 8
  %150 = add i8 %149, 1
  store i8 %150, i8* %148, align 8
  %151 = zext i8 %149 to i64
  %152 = getelementptr inbounds i64, i64* %146, i64 %151
  store i64 %143, i64* %152, align 8
  br label %187

153:                                              ; preds = %135
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %156 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @SCB_RECOVERY_SCB, align 4
  %159 = and i32 %157, %158
  %160 = or i32 %154, %159
  %161 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %162 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %164 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %165 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %164, i32 0, i32 2
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @FALSE, align 4
  %170 = call i64 @aic7xxx_index_busy_target(%struct.aic7xxx_host* %163, i32 %168, i32 %169)
  %171 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %172 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %171, i32 0, i32 2
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %170, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %153
  %178 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %179 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %180 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %179, i32 0, i32 2
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @TRUE, align 4
  %185 = call i64 @aic7xxx_index_busy_target(%struct.aic7xxx_host* %178, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %177, %153
  br label %187

187:                                              ; preds = %186, %138
  br label %188

188:                                              ; preds = %187, %134
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %206

191:                                              ; preds = %36
  %192 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %20, align 8
  %193 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %192, i32 0, i32 2
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %198 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %197, i32 0, i32 1
  %199 = load i64*, i64** %198, align 8
  %200 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %201 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %200, i32 0, i32 0
  %202 = load i8, i8* %201, align 8
  %203 = add i8 %202, 1
  store i8 %203, i8* %201, align 8
  %204 = zext i8 %202 to i64
  %205 = getelementptr inbounds i64, i64* %199, i64 %204
  store i64 %196, i64* %205, align 8
  br label %206

206:                                              ; preds = %191, %188
  br label %30

207:                                              ; preds = %30
  %208 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %209 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %208, i32 0, i32 0
  %210 = load i8, i8* %209, align 8
  store i8 %210, i8* %18, align 1
  br label %211

211:                                              ; preds = %217, %207
  %212 = load i8, i8* %18, align 1
  %213 = zext i8 %212 to i32
  %214 = load i8, i8* %19, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp ne i32 %213, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %211
  %218 = load i64, i64* @SCB_LIST_NULL, align 8
  %219 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %220 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %219, i32 0, i32 1
  %221 = load i64*, i64** %220, align 8
  %222 = load i8, i8* %18, align 1
  %223 = add i8 %222, 1
  store i8 %223, i8* %18, align 1
  %224 = zext i8 %222 to i64
  %225 = getelementptr inbounds i64, i64* %221, i64 %224
  store i64 %218, i64* %225, align 8
  br label %211

226:                                              ; preds = %211
  %227 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %228 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @AHC_QUEUE_REGS, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %226
  %234 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %235 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %236 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %235, i32 0, i32 0
  %237 = load i8, i8* %236, align 8
  %238 = load i32, i32* @HNSCB_QOFF, align 4
  %239 = call i32 @aic_outb(%struct.aic7xxx_host* %234, i8 zeroext %237, i32 %238)
  br label %247

240:                                              ; preds = %226
  %241 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %242 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %9, align 8
  %243 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %242, i32 0, i32 0
  %244 = load i8, i8* %243, align 8
  %245 = load i32, i32* @KERNEL_QINPOS, align 4
  %246 = call i32 @aic_outb(%struct.aic7xxx_host* %241, i8 zeroext %244, i32 %245)
  br label %247

247:                                              ; preds = %240, %233
  %248 = load i32, i32* %17, align 4
  ret i32 %248
}

declare dso_local zeroext i8 @aic_inb(%struct.aic7xxx_host*, i32) #1

declare dso_local i64 @aic7xxx_match_scb(%struct.aic7xxx_host*, %struct.aic7xxx_scb*, i32, i32, i32, i8 zeroext) #1

declare dso_local i32 @scbq_remove(i32*, %struct.aic7xxx_scb*) #1

declare dso_local %struct.TYPE_6__* @AIC_DEV(i32) #1

declare dso_local i32 @scbq_insert_tail(i32*, %struct.aic7xxx_scb*) #1

declare dso_local i64 @aic7xxx_index_busy_target(%struct.aic7xxx_host*, i32, i32) #1

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
