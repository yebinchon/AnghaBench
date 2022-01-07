; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_flush_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_flush_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32, %struct.TYPE_20__*, i32, i32, i32, %struct.TYPE_12__*, %struct.qeth_qdio_out_buffer** }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { i32, i64, i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.qeth_qdio_out_buffer* }
%struct.qeth_qdio_out_buffer = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@QETH_HIGH_WATERMARK_PACK = common dso_local global i64 0, align 8
@QETH_WATERMARK_PACK_FUZZ = common dso_local global i64 0, align 8
@SBAL_SFLAGS0_PCI_REQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@QDIO_FLAG_SYNC_OUTPUT = common dso_local global i32 0, align 4
@QDIO_FLAG_PCI_OUT = common dso_local global i32 0, align 4
@QDIO_ERROR_SIGA_TARGET = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"flushbuf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" q%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" idx%d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" c%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" err%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*, i32, i32)* @qeth_flush_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_flush_buffers(%struct.qeth_qdio_out_q* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_qdio_out_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %122, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %125

19:                                               ; preds = %13
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %24 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %23, i32 0, i32 6
  %25 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %25, i64 %27
  %29 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %28, align 8
  store %struct.qeth_qdio_out_buffer* %29, %struct.qeth_qdio_out_buffer** %7, align 8
  %30 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %31 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, align 8
  %32 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %31, i32 0, i32 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, align 8
  %37 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %30
  store i32 %44, i32* %42, align 4
  %45 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %46 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %45, i32 0, i32 5
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = icmp ne %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %19
  %50 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, align 8
  %51 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %52 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %51, i32 0, i32 5
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store %struct.qeth_qdio_out_buffer* %50, %struct.qeth_qdio_out_buffer** %57, align 8
  br label %58

58:                                               ; preds = %49, %19
  %59 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %60 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %59, i32 0, i32 1
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %122

68:                                               ; preds = %58
  %69 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %70 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %101, label %73

73:                                               ; preds = %68
  %74 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %75 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %74, i32 0, i32 2
  %76 = call i64 @atomic_read(i32* %75)
  %77 = load i64, i64* @QETH_HIGH_WATERMARK_PACK, align 8
  %78 = load i64, i64* @QETH_WATERMARK_PACK_FUZZ, align 8
  %79 = sub nsw i64 %77, %78
  %80 = icmp sge i64 %76, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %73
  %82 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %83 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %82, i32 0, i32 3
  %84 = call i64 @atomic_read(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %81
  %87 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %88 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %87, i32 0, i32 3
  %89 = call i32 @atomic_inc(i32* %88)
  %90 = load i32, i32* @SBAL_SFLAGS0_PCI_REQ, align 4
  %91 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, align 8
  %92 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %91, i32 0, i32 1
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %90
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %86, %81, %73
  br label %121

101:                                              ; preds = %68
  %102 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %103 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %102, i32 0, i32 3
  %104 = call i64 @atomic_read(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %101
  %107 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %108 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %107, i32 0, i32 3
  %109 = call i32 @atomic_inc(i32* %108)
  %110 = load i32, i32* @SBAL_SFLAGS0_PCI_REQ, align 4
  %111 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, align 8
  %112 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %111, i32 0, i32 1
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %110
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %106, %101
  br label %121

121:                                              ; preds = %120, %100
  br label %122

122:                                              ; preds = %121, %67
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %13

125:                                              ; preds = %13
  %126 = load i32, i32* @jiffies, align 4
  %127 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %128 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %127, i32 0, i32 1
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  store i32 %126, i32* %132, align 4
  %133 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %134 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %133, i32 0, i32 1
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %125
  %141 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %142 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %141, i32 0, i32 1
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = call i64 (...) @qeth_get_micros()
  %149 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %150 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %149, i32 0, i32 1
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  store i64 %148, i64* %153, align 8
  br label %154

154:                                              ; preds = %140, %125
  %155 = load i32, i32* @QDIO_FLAG_SYNC_OUTPUT, align 4
  store i32 %155, i32* %10, align 4
  %156 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %157 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %156, i32 0, i32 3
  %158 = call i64 @atomic_read(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* @QDIO_FLAG_PCI_OUT, align 4
  %162 = load i32, i32* %10, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %160, %154
  %165 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %166 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %165, i32 0, i32 1
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %166, align 8
  %168 = call i32 @CARD_DDEV(%struct.TYPE_20__* %167)
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %171 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @do_QDIO(i32 %168, i32 %169, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %8, align 4
  %176 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %177 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %176, i32 0, i32 1
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %201

183:                                              ; preds = %164
  %184 = call i64 (...) @qeth_get_micros()
  %185 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %186 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %185, i32 0, i32 1
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %184, %190
  %192 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %193 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %192, i32 0, i32 1
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %191
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 8
  br label %201

201:                                              ; preds = %183, %164
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %204 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %203, i32 0, i32 2
  %205 = call i32 @atomic_add(i32 %202, i32* %204)
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %248

208:                                              ; preds = %201
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %211 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %210, i32 0, i32 1
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, %209
  store i32 %216, i32* %214, align 8
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @QDIO_ERROR_SIGA_TARGET, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %208
  br label %265

221:                                              ; preds = %208
  %222 = load i32, i32* @TRACE, align 4
  %223 = call i32 @QETH_DBF_TEXT(i32 %222, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %224 = load i32, i32* @TRACE, align 4
  %225 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %226 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @QETH_DBF_TEXT_(i32 %224, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @TRACE, align 4
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @QETH_DBF_TEXT_(i32 %229, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @TRACE, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @QETH_DBF_TEXT_(i32 %232, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @TRACE, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @QETH_DBF_TEXT_(i32 %235, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* @TRACE, align 4
  %239 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %240 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %239, i32 0, i32 1
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = call i32 @CARD_DDEV_ID(%struct.TYPE_20__* %241)
  %243 = call i32 @QETH_DBF_TEXT_(i32 %238, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %242)
  %244 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %245 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %244, i32 0, i32 1
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %245, align 8
  %247 = call i32 @qeth_schedule_recovery(%struct.TYPE_20__* %246)
  br label %265

248:                                              ; preds = %201
  %249 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %250 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %249, i32 0, i32 1
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %248
  %257 = load i32, i32* %6, align 4
  %258 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %259 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %258, i32 0, i32 1
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, %257
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %220, %221, %256, %248
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @qeth_get_micros(...) #1

declare dso_local i32 @do_QDIO(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CARD_DDEV(%struct.TYPE_20__*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @CARD_DDEV_ID(%struct.TYPE_20__*) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
