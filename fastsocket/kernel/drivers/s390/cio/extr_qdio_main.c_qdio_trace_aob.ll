; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_trace_aob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_trace_aob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i32 }
%struct.qdio_q = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.qaob = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64, i32*, i64*, i64* }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"AOB%d:%lx\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"RES00:%lx\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"RES01:%lx\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"RES02:%lx\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"RES03:%lx\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"RES04:%lx\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"RES05:%lx\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"RES1:%x\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"RES2:%x\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"RES3:%x\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"AORC:%u\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"FLAGS:%u\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"CBTBS:%u\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SBC:%u\00", align 1
@QDIO_MAX_ELEMENTS_PER_BUFFER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"SBA%d:%lx\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"rSBA%d:%lx\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"DC%d:%u\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"rDC%d:%u\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"USER0:%lx\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"RES4%d:%lx\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"USER1:%lx\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"USER2:%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*, %struct.qdio_q*, i32, %struct.qaob*)* @qdio_trace_aob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_trace_aob(%struct.qdio_irq* %0, %struct.qdio_q* %1, i32 %2, %struct.qaob* %3) #0 {
  %5 = alloca %struct.qdio_irq*, align 8
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qaob*, align 8
  %9 = alloca i32, align 4
  store %struct.qdio_irq* %0, %struct.qdio_irq** %5, align 8
  store %struct.qdio_q* %1, %struct.qdio_q** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.qaob* %3, %struct.qaob** %8, align 8
  %10 = load i32, i32* @DBF_INFO, align 4
  %11 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.qaob*, %struct.qaob** %8, align 8
  %15 = call i64 @virt_to_phys(%struct.qaob* %14)
  %16 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %10, %struct.qdio_irq* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %15)
  %17 = load i32, i32* @DBF_INFO, align 4
  %18 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %19 = load %struct.qaob*, %struct.qaob** %8, align 8
  %20 = getelementptr inbounds %struct.qaob, %struct.qaob* %19, i32 0, i32 13
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %17, %struct.qdio_irq* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @DBF_INFO, align 4
  %26 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %27 = load %struct.qaob*, %struct.qaob** %8, align 8
  %28 = getelementptr inbounds %struct.qaob, %struct.qaob* %27, i32 0, i32 13
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %25, %struct.qdio_irq* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @DBF_INFO, align 4
  %34 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %35 = load %struct.qaob*, %struct.qaob** %8, align 8
  %36 = getelementptr inbounds %struct.qaob, %struct.qaob* %35, i32 0, i32 13
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %33, %struct.qdio_irq* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @DBF_INFO, align 4
  %42 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %43 = load %struct.qaob*, %struct.qaob** %8, align 8
  %44 = getelementptr inbounds %struct.qaob, %struct.qaob* %43, i32 0, i32 13
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %41, %struct.qdio_irq* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @DBF_INFO, align 4
  %50 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %51 = load %struct.qaob*, %struct.qaob** %8, align 8
  %52 = getelementptr inbounds %struct.qaob, %struct.qaob* %51, i32 0, i32 13
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 4
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %49, %struct.qdio_irq* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @DBF_INFO, align 4
  %58 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %59 = load %struct.qaob*, %struct.qaob** %8, align 8
  %60 = getelementptr inbounds %struct.qaob, %struct.qaob* %59, i32 0, i32 13
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 5
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %57, %struct.qdio_irq* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @DBF_INFO, align 4
  %66 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %67 = load %struct.qaob*, %struct.qaob** %8, align 8
  %68 = getelementptr inbounds %struct.qaob, %struct.qaob* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %65, %struct.qdio_irq* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @DBF_INFO, align 4
  %72 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %73 = load %struct.qaob*, %struct.qaob** %8, align 8
  %74 = getelementptr inbounds %struct.qaob, %struct.qaob* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %71, %struct.qdio_irq* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @DBF_INFO, align 4
  %78 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %79 = load %struct.qaob*, %struct.qaob** %8, align 8
  %80 = getelementptr inbounds %struct.qaob, %struct.qaob* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %77, %struct.qdio_irq* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @DBF_INFO, align 4
  %84 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %85 = load %struct.qaob*, %struct.qaob** %8, align 8
  %86 = getelementptr inbounds %struct.qaob, %struct.qaob* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %83, %struct.qdio_irq* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @DBF_INFO, align 4
  %90 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %91 = load %struct.qaob*, %struct.qaob** %8, align 8
  %92 = getelementptr inbounds %struct.qaob, %struct.qaob* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %89, %struct.qdio_irq* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* @DBF_INFO, align 4
  %96 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %97 = load %struct.qaob*, %struct.qaob** %8, align 8
  %98 = getelementptr inbounds %struct.qaob, %struct.qaob* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %95, %struct.qdio_irq* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* @DBF_INFO, align 4
  %102 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %103 = load %struct.qaob*, %struct.qaob** %8, align 8
  %104 = getelementptr inbounds %struct.qaob, %struct.qaob* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %101, %struct.qdio_irq* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 %105)
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %174, %4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @QDIO_MAX_ELEMENTS_PER_BUFFER, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %177

