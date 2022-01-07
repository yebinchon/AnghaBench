; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_conn_pdu_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_conn_pdu_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32, i32, %struct.iscsi_conn*, %struct.cxgbi_device* }
%struct.iscsi_conn = type { i32, i32, i32 }
%struct.cxgbi_device = type { i64 }
%struct.sk_buff = type { i32, i32, i32, %struct.iscsi_conn*, %struct.cxgbi_device* }

@CXGBI_DBG_PDU_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"csk 0x%p, conn 0x%p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"csk 0x%p, conn 0x%p, id %d, suspend_rx %lu!\0A\00", align 1
@SKCBF_RX_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"skb 0x%p, NOT ready 0x%lx.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"csk 0x%p, skb 0x%p,%u,f 0x%lx, pdu len %u.\0A\00", align 1
@SKCBF_RX_COALESCED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"coalesced bhs, csk 0x%p, skb 0x%p,%u, f 0x%lx, plen %u.\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"coalesced data, csk 0x%p, skb 0x%p,%u, f 0x%lx, plen %u.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"bhs, csk 0x%p, skb 0x%p,%u, f 0x%lx, plen %u.\0A\00", align 1
@SKCBF_RX_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"csk 0x%p, skb 0x%p,%u, f 0x%lx, plen %u, NO data.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"data, csk 0x%p, skb 0x%p,%u, f 0x%lx, plen %u, dskb 0x%p,%u.\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"csk 0x%p, read %u.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"csk 0x%p, 0x%p, rx failed %d, read %u.\0A\00", align 1
@ISCSI_ERR_CONN_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_conn_pdu_ready(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %9 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %10 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %9, i32 0, i32 4
  %11 = load %struct.cxgbi_device*, %struct.cxgbi_device** %10, align 8
  store %struct.cxgbi_device* %11, %struct.cxgbi_device** %3, align 8
  %12 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %13 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %12, i32 0, i32 3
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %16 = shl i32 1, %15
  %17 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %18 = bitcast %struct.cxgbi_sock* %17 to %struct.sk_buff*
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %20 = call i32 (i32, i8*, %struct.sk_buff*, ...) @log_debug(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %18, %struct.iscsi_conn* %19)
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %22 = icmp ne %struct.iscsi_conn* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %23, %1
  %29 = phi i1 [ true, %1 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %37 = bitcast %struct.cxgbi_sock* %36 to %struct.sk_buff*
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %40 = icmp ne %struct.iscsi_conn* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 255, %45 ]
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %49 = icmp ne %struct.iscsi_conn* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 255, %54 ]
  %57 = call i32 (i32, i8*, %struct.sk_buff*, ...) @log_debug(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %37, %struct.iscsi_conn* %38, i32 %47, i32 %56)
  br label %281

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %243, %58
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %63, label %244

63:                                               ; preds = %59
  %64 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %65 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %64, i32 0, i32 2
  %66 = call %struct.sk_buff* @skb_peek(i32* %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %5, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i32, i32* @SKCBF_RX_STATUS, align 4
  %72 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %69, %63
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %79 = shl i32 1, %78
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %81)
  %83 = call i32 (i32, i8*, %struct.sk_buff*, ...) @log_debug(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %80, i32 %82)
  br label %84

84:                                               ; preds = %77, %74
  br label %244

85:                                               ; preds = %69
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %88 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %87, i32 0, i32 2
  %89 = call i32 @__skb_unlink(%struct.sk_buff* %86, i32* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %90)
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %97 = shl i32 1, %96
  %98 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %99 = bitcast %struct.cxgbi_sock* %98 to %struct.sk_buff*
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %106)
  %108 = call i32 (i32, i8*, %struct.sk_buff*, ...) @log_debug(i32 %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %99, %struct.sk_buff* %100, i32 %103, i32 %105, i64 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load i32, i32* @SKCBF_RX_COALESCED, align 4
  %111 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %157

113:                                              ; preds = %85
  %114 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i32 @skb_read_pdu_bhs(%struct.iscsi_conn* %114, %struct.sk_buff* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %121 = bitcast %struct.cxgbi_sock* %120 to %struct.sk_buff*
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %128)
  %130 = call i32 (i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %121, %struct.sk_buff* %122, i32 %125, i32 %127, i64 %129)
  br label %237

131:                                              ; preds = %113
  %132 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %138 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = call i32 @skb_read_pdu_data(%struct.iscsi_conn* %132, %struct.sk_buff* %133, %struct.sk_buff* %134, i64 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %131
  %145 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %146 = bitcast %struct.cxgbi_sock* %145 to %struct.sk_buff*
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %153)
  %155 = call i32 (i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), %struct.sk_buff* %146, %struct.sk_buff* %147, i32 %150, i32 %152, i64 %154)
  br label %156

