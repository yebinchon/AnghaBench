; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_idx_activate_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_idx_activate_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_channel = type { i64, %struct.TYPE_26__*, i32, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.qeth_cmd_buffer = type { void (%struct.qeth_channel.0*, %struct.qeth_cmd_buffer*)*, %struct.TYPE_25__* }
%struct.qeth_channel.0 = type opaque
%struct.qeth_card = type { i32, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.qeth_channel }
%struct.TYPE_24__ = type { i32, i32, i32, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.ccw_dev_id = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"idxactch\00", align 1
@WRITE_CCW = common dso_local global i32* null, align 8
@IDX_ACTIVATE_SIZE = common dso_local global i32 0, align 4
@IDX_ACTIVATE_WRITE = common dso_local global i32* null, align 8
@QETH_SEQ_NO_LENGTH = common dso_local global i32 0, align 4
@IDX_ACTIVATE_READ = common dso_local global i32* null, align 8
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"noirqpnd\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Error1 in activating channel. rc=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@CH_STATE_ACTIVATING = common dso_local global i64 0, align 8
@QETH_TIMEOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"The qeth device driver failed to recover an error on the device\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s IDX activate timed out\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"2err%d\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_channel*, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)*)* @qeth_idx_activate_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_idx_activate_channel(%struct.qeth_channel* %0, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_channel*, align 8
  %5 = alloca void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)*, align 8
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.qeth_cmd_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ccw_dev_id, align 4
  store %struct.qeth_channel* %0, %struct.qeth_channel** %4, align 8
  store void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)* %1, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)** %5, align 8
  %13 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %14 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %13, i32 0, i32 1
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %16 = call %struct.qeth_card* @CARD_FROM_CDEV(%struct.TYPE_26__* %15)
  store %struct.qeth_card* %16, %struct.qeth_card** %6, align 8
  %17 = load i32, i32* @SETUP, align 4
  %18 = call i32 @QETH_DBF_TEXT(i32 %17, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %20 = call %struct.qeth_cmd_buffer* @qeth_get_buffer(%struct.qeth_channel* %19)
  store %struct.qeth_cmd_buffer* %20, %struct.qeth_cmd_buffer** %7, align 8
  %21 = load void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)*, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)** %5, align 8
  %22 = bitcast void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)* %21 to void (%struct.qeth_channel.0*, %struct.qeth_cmd_buffer*)*
  %23 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %23, i32 0, i32 0
  store void (%struct.qeth_channel.0*, %struct.qeth_cmd_buffer*)* %22, void (%struct.qeth_channel.0*, %struct.qeth_cmd_buffer*)** %24, align 8
  %25 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %26 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %25, i32 0, i32 3
  %27 = load i32*, i32** @WRITE_CCW, align 8
  %28 = call i32 @memcpy(%struct.TYPE_25__* %26, i32* %27, i32 4)
  %29 = load i32, i32* @IDX_ACTIVATE_SIZE, align 4
  %30 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %31 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %34 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %33, i32 0, i32 1
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %36 = call i64 @__pa(%struct.TYPE_25__* %35)
  %37 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %38 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  %40 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %41 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 4
  %43 = icmp eq %struct.qeth_channel* %40, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %2
  %45 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %46 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %45, i32 0, i32 1
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %46, align 8
  %48 = load i32*, i32** @IDX_ACTIVATE_WRITE, align 8
  %49 = load i32, i32* @IDX_ACTIVATE_SIZE, align 4
  %50 = call i32 @memcpy(%struct.TYPE_25__* %47, i32* %48, i32 %49)
  %51 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %52 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %51, i32 0, i32 1
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = call %struct.TYPE_25__* @QETH_TRANSPORT_HEADER_SEQ_NO(%struct.TYPE_25__* %53)
  %55 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %56 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* @QETH_SEQ_NO_LENGTH, align 4
  %59 = call i32 @memcpy(%struct.TYPE_25__* %54, i32* %57, i32 %58)
  %60 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %81