111:                                              ; preds = %107
  %112 = load i32, i32* @DBF_INFO, align 4
  %113 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.qaob*, %struct.qaob** %8, align 8
  %117 = getelementptr inbounds %struct.qaob, %struct.qaob* %116, i32 0, i32 12
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %112, %struct.qdio_irq* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i64 %115, i64 %122)
  %124 = load i32, i32* @DBF_INFO, align 4
  %125 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %129 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %130, i64 %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %124, %struct.qdio_irq* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i64 %127, i64 %141)
  %143 = load i32, i32* @DBF_INFO, align 4
  %144 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.qaob*, %struct.qaob** %8, align 8
  %148 = getelementptr inbounds %struct.qaob, %struct.qaob* %147, i32 0, i32 11
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %143, %struct.qdio_irq* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i64 %146, i32 %153)
  %155 = load i32, i32* @DBF_INFO, align 4
  %156 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %160 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %161, i64 %163
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %155, %struct.qdio_irq* %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i64 %158, i32 %172)
  br label %174

174:                                              ; preds = %111
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %107

177:                                              ; preds = %107
  %178 = load i32, i32* @DBF_INFO, align 4
  %179 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %180 = load %struct.qaob*, %struct.qaob** %8, align 8
  %181 = getelementptr inbounds %struct.qaob, %struct.qaob* %180, i32 0, i32 10
  %182 = load i64, i64* %181, align 8
  %183 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %178, %struct.qdio_irq* %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i64 %182)
  store i32 0, i32* %9, align 4
  br label %184

184:                                              ; preds = %200, %177
  %185 = load i32, i32* %9, align 4
  %186 = icmp slt i32 %185, 2
  br i1 %186, label %187, label %203

187:                                              ; preds = %184
  %188 = load i32, i32* @DBF_INFO, align 4
  %189 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = load %struct.qaob*, %struct.qaob** %8, align 8
  %193 = getelementptr inbounds %struct.qaob, %struct.qaob* %192, i32 0, i32 9
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %188, %struct.qdio_irq* %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i64 %191, i64 %198)
  br label %200

200:                                              ; preds = %187
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %184

203:                                              ; preds = %184
  %204 = load i32, i32* @DBF_INFO, align 4
  %205 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %206 = load %struct.qaob*, %struct.qaob** %8, align 8
  %207 = getelementptr inbounds %struct.qaob, %struct.qaob* %206, i32 0, i32 8
  %208 = load i64, i64* %207, align 8
  %209 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %204, %struct.qdio_irq* %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i64 %208)
  %210 = load i32, i32* @DBF_INFO, align 4
  %211 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %212 = load %struct.qaob*, %struct.qaob** %8, align 8
  %213 = getelementptr inbounds %struct.qaob, %struct.qaob* %212, i32 0, i32 7
  %214 = load i64, i64* %213, align 8
  %215 = call i32 (i32, %struct.qdio_irq*, i8*, i64, ...) @DBF_DEV_EVENT(i32 %210, %struct.qdio_irq* %211, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i64 %214)
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.qdio_irq*, i8*, i64, ...) #1

declare dso_local i64 @virt_to_phys(%struct.qaob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
