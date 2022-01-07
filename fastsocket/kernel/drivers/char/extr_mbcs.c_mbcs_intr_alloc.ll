; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_intr_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_intr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx_dev = type { %struct.TYPE_2__, %struct.mbcs_soft* }
%struct.TYPE_2__ = type { i32 }
%struct.mbcs_soft = type { %struct.sn_irq_info*, %struct.sn_irq_info*, %struct.sn_irq_info*, %struct.algoblock, %struct.putdma, %struct.getdma }
%struct.sn_irq_info = type { i32, i32 }
%struct.algoblock = type { i32, i32 }
%struct.putdma = type { i32, i32 }
%struct.getdma = type { i32, i32 }

@TIOCX_CORELET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@mbcs_completion_intr_handler = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"MBCS get intr\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"MBCS put intr\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"MBCS algo intr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx_dev*)* @mbcs_intr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbcs_intr_alloc(%struct.cx_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx_dev*, align 8
  %4 = alloca %struct.sn_irq_info*, align 8
  %5 = alloca %struct.mbcs_soft*, align 8
  %6 = alloca %struct.getdma*, align 8
  %7 = alloca %struct.putdma*, align 8
  %8 = alloca %struct.algoblock*, align 8
  store %struct.cx_dev* %0, %struct.cx_dev** %3, align 8
  %9 = load %struct.cx_dev*, %struct.cx_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %9, i32 0, i32 1
  %11 = load %struct.mbcs_soft*, %struct.mbcs_soft** %10, align 8
  store %struct.mbcs_soft* %11, %struct.mbcs_soft** %5, align 8
  %12 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %13 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %12, i32 0, i32 5
  store %struct.getdma* %13, %struct.getdma** %6, align 8
  %14 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %15 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %14, i32 0, i32 4
  store %struct.putdma* %15, %struct.putdma** %7, align 8
  %16 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %17 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %16, i32 0, i32 3
  store %struct.algoblock* %17, %struct.algoblock** %8, align 8
  %18 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %19 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %18, i32 0, i32 0
  store %struct.sn_irq_info* null, %struct.sn_irq_info** %19, align 8
  %20 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %21 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %20, i32 0, i32 1
  store %struct.sn_irq_info* null, %struct.sn_irq_info** %21, align 8
  %22 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %23 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %22, i32 0, i32 2
  store %struct.sn_irq_info* null, %struct.sn_irq_info** %23, align 8
  %24 = load %struct.cx_dev*, %struct.cx_dev** %3, align 8
  %25 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TIOCX_CORELET, align 4
  %29 = call %struct.sn_irq_info* @tiocx_irq_alloc(i32 %27, i32 %28, i32 -1, i32 -1, i32 -1)
  store %struct.sn_irq_info* %29, %struct.sn_irq_info** %4, align 8
  %30 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %31 = icmp eq %struct.sn_irq_info* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %219

