; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_output_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_output_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.qeth_card = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_13__, i32, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { %struct.qeth_qdio_out_q** }
%struct.qeth_qdio_out_q = type { %struct.TYPE_14__*, i32, %struct.TYPE_10__*, %struct.qeth_qdio_out_buffer** }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.qeth_qdio_out_buffer = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"qdouhdl\00", align 1
@QDIO_ERROR_ACTIVATE_CHECK_CONDITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"achkcond\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@QDIO_OUTBUF_STATE_FLAG_PENDING = common dso_local global i32 0, align 4
@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_PRIMED = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_PENDING = common dso_local global i32 0, align 4
@TX_NOTIFY_PENDING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"outofbuf\00", align 1
@QETH_QDIO_BUF_EMPTY = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_qdio_output_handler(%struct.ccw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.qeth_card*, align 8
  %14 = alloca %struct.qeth_qdio_out_q*, align 8
  %15 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = inttoptr i64 %19 to %struct.qeth_card*
  store %struct.qeth_card* %20, %struct.qeth_card** %13, align 8
  %21 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %24, i64 %26
  %28 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %27, align 8
  store %struct.qeth_qdio_out_q* %28, %struct.qeth_qdio_out_q** %14, align 8
  %29 = load i32, i32* @TRACE, align 4
  %30 = call i32 @QETH_DBF_TEXT(i32 %29, i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @QDIO_ERROR_ACTIVATE_CHECK_CONDITION, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %6
  %36 = load i32, i32* @TRACE, align 4
  %37 = call i32 @QETH_DBF_TEXT(i32 %36, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @TRACE, align 4
  %39 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %40 = call i32 @CARD_BUS_ID(%struct.qeth_card* %39)
  %41 = call i32 @QETH_DBF_TEXT_(i32 %38, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @netif_stop_queue(i32 %44)
  %46 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %47 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %46)
  br label %228

48:                                               ; preds = %6
  %49 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %56 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = call i64 (...) @qeth_get_micros()
  %61 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %54, %48
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %185, %64
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %188

72:                                               ; preds = %66
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %75 = srem i32 %73, %74
  store i32 %75, i32* %17, align 4
  %76 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %77 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %76, i32 0, i32 3
  %78 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %78, i64 %80
  %82 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %81, align 8
  store %struct.qeth_qdio_out_buffer* %82, %struct.qeth_qdio_out_buffer** %15, align 8
  %83 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %84 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %15, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @qeth_handle_send_error(%struct.qeth_card* %83, %struct.qeth_qdio_out_buffer* %84, i32 %85)
  %87 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %88 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %87, i32 0, i32 2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = icmp ne %struct.TYPE_10__* %89, null
  br i1 %90, label %91, label %155

91:                                               ; preds = %72
  %92 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %93 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %92, i32 0, i32 2
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @QDIO_OUTBUF_STATE_FLAG_PENDING, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %155

103:                                              ; preds = %91
  %104 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %105 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %109 = icmp ne i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @BUG_ON(i32 %110)
  %112 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %15, align 8
  %113 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %112, i32 0, i32 2
  %114 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %115 = load i32, i32* @QETH_QDIO_BUF_PENDING, align 4
  %116 = call i64 @atomic_cmpxchg(i32* %113, i64 %114, i32 %115)
  %117 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %103
  %120 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %121 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %15, align 8
  %122 = load i32, i32* @TX_NOTIFY_PENDING, align 4
  %123 = call i32 @qeth_notify_skbs(%struct.qeth_qdio_out_q* %120, %struct.qeth_qdio_out_buffer* %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %103
  %125 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %126 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %15, align 8
  %134 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %17, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %140 = icmp sge i32 %138, %139
  br label %141

141:                                              ; preds = %137, %124
  %142 = phi i1 [ true, %124 ], [ %140, %137 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @BUG_ON(i32 %143)
  %145 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %146 = load i32, i32* %17, align 4
  %147 = call i64 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %141
  %150 = load i32, i32* @TRACE, align 4
  %151 = call i32 @QETH_DBF_TEXT(i32 %150, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %152 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %153 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %152)
  br label %154

154:                                              ; preds = %149, %141
  br label %181

155:                                              ; preds = %91, %72
  %156 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %157 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %155
  %163 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %15, align 8
  %164 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %163, i32 0, i32 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i64 15
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @qeth_compute_cq_notification(i32 %170, i32 0)
  store i32 %171, i32* %18, align 4
  %172 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %173 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %15, align 8
  %174 = load i32, i32* %18, align 4
  %175 = call i32 @qeth_notify_skbs(%struct.qeth_qdio_out_q* %172, %struct.qeth_qdio_out_buffer* %173, i32 %174)
  br label %176

176:                                              ; preds = %162, %155
  %177 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %178 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %15, align 8
  %179 = load i32, i32* @QETH_QDIO_BUF_EMPTY, align 4
  %180 = call i32 @qeth_clear_output_buffer(%struct.qeth_qdio_out_q* %177, %struct.qeth_qdio_out_buffer* %178, i32 %179)
  br label %181

181:                                              ; preds = %176, %154
  %182 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %183 = load i32, i32* %17, align 4
  %184 = call i32 @qeth_cleanup_handled_pending(%struct.qeth_qdio_out_q* %182, i32 %183, i32 0)
  br label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %16, align 4
  br label %66

188:                                              ; preds = %66
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %191 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %190, i32 0, i32 1
  %192 = call i32 @atomic_sub(i32 %189, i32* %191)
  %193 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %194 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %188
  %200 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %201 = call i32 @qeth_check_outbound_queue(%struct.qeth_qdio_out_q* %200)
  br label %202

202:                                              ; preds = %199, %188
  %203 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %14, align 8
  %204 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %203, i32 0, i32 0
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @netif_wake_queue(i32 %207)
  %209 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %210 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %228

214:                                              ; preds = %202
  %215 = call i64 (...) @qeth_get_micros()
  %216 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %217 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = sub nsw i64 %215, %219
  %221 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %222 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %220
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %223, align 8
  br label %228

228:                                              ; preds = %35, %214, %202
  ret void
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @CARD_BUS_ID(%struct.qeth_card*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

declare dso_local i64 @qeth_get_micros(...) #1

declare dso_local i32 @qeth_handle_send_error(%struct.qeth_card*, %struct.qeth_qdio_out_buffer*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

declare dso_local i32 @qeth_notify_skbs(%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, i32) #1

declare dso_local i64 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i32 @qeth_compute_cq_notification(i32, i32) #1

declare dso_local i32 @qeth_clear_output_buffer(%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, i32) #1

declare dso_local i32 @qeth_cleanup_handled_pending(%struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @qeth_check_outbound_queue(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