65:                                               ; preds = %2
  %66 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %66, i32 0, i32 1
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = load i32*, i32** @IDX_ACTIVATE_READ, align 8
  %70 = load i32, i32* @IDX_ACTIVATE_SIZE, align 4
  %71 = call i32 @memcpy(%struct.TYPE_25__* %68, i32* %69, i32 %70)
  %72 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %73 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %72, i32 0, i32 1
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = call %struct.TYPE_25__* @QETH_TRANSPORT_HEADER_SEQ_NO(%struct.TYPE_25__* %74)
  %76 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %77 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* @QETH_SEQ_NO_LENGTH, align 4
  %80 = call i32 @memcpy(%struct.TYPE_25__* %75, i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %65, %44
  %82 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %83 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = or i32 %86, 128
  store i32 %87, i32* %10, align 4
  %88 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %88, i32 0, i32 1
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  %91 = call %struct.TYPE_25__* @QETH_IDX_ACT_PNO(%struct.TYPE_25__* %90)
  %92 = call i32 @memcpy(%struct.TYPE_25__* %91, i32* %10, i32 1)
  %93 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %94 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %93, i32 0, i32 1
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %94, align 8
  %96 = call %struct.TYPE_25__* @QETH_IDX_ACT_ISSUER_RM_TOKEN(%struct.TYPE_25__* %95)
  %97 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %98 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %101 = call i32 @memcpy(%struct.TYPE_25__* %96, i32* %99, i32 %100)
  %102 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %103 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %102, i32 0, i32 1
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = call %struct.TYPE_25__* @QETH_IDX_ACT_FUNC_LEVEL(%struct.TYPE_25__* %104)
  %106 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %107 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = call i32 @memcpy(%struct.TYPE_25__* %105, i32* %108, i32 4)
  %110 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %111 = call i32 @CARD_DDEV(%struct.qeth_card* %110)
  %112 = call i32 @ccw_device_get_id(i32 %111, %struct.ccw_dev_id* %12)
  %113 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %114 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %113, i32 0, i32 1
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  %116 = call %struct.TYPE_25__* @QETH_IDX_ACT_QDIO_DEV_CUA(%struct.TYPE_25__* %115)
  %117 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %12, i32 0, i32 0
  %118 = call i32 @memcpy(%struct.TYPE_25__* %116, i32* %117, i32 2)
  %119 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %120 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %125 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %123, %127
  store i32 %128, i32* %9, align 4
  %129 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %130 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %129, i32 0, i32 1
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %130, align 8
  %132 = call %struct.TYPE_25__* @QETH_IDX_ACT_QDIO_DEV_REALADDR(%struct.TYPE_25__* %131)
  %133 = call i32 @memcpy(%struct.TYPE_25__* %132, i32* %9, i32 2)
  %134 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %135 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %138 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %137, i32 0, i32 2
  %139 = call i64 @atomic_cmpxchg(i32* %138, i32 0, i32 1)
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @wait_event(i32 %136, i32 %141)
  %143 = load i32, i32* @SETUP, align 4
  %144 = call i32 @QETH_DBF_TEXT(i32 %143, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %145 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %146 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %145, i32 0, i32 1
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %146, align 8
  %148 = call i32 @get_ccwdev_lock(%struct.TYPE_26__* %147)
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @spin_lock_irqsave(i32 %148, i64 %149)
  %151 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %152 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %151, i32 0, i32 1
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %152, align 8
  %154 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %155 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %154, i32 0, i32 3
  %156 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %157 = ptrtoint %struct.qeth_cmd_buffer* %156 to i32
  %158 = call i32 @ccw_device_start(%struct.TYPE_26__* %153, %struct.TYPE_25__* %155, i32 %157, i32 0, i32 0)
  store i32 %158, i32* %11, align 4
  %159 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %160 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %159, i32 0, i32 1
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %160, align 8
  %162 = call i32 @get_ccwdev_lock(%struct.TYPE_26__* %161)
  %163 = load i64, i64* %8, align 8
  %164 = call i32 @spin_unlock_irqrestore(i32 %162, i64 %163)
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %81
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @SETUP, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @QETH_DBF_TEXT_(i32 %170, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %174 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %173, i32 0, i32 2
  %175 = call i32 @atomic_set(i32* %174, i32 0)
  %176 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %177 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %176, i32 0, i32 0
  %178 = call i32 @wake_up(i32* %177)
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %3, align 4
  br label %228

180:                                              ; preds = %81
  %181 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %182 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %185 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @CH_STATE_ACTIVATING, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* @QETH_TIMEOUT, align 4
  %191 = call i32 @wait_event_interruptible_timeout(i32 %183, i32 %189, i32 %190)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @ERESTARTSYS, align 4
  %194 = sub nsw i32 0, %193
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %180
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %3, align 4
  br label %228

198:                                              ; preds = %180
  %199 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %200 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @CH_STATE_ACTIVATING, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %224

204:                                              ; preds = %198
  %205 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %206 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %205, i32 0, i32 1
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 0
  %209 = call i32 @dev_warn(i32* %208, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %210 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %211 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %210, i32 0, i32 1
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = call i32 @dev_name(i32* %213)
  %215 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* @SETUP, align 4
  %217 = load i32, i32* @ETIME, align 4
  %218 = sub nsw i32 0, %217
  %219 = call i32 @QETH_DBF_TEXT_(i32 %216, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %218)
  %220 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %221 = call i32 @qeth_clear_cmd_buffers(%struct.qeth_channel* %220)
  %222 = load i32, i32* @ETIME, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %3, align 4
  br label %228

224:                                              ; preds = %198
  %225 = load %struct.qeth_channel*, %struct.qeth_channel** %4, align 8
  %226 = load void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)*, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)** %5, align 8
  %227 = call i32 @qeth_idx_activate_get_answer(%struct.qeth_channel* %225, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)* %226)
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %224, %204, %196, %167
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local %struct.qeth_card* @CARD_FROM_CDEV(%struct.TYPE_26__*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_buffer(%struct.qeth_channel*) #1

declare dso_local i32 @memcpy(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i64 @__pa(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @QETH_TRANSPORT_HEADER_SEQ_NO(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @QETH_IDX_ACT_PNO(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @QETH_IDX_ACT_ISSUER_RM_TOKEN(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @QETH_IDX_ACT_FUNC_LEVEL(%struct.TYPE_25__*) #1

declare dso_local i32 @ccw_device_get_id(i32, %struct.ccw_dev_id*) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local %struct.TYPE_25__* @QETH_IDX_ACT_QDIO_DEV_CUA(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @QETH_IDX_ACT_QDIO_DEV_REALADDR(%struct.TYPE_25__*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_26__*) #1

declare dso_local i32 @ccw_device_start(%struct.TYPE_26__*, %struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @qeth_clear_cmd_buffers(%struct.qeth_channel*) #1

declare dso_local i32 @qeth_idx_activate_get_answer(%struct.qeth_channel*, void (%struct.qeth_channel*, %struct.qeth_cmd_buffer*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
