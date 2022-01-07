; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_send_control_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_send_control_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i64, %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qeth_cmd_buffer = type { i32, i64 }
%struct.qeth_reply = type { i32 (%struct.qeth_card.0*, %struct.qeth_reply*, i64)*, i32, i32, %struct.TYPE_9__*, i32, i32, i64, i8* }
%struct.qeth_card.0 = type opaque
%struct.TYPE_9__ = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sendctl\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@QETH_IDX_COMMAND_SEQNO = common dso_local global i64 0, align 8
@CTRL = common dso_local global i32 0, align 4
@QETH_DBF_CTRL_LEN = common dso_local global i32 0, align 4
@QETH_IPA_TIMEOUT = common dso_local global i64 0, align 8
@QETH_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"noirqpnd\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"%s qeth_send_control_data: ccw_device_start rc = %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" err%d\00", align 1
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@IPA_CMD_SETIP = common dso_local global i64 0, align 8
@QETH_PROT_IPV4 = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@QETH_CMD_BUFFER_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_send_control_data(%struct.qeth_card* %0, i32 %1, %struct.qeth_cmd_buffer* %2, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_cmd_buffer*, align 8
  %10 = alloca i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.qeth_reply*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.qeth_cmd_buffer* %2, %struct.qeth_cmd_buffer** %9, align 8
  store i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %3, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.qeth_reply* null, %struct.qeth_reply** %14, align 8
  %18 = load i32, i32* @TRACE, align 4
  %19 = call i32 @QETH_DBF_TEXT(i32 %18, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %26 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %29 = call i32 @qeth_release_buffer(i32 %27, %struct.qeth_cmd_buffer* %28)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %292

32:                                               ; preds = %5
  %33 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %34 = call %struct.qeth_reply* @qeth_alloc_reply(%struct.qeth_card* %33)
  store %struct.qeth_reply* %34, %struct.qeth_reply** %14, align 8
  %35 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %36 = icmp ne %struct.qeth_reply* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %292

40:                                               ; preds = %32
  %41 = load i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %10, align 8
  %42 = bitcast i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %41 to i32 (%struct.qeth_card.0*, %struct.qeth_reply*, i64)*
  %43 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %44 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %43, i32 0, i32 0
  store i32 (%struct.qeth_card.0*, %struct.qeth_reply*, i64)* %42, i32 (%struct.qeth_card.0*, %struct.qeth_reply*, i64)** %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %47 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  %48 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CARD_STATE_DOWN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i64, i64* @QETH_IDX_COMMAND_SEQNO, align 8
  %55 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %56 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %55, i32 0, i32 6
  store i64 %54, i64* %56, align 8
  br label %66

57:                                               ; preds = %40
  %58 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = sext i32 %61 to i64
  %64 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %65 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %64, i32 0, i32 6
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %57, %53
  %67 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %68 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %67, i32 0, i32 5
  %69 = call i32 @init_waitqueue_head(i32* %68)
  %70 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %71 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %70, i32 0, i32 3
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %75 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %74, i32 0, i32 4
  %76 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %77 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %76, i32 0, i32 4
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  %79 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 3
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* @CTRL, align 4
  %84 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %85 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @QETH_DBF_CTRL_LEN, align 4
  %88 = call i32 @QETH_DBF_HEX(i32 %83, i32 2, i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %95, %66
  %90 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = call i64 @atomic_cmpxchg(i32* %92, i32 0, i32 1)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %89

96:                                               ; preds = %89
  %97 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %100 = call i32 @qeth_prepare_control_data(%struct.qeth_card* %97, i32 %98, %struct.qeth_cmd_buffer* %99)
  %101 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %102 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @IS_IPA(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i64, i64* @QETH_IPA_TIMEOUT, align 8
  store i64 %107, i64* %16, align 8
  br label %110

108:                                              ; preds = %96
  %109 = load i64, i64* @QETH_TIMEOUT, align 8
  store i64 %109, i64* %16, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = load i64, i64* @jiffies, align 8
  %112 = load i64, i64* %16, align 8
  %113 = add i64 %111, %112
  store i64 %113, i64* %15, align 8
  %114 = load i32, i32* @TRACE, align 4
  %115 = call i32 @QETH_DBF_TEXT(i32 %114, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %117 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = call i32* @get_ccwdev_lock(%struct.TYPE_11__* %119)
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @spin_lock_irqsave(i32* %120, i64 %121)
  %123 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %124 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %128 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %131 = ptrtoint %struct.qeth_cmd_buffer* %130 to i32
  %132 = call i32 @ccw_device_start(%struct.TYPE_11__* %126, i32* %129, i32 %131, i32 0, i32 0)
  store i32 %132, i32* %12, align 4
  %133 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %134 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = call i32* @get_ccwdev_lock(%struct.TYPE_11__* %136)
  %138 = load i64, i64* %13, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %138)
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %180

142:                                              ; preds = %110
  %143 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %144 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = call i32 @dev_name(i32* %147)
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %149)
  %151 = load i32, i32* @TRACE, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @QETH_DBF_TEXT_(i32 %151, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %155 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %154, i32 0, i32 3
  %156 = load i64, i64* %13, align 8
  %157 = call i32 @spin_lock_irqsave(i32* %155, i64 %156)
  %158 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %159 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %158, i32 0, i32 4
  %160 = call i32 @list_del_init(i32* %159)
  %161 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %162 = call i32 @qeth_put_reply(%struct.qeth_reply* %161)
  %163 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %164 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %163, i32 0, i32 3
  %165 = load i64, i64* %13, align 8
  %166 = call i32 @spin_unlock_irqrestore(i32* %164, i64 %165)
  %167 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %168 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %171 = call i32 @qeth_release_buffer(i32 %169, %struct.qeth_cmd_buffer* %170)
  %172 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %173 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = call i32 @atomic_set(i32* %174, i32 0)
  %176 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %177 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %176, i32 0, i32 2
  %178 = call i32 @wake_up(i32* %177)
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %6, align 4
  br label %292

180:                                              ; preds = %110
  %181 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %182 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %185 = add nsw i64 %183, %184
  %186 = inttoptr i64 %185 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %186, %struct.qeth_ipa_cmd** %17, align 8
  %187 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %17, align 8
  %188 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @IPA_CMD_SETIP, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %212

193:                                              ; preds = %180
  %194 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %17, align 8
  %195 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @QETH_PROT_IPV4, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %212

200:                                              ; preds = %193
  %201 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %202 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %205 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %204, i32 0, i32 2
  %206 = call i32 @atomic_read(i32* %205)
  %207 = load i64, i64* %16, align 8
  %208 = call i32 @wait_event_timeout(i32 %203, i32 %206, i64 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %200
  br label %243

211:                                              ; preds = %200
  br label %228

212:                                              ; preds = %193, %180
  br label %213

213:                                              ; preds = %225, %212
  %214 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %215 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %214, i32 0, i32 2
  %216 = call i32 @atomic_read(i32* %215)
  %217 = icmp ne i32 %216, 0
  %218 = xor i1 %217, true
  br i1 %218, label %219, label %227

219:                                              ; preds = %213
  %220 = load i64, i64* @jiffies, align 8
  %221 = load i64, i64* %15, align 8
  %222 = call i64 @time_after(i64 %220, i64 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %243

225:                                              ; preds = %219
  %226 = call i32 (...) @cpu_relax()
  br label %213

227:                                              ; preds = %213
  br label %228

228:                                              ; preds = %227, %211
  %229 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %230 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @EIO, align 4
  %233 = sub nsw i32 0, %232
  %234 = icmp eq i32 %231, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  br label %266

236:                                              ; preds = %228
  %237 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %238 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* %12, align 4
  %240 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %241 = call i32 @qeth_put_reply(%struct.qeth_reply* %240)
  %242 = load i32, i32* %12, align 4
  store i32 %242, i32* %6, align 4
  br label %292

243:                                              ; preds = %224, %210
  %244 = load i32, i32* @ETIME, align 4
  %245 = sub nsw i32 0, %244
  %246 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %247 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 8
  %248 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %249 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %248, i32 0, i32 3
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i64, i64* %13, align 8
  %253 = call i32 @spin_lock_irqsave(i32* %251, i64 %252)
  %254 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %255 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %254, i32 0, i32 4
  %256 = call i32 @list_del_init(i32* %255)
  %257 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %258 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %257, i32 0, i32 3
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i64, i64* %13, align 8
  %262 = call i32 @spin_unlock_irqrestore(i32* %260, i64 %261)
  %263 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %264 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %263, i32 0, i32 2
  %265 = call i32 @atomic_inc(i32* %264)
  br label %266

266:                                              ; preds = %243, %235
  %267 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %268 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = call i32 @atomic_set(i32* %269, i32 0)
  %271 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %272 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  %275 = call i32 @qeth_release_buffer(i32 %273, %struct.qeth_cmd_buffer* %274)
  %276 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %277 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  %281 = load i32, i32* @QETH_CMD_BUFFER_NO, align 4
  %282 = srem i32 %280, %281
  %283 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %284 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  store i32 %282, i32* %285, align 8
  %286 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %287 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  store i32 %288, i32* %12, align 4
  %289 = load %struct.qeth_reply*, %struct.qeth_reply** %14, align 8
  %290 = call i32 @qeth_put_reply(%struct.qeth_reply* %289)
  %291 = load i32, i32* %12, align 4
  store i32 %291, i32* %6, align 4
  br label %292

292:                                              ; preds = %266, %236, %142, %37, %24
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_release_buffer(i32, %struct.qeth_cmd_buffer*) #1

declare dso_local %struct.qeth_reply* @qeth_alloc_reply(%struct.qeth_card*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, i64, i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @qeth_prepare_control_data(%struct.qeth_card*, i32, %struct.qeth_cmd_buffer*) #1

declare dso_local i64 @IS_IPA(i64) #1

declare dso_local i32* @get_ccwdev_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @ccw_device_start(%struct.TYPE_11__*, i32*, i32, i32, i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @qeth_put_reply(%struct.qeth_reply*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