35:                                               ; preds = %1
  %36 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %37 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %38 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %37, i32 0, i32 0
  store %struct.sn_irq_info* %36, %struct.sn_irq_info** %38, align 8
  %39 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %40 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.getdma*, %struct.getdma** %6, align 8
  %43 = getelementptr inbounds %struct.getdma, %struct.getdma* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %45 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.getdma*, %struct.getdma** %6, align 8
  %48 = getelementptr inbounds %struct.getdma, %struct.getdma* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %50 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @mbcs_completion_intr_handler, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i32, i32* @IRQF_SHARED, align 4
  %55 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %56 = bitcast %struct.mbcs_soft* %55 to i8*
  %57 = call i64 @request_irq(i32 %51, i8* %53, i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %35
  %60 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %61 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %60, i32 0, i32 0
  %62 = load %struct.sn_irq_info*, %struct.sn_irq_info** %61, align 8
  %63 = call i32 @tiocx_irq_free(%struct.sn_irq_info* %62)
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %219

66:                                               ; preds = %35
  %67 = load %struct.cx_dev*, %struct.cx_dev** %3, align 8
  %68 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TIOCX_CORELET, align 4
  %72 = call %struct.sn_irq_info* @tiocx_irq_alloc(i32 %70, i32 %71, i32 -1, i32 -1, i32 -1)
  store %struct.sn_irq_info* %72, %struct.sn_irq_info** %4, align 8
  %73 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %74 = icmp eq %struct.sn_irq_info* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %66
  %76 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %77 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %76, i32 0, i32 0
  %78 = load %struct.sn_irq_info*, %struct.sn_irq_info** %77, align 8
  %79 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %82 = call i32 @free_irq(i32 %80, %struct.mbcs_soft* %81)
  %83 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %84 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %83, i32 0, i32 0
  %85 = load %struct.sn_irq_info*, %struct.sn_irq_info** %84, align 8
  %86 = call i32 @tiocx_irq_free(%struct.sn_irq_info* %85)
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %219

89:                                               ; preds = %66
  %90 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %91 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %92 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %91, i32 0, i32 1
  store %struct.sn_irq_info* %90, %struct.sn_irq_info** %92, align 8
  %93 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %94 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.putdma*, %struct.putdma** %7, align 8
  %97 = getelementptr inbounds %struct.putdma, %struct.putdma* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %99 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.putdma*, %struct.putdma** %7, align 8
  %102 = getelementptr inbounds %struct.putdma, %struct.putdma* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %104 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* @mbcs_completion_intr_handler, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load i32, i32* @IRQF_SHARED, align 4
  %109 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %110 = bitcast %struct.mbcs_soft* %109 to i8*
  %111 = call i64 @request_irq(i32 %105, i8* %107, i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %89
  %114 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %115 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %114, i32 0, i32 1
  %116 = load %struct.sn_irq_info*, %struct.sn_irq_info** %115, align 8
  %117 = call i32 @tiocx_irq_free(%struct.sn_irq_info* %116)
  %118 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %119 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %118, i32 0, i32 0
  %120 = load %struct.sn_irq_info*, %struct.sn_irq_info** %119, align 8
  %121 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %124 = call i32 @free_irq(i32 %122, %struct.mbcs_soft* %123)
  %125 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %126 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %125, i32 0, i32 0
  %127 = load %struct.sn_irq_info*, %struct.sn_irq_info** %126, align 8
  %128 = call i32 @tiocx_irq_free(%struct.sn_irq_info* %127)
  %129 = load i32, i32* @EAGAIN, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %219

131:                                              ; preds = %89
  %132 = load %struct.cx_dev*, %struct.cx_dev** %3, align 8
  %133 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @TIOCX_CORELET, align 4
  %137 = call %struct.sn_irq_info* @tiocx_irq_alloc(i32 %135, i32 %136, i32 -1, i32 -1, i32 -1)
  store %struct.sn_irq_info* %137, %struct.sn_irq_info** %4, align 8
  %138 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %139 = icmp eq %struct.sn_irq_info* %138, null
  br i1 %139, label %140, label %165

140:                                              ; preds = %131
  %141 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %142 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %141, i32 0, i32 1
  %143 = load %struct.sn_irq_info*, %struct.sn_irq_info** %142, align 8
  %144 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %147 = call i32 @free_irq(i32 %145, %struct.mbcs_soft* %146)
  %148 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %149 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %148, i32 0, i32 1
  %150 = load %struct.sn_irq_info*, %struct.sn_irq_info** %149, align 8
  %151 = call i32 @tiocx_irq_free(%struct.sn_irq_info* %150)
  %152 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %153 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %152, i32 0, i32 0
  %154 = load %struct.sn_irq_info*, %struct.sn_irq_info** %153, align 8
  %155 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %158 = call i32 @free_irq(i32 %156, %struct.mbcs_soft* %157)
  %159 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %160 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %159, i32 0, i32 0
  %161 = load %struct.sn_irq_info*, %struct.sn_irq_info** %160, align 8
  %162 = call i32 @tiocx_irq_free(%struct.sn_irq_info* %161)
  %163 = load i32, i32* @EAGAIN, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %219

165:                                              ; preds = %131
  %166 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %167 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %168 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %167, i32 0, i32 2
  store %struct.sn_irq_info* %166, %struct.sn_irq_info** %168, align 8
  %169 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %170 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.algoblock*, %struct.algoblock** %8, align 8
  %173 = getelementptr inbounds %struct.algoblock, %struct.algoblock* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %175 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.algoblock*, %struct.algoblock** %8, align 8
  %178 = getelementptr inbounds %struct.algoblock, %struct.algoblock* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %180 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i64, i64* @mbcs_completion_intr_handler, align 8
  %183 = inttoptr i64 %182 to i8*
  %184 = load i32, i32* @IRQF_SHARED, align 4
  %185 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %186 = bitcast %struct.mbcs_soft* %185 to i8*
  %187 = call i64 @request_irq(i32 %181, i8* %183, i32 %184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %218

189:                                              ; preds = %165
  %190 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %191 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %190, i32 0, i32 2
  %192 = load %struct.sn_irq_info*, %struct.sn_irq_info** %191, align 8
  %193 = call i32 @tiocx_irq_free(%struct.sn_irq_info* %192)
  %194 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %195 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %194, i32 0, i32 1
  %196 = load %struct.sn_irq_info*, %struct.sn_irq_info** %195, align 8
  %197 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %200 = call i32 @free_irq(i32 %198, %struct.mbcs_soft* %199)
  %201 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %202 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %201, i32 0, i32 1
  %203 = load %struct.sn_irq_info*, %struct.sn_irq_info** %202, align 8
  %204 = call i32 @tiocx_irq_free(%struct.sn_irq_info* %203)
  %205 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %206 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %205, i32 0, i32 0
  %207 = load %struct.sn_irq_info*, %struct.sn_irq_info** %206, align 8
  %208 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %211 = call i32 @free_irq(i32 %209, %struct.mbcs_soft* %210)
  %212 = load %struct.mbcs_soft*, %struct.mbcs_soft** %5, align 8
  %213 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %212, i32 0, i32 0
  %214 = load %struct.sn_irq_info*, %struct.sn_irq_info** %213, align 8
  %215 = call i32 @tiocx_irq_free(%struct.sn_irq_info* %214)
  %216 = load i32, i32* @EAGAIN, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  br label %219

218:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %218, %189, %140, %113, %75, %59, %32
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local %struct.sn_irq_info* @tiocx_irq_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i64 @request_irq(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @tiocx_irq_free(%struct.sn_irq_info*) #1

declare dso_local i32 @free_irq(i32, %struct.mbcs_soft*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
