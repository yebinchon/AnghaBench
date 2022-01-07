; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_act_establish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_act_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.cpl_act_establish = type { i32, i32, i32, i32 }
%struct.cxgb4_lld_info = type { i32*, %struct.tid_info* }
%struct.tid_info = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"NO conn. for atid %u, cdev 0x%p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"bad conn atid %u, csk 0x%p,%u,0x%lx,tid %u, atid %u.\0A\00", align 1
@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"csk 0x%p,%u,0x%lx, tid %u, atid %u, rseq %u.\0A\00", align 1
@CTPF_HAS_TID = common dso_local global i32 0, align 4
@CTP_ACTIVE_OPEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"csk 0x%p,%u,0x%lx,%u, got EST.\0A\00", align 1
@cxgb4i_rcv_win = common dso_local global i32 0, align 4
@RCV_BUFSIZ_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"csk 0x%p, mss_idx %u, advmss %u.\0A\00", align 1
@CTPF_ACTIVE_CLOSE_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.sk_buff*)* @do_act_establish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_act_establish(%struct.cxgbi_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.cpl_act_establish*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxgb4_lld_info*, align 8
  %11 = alloca %struct.tid_info*, align 8
  %12 = alloca i32, align 4
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cpl_act_establish*
  store %struct.cpl_act_establish* %16, %struct.cpl_act_establish** %6, align 8
  %17 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %18 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call zeroext i16 @ntohs(i32 %19)
  store i16 %20, i16* %7, align 2
  %21 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %22 = call i32 @GET_TID(%struct.cpl_act_establish* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %24 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohl(i32 %25)
  %27 = call i32 @GET_TID_TID(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %29 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %28)
  store %struct.cxgb4_lld_info* %29, %struct.cxgb4_lld_info** %10, align 8
  %30 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %31 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %30, i32 0, i32 1
  %32 = load %struct.tid_info*, %struct.tid_info** %31, align 8
  store %struct.tid_info* %32, %struct.tid_info** %11, align 8
  %33 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %34 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.cxgbi_sock* @lookup_atid(%struct.tid_info* %37, i32 %38)
  store %struct.cxgbi_sock* %39, %struct.cxgbi_sock** %5, align 8
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %41 = icmp ne %struct.cxgbi_sock* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %2
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %49 = bitcast %struct.cxgbi_device* %48 to %struct.cxgbi_sock*
  %50 = call i32 (i8*, i32, %struct.cxgbi_sock*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47, %struct.cxgbi_sock* %49)
  br label %236

51:                                               ; preds = %2
  %52 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %53 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %60 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %61 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %64 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %67 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %70 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, i32, %struct.cxgbi_sock*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %58, %struct.cxgbi_sock* %59, i64 %62, i32 %65, i32 %68, i32 %71)
  br label %236

73:                                               ; preds = %51
  %74 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %77 = shl i32 1, %76
  %78 = or i32 %75, %77
  %79 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %80 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %81 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %84 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (i32, i8*, %struct.cxgbi_sock*, i64, i32, ...) @log_debug(i32 %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_sock* %79, i64 %82, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %91 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %90)
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %94 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %96 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %95, i32 0, i32 1
  %97 = load %struct.tid_info*, %struct.tid_info** %96, align 8
  %98 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @cxgb4_insert_tid(%struct.tid_info* %97, %struct.cxgbi_sock* %98, i32 %99)
  %101 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %102 = load i32, i32* @CTPF_HAS_TID, align 4
  %103 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %101, i32 %102)
  %104 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %105 = call i32 @free_atid(%struct.cxgbi_sock* %104)
  %106 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %107 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %106, i32 0, i32 4
  %108 = call i32 @spin_lock_bh(i32* %107)
  %109 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %110 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CTP_ACTIVE_OPEN, align 8
  %113 = icmp ne i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %73
  %118 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %119 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %120 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %123 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %126 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_sock* %118, i64 %121, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %117, %73
  %130 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %131 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %130, i32 0, i32 9
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %137 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %136, i32 0, i32 9
  %138 = call i32 @del_timer(%struct.TYPE_2__* %137)
  %139 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %140 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %139, i32 0, i32 9
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %135, %129
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %145 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 4
  %146 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %147 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %146, i32 0, i32 6
  store i32 %143, i32* %147, align 8
  %148 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %149 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %148, i32 0, i32 8
  store i32 %143, i32* %149, align 8
  %150 = load i32, i32* @cxgb4i_rcv_win, align 4
  %151 = load i32, i32* @RCV_BUFSIZ_MASK, align 4
  %152 = shl i32 %151, 10
  %153 = icmp sgt i32 %150, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %142
  %155 = load i32, i32* @cxgb4i_rcv_win, align 4
  %156 = load i32, i32* @RCV_BUFSIZ_MASK, align 4
  %157 = shl i32 %156, 10
  %158 = sub nsw i32 %155, %157
  %159 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %160 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %154, %142
  %164 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %165 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i16, i16* %7, align 2
  %168 = call i64 @GET_TCPOPT_MSS(i16 zeroext %167)
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, 40
  %172 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %173 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  %174 = load i16, i16* %7, align 2
  %175 = call i64 @GET_TCPOPT_TSTAMP(i16 zeroext %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %163
  %178 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %179 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 12
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %177, %163
  %183 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %184 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %185, 128
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %189 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %188, i32 0, i32 3
  store i32 128, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %182
  %191 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %192 = shl i32 1, %191
  %193 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %194 = shl i32 1, %193
  %195 = or i32 %192, %194
  %196 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %197 = load i16, i16* %7, align 2
  %198 = call i64 @GET_TCPOPT_MSS(i16 zeroext %197)
  %199 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %200 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i32, i8*, %struct.cxgbi_sock*, i64, i32, ...) @log_debug(i32 %195, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), %struct.cxgbi_sock* %196, i64 %198, i32 %201)
  %203 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %204 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %205 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ntohl(i32 %206)
  %208 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %6, align 8
  %209 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call zeroext i16 @ntohs(i32 %210)
  %212 = call i32 @cxgbi_sock_established(%struct.cxgbi_sock* %203, i32 %207, i16 zeroext %211)
  %213 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %214 = load i32, i32* @CTPF_ACTIVE_CLOSE_NEEDED, align 4
  %215 = call i32 @cxgbi_sock_flag(%struct.cxgbi_sock* %213, i32 %214)
  %216 = call i64 @unlikely(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %190
  %219 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %220 = call i32 @send_abort_req(%struct.cxgbi_sock* %219)
  br label %232

221:                                              ; preds = %190
  %222 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %223 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %222, i32 0, i32 5
  %224 = call i64 @skb_queue_len(i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %228 = call i32 @push_tx_frames(%struct.cxgbi_sock* %227, i32 0)
  br label %229

229:                                              ; preds = %226, %221
  %230 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %231 = call i32 @cxgbi_conn_tx_open(%struct.cxgbi_sock* %230)
  br label %232

232:                                              ; preds = %229, %218
  %233 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %234 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %233, i32 0, i32 4
  %235 = call i32 @spin_unlock_bh(i32* %234)
  br label %236

236:                                              ; preds = %232, %57, %46
  %237 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %238 = call i32 @__kfree_skb(%struct.sk_buff* %237)
  ret void
}

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_act_establish*) #1

declare dso_local i32 @GET_TID_TID(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.cxgbi_sock* @lookup_atid(%struct.tid_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, %struct.cxgbi_sock*, ...) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32, ...) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgb4_insert_tid(%struct.tid_info*, %struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @free_atid(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_sock*, i64, i32, i32) #1

declare dso_local i32 @del_timer(%struct.TYPE_2__*) #1

declare dso_local i64 @GET_TCPOPT_MSS(i16 zeroext) #1

declare dso_local i64 @GET_TCPOPT_TSTAMP(i16 zeroext) #1

declare dso_local i32 @cxgbi_sock_established(%struct.cxgbi_sock*, i32, i16 zeroext) #1

declare dso_local i32 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @send_abort_req(%struct.cxgbi_sock*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @push_tx_frames(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_conn_tx_open(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