156:                                              ; preds = %144, %131
  br label %236

157:                                              ; preds = %85
  %158 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = call i32 @skb_read_pdu_bhs(%struct.iscsi_conn* %158, %struct.sk_buff* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %157
  %164 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %165 = bitcast %struct.cxgbi_sock* %164 to %struct.sk_buff*
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %170)
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %172)
  %174 = call i32 (i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), %struct.sk_buff* %165, %struct.sk_buff* %166, i32 %169, i32 %171, i64 %173)
  br label %237

175:                                              ; preds = %157
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = load i32, i32* @SKCBF_RX_DATA, align 4
  %178 = call i64 @cxgbi_skcb_test_flag(%struct.sk_buff* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %230

180:                                              ; preds = %175
  %181 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %182 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %181, i32 0, i32 2
  %183 = call %struct.sk_buff* @skb_peek(i32* %182)
  store %struct.sk_buff* %183, %struct.sk_buff** %8, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %185 = icmp ne %struct.sk_buff* %184, null
  br i1 %185, label %200, label %186

186:                                              ; preds = %180
  %187 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %188 = bitcast %struct.cxgbi_sock* %187 to %struct.sk_buff*
  %189 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %194 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %195)
  %197 = call i32 (i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), %struct.sk_buff* %188, %struct.sk_buff* %189, i32 %192, i32 %194, i64 %196)
  %198 = load i32, i32* @EIO, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %7, align 4
  br label %237

200:                                              ; preds = %180
  %201 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %202 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %203 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %202, i32 0, i32 2
  %204 = call i32 @__skb_unlink(%struct.sk_buff* %201, i32* %203)
  %205 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %208 = call i32 @skb_read_pdu_data(%struct.iscsi_conn* %205, %struct.sk_buff* %206, %struct.sk_buff* %207, i64 0)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %200
  %212 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %213 = bitcast %struct.cxgbi_sock* %212 to %struct.sk_buff*
  %214 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %216 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %219 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %218)
  %220 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %221 = call i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff* %220)
  %222 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), %struct.sk_buff* %213, %struct.sk_buff* %214, i32 %217, i32 %219, i64 %221, %struct.sk_buff* %222, i32 %225)
  br label %227

227:                                              ; preds = %211, %200
  %228 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %229 = call i32 @__kfree_skb(%struct.sk_buff* %228)
  br label %235

230:                                              ; preds = %175
  %231 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %232 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %234 = call i32 @skb_read_pdu_data(%struct.iscsi_conn* %231, %struct.sk_buff* %232, %struct.sk_buff* %233, i64 0)
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %230, %227
  br label %236

236:                                              ; preds = %235, %156
  br label %237

237:                                              ; preds = %236, %186, %163, %119
  %238 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %239 = call i32 @__kfree_skb(%struct.sk_buff* %238)
  %240 = load i32, i32* %7, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %244

243:                                              ; preds = %237
  br label %59

244:                                              ; preds = %242, %84, %59
  %245 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %246 = shl i32 1, %245
  %247 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %248 = bitcast %struct.cxgbi_sock* %247 to %struct.sk_buff*
  %249 = load i32, i32* %6, align 4
  %250 = call i32 (i32, i8*, %struct.sk_buff*, ...) @log_debug(i32 %246, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), %struct.sk_buff* %248, i32 %249)
  %251 = load i32, i32* %6, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %244
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %256 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = add i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %260 = bitcast %struct.cxgbi_sock* %259 to %struct.sk_buff*
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @csk_return_rx_credits(%struct.sk_buff* %260, i32 %261)
  %263 = load i32, i32* %6, align 4
  %264 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %265 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = add i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %253, %244
  %269 = load i32, i32* %7, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %268
  %272 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %273 = bitcast %struct.cxgbi_sock* %272 to %struct.sk_buff*
  %274 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* %6, align 4
  %277 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), %struct.sk_buff* %273, %struct.iscsi_conn* %274, i32 %275, i32 %276)
  %278 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %279 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  %280 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %278, i32 %279)
  br label %281

281:                                              ; preds = %55, %271, %268
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.sk_buff*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @cxgbi_skcb_test_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @cxgbi_skcb_flags(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i64 @cxgbi_skcb_rx_pdulen(%struct.sk_buff*) #1

declare dso_local i32 @skb_read_pdu_bhs(%struct.iscsi_conn*, %struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, %struct.sk_buff*, %struct.sk_buff*, i32, i32, i64, ...) #1

declare dso_local i32 @skb_read_pdu_data(%struct.iscsi_conn*, %struct.sk_buff*, %struct.sk_buff*, i64) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @csk_return_rx_credits(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_info(i8*, %struct.sk_buff*, %struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
