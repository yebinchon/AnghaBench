; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_push_tx_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_push_tx_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@CTP_ESTABLISHED = common dso_local global i64 0, align 8
@CTP_CLOSE_WAIT_1 = common dso_local global i64 0, align 8
@CTP_ABORTING = common dso_local global i64 0, align 8
@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_PDU_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"csk 0x%p,%u,0x%lx,%u, in closing state.\0A\00", align 1
@skb_wrs = common dso_local global i32* null, align 8
@wrlen = common dso_local global i32 0, align 4
@SKB_WR_LIST_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"csk 0x%p, skb len %u/%u, frag %u, wr %d<%u.\0A\00", align 1
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"csk 0x%p, enqueue, skb len %u/%u, frag %u, wr %d, left %u, unack %u.\0A\00", align 1
@SKCBF_TX_NEED_HDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"csk 0x%p, tid 0x%x, send skb 0x%p.\0A\00", align 1
@arp_failure_skb_discard = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*, i32)* @push_tx_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_tx_frames(%struct.cxgbi_sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbi_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %12 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CTP_ESTABLISHED, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %18 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CTP_CLOSE_WAIT_1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %24 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CTP_ABORTING, align 8
  %27 = icmp sge i64 %25, %26
  br label %28

28:                                               ; preds = %22, %16, %2
  %29 = phi i1 [ true, %16 ], [ true, %2 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %41 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %44 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %47 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, %struct.cxgbi_sock*, i64, ...) @log_debug(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %39, i64 %42, i32 %45, i32 %48)
  store i32 0, i32* %3, align 4
  br label %256

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %221, %50
  %52 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %53 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %58 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %57, i32 0, i32 8
  %59 = call %struct.sk_buff* @skb_peek(i32* %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %7, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ false, %51 ], [ %60, %56 ]
  br i1 %62, label %63, label %254

63:                                               ; preds = %61
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %8, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %70, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32*, i32** @skb_wrs, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %93

85:                                               ; preds = %63
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %87, 4
  %89 = load i32, i32* @wrlen, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ule i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %85, %63
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @SKB_WR_LIST_SIZE, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 1
  br label %100

100:                                              ; preds = %97, %93
  %101 = phi i1 [ true, %93 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @WARN_ON(i32 %102)
  %104 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %105 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %100
  %110 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %111 = shl i32 1, %110
  %112 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %123 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, %struct.cxgbi_sock*, i64, ...) @log_debug(i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %112, i64 %116, i32 %119, i32 %120, i32 %121, i32 %124)
  br label %254

126:                                              ; preds = %100
  %127 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %128 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %129 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %128, i32 0, i32 8
  %130 = call i32 @__skb_unlink(%struct.sk_buff* %127, i32* %129)
  %131 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %139 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %144 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %149 = call i32 @cxgbi_sock_enqueue_wr(%struct.cxgbi_sock* %147, %struct.sk_buff* %148)
  %150 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %151 = shl i32 1, %150
  %152 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %153 = shl i32 1, %152
  %154 = or i32 %151, %153
  %155 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %168 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %171 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32, i8*, %struct.cxgbi_sock*, i64, ...) @log_debug(i32 %154, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_sock* %155, i64 %159, i32 %162, i32 %163, i32 %166, i32 %169, i32 %172)
  %174 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %175 = load i32, i32* @SKCBF_TX_NEED_HDR, align 4
  %176 = call i32 @cxgbi_skcb_test_flag(%struct.sk_buff* %174, i32 %175)
  %177 = call i64 @likely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %221

179:                                              ; preds = %126
  %180 = load i32, i32* %5, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %184 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %197, label %188

188:                                              ; preds = %182, %179
  %189 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %190 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %193 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = sdiv i32 %194, 2
  %196 = icmp sge i32 %191, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %188, %182
  store i32 1, i32* %5, align 4
  %198 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %199 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %198, i32 0, i32 2
  store i32 0, i32* %199, align 4
  br label %200

200:                                              ; preds = %197, %188
  %201 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %202 = call i32 @cxgbi_skcb_ulp_mode(%struct.sk_buff* %201)
  %203 = call i64 @cxgbi_ulp_extra_len(i32 %202)
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %8, align 4
  %208 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @make_tx_data_wr(%struct.cxgbi_sock* %208, %struct.sk_buff* %209, i32 %210, i32 %211)
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %215 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, %213
  store i32 %217, i32* %215, align 4
  %218 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %219 = load i32, i32* @SKCBF_TX_NEED_HDR, align 4
  %220 = call i32 @cxgbi_skcb_clear_flag(%struct.sk_buff* %218, i32 %219)
  br label %221

221:                                              ; preds = %200, %126
  %222 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %224
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %230 = shl i32 1, %229
  %231 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %232 = shl i32 1, %231
  %233 = or i32 %230, %232
  %234 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %235 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %236 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %240 = call i32 (i32, i8*, %struct.cxgbi_sock*, i64, ...) @log_debug(i32 %233, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_sock* %234, i64 %238, %struct.sk_buff* %239)
  %241 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %242 = load i32, i32* @arp_failure_skb_discard, align 4
  %243 = call i32 @set_arp_failure_handler(%struct.sk_buff* %241, i32 %242)
  %244 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %245 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %244, i32 0, i32 6
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %250 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %251 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @l2t_send(i32 %248, %struct.sk_buff* %249, i32 %252)
  br label %51

254:                                              ; preds = %109, %61
  %255 = load i32, i32* %6, align 4
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %254, %33
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, ...) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @cxgbi_sock_enqueue_wr(%struct.cxgbi_sock*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cxgbi_skcb_test_flag(%struct.sk_buff*, i32) #1

declare dso_local i64 @cxgbi_ulp_extra_len(i32) #1

declare dso_local i32 @cxgbi_skcb_ulp_mode(%struct.sk_buff*) #1

declare dso_local i32 @make_tx_data_wr(%struct.cxgbi_sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cxgbi_skcb_clear_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @set_arp_failure_handler(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2t_send(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
