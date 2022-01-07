; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_send_pdus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_send_pdus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i32, i64, i64, i32, i32, i32, i32, %struct.cxgbi_device* }
%struct.cxgbi_device = type { i64, i64, i32 (%struct.cxgbi_sock*, i32)* }
%struct.sk_buff = type { i64, i64, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32 }

@CTP_ESTABLISHED = common dso_local global i64 0, align 8
@CXGBI_DBG_PDU_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"csk 0x%p,%u,0x%lx,%u, EAGAIN.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"csk 0x%p,%u,0x%lx,%u, EPIPE %d.\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"csk 0x%p,%u,0x%lx,%u, FULL %u-%u >= %u.\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"csk 0x%p, skb head %u < %u.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SKB_WR_LIST_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"csk 0x%p, frags %d, %u,%u >%u.\0A\00", align 1
@SKCBF_TX_NEED_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*, %struct.sk_buff*)* @cxgbi_sock_send_pdus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbi_sock_send_pdus(%struct.cxgbi_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %11 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %10, i32 0, i32 8
  %12 = load %struct.cxgbi_device*, %struct.cxgbi_device** %11, align 8
  store %struct.cxgbi_device* %12, %struct.cxgbi_device** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %14 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %13, i32 0, i32 4
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CTP_ESTABLISHED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %29 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %32 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, %struct.cxgbi_sock*, i64, i32, i32, ...) @log_debug(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %24, i64 %27, i32 %30, i32 %33)
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %205

37:                                               ; preds = %2
  %38 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %39 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %44 = shl i32 1, %43
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %47 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %50 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %53 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %56 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, %struct.cxgbi_sock*, i64, i32, i32, ...) @log_debug(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %45, i64 %48, i32 %51, i32 %54, i32 %57)
  %59 = load i32, i32* @EPIPE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %205

61:                                               ; preds = %37
  %62 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %63 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %66 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %70 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %68, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %61
  %74 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %75 = shl i32 1, %74
  %76 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %77 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %78 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %81 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %84 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %87 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %90 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %93 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32, i8*, %struct.cxgbi_sock*, i64, i32, i32, ...) @log_debug(i32 %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_sock* %76, i64 %79, i32 %82, i32 %85, i64 %88, i64 %91, i64 %94)
  %96 = load i32, i32* @ENOBUFS, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %205

98:                                               ; preds = %61
  br label %99

99:                                               ; preds = %156, %98
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = icmp ne %struct.sk_buff* %100, null
  br i1 %101, label %102, label %187

102:                                              ; preds = %99
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %103)
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  %114 = zext i1 %113 to i32
  %115 = add nsw i32 %106, %114
  store i32 %115, i32* %9, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = call i64 @skb_headroom(%struct.sk_buff* %116)
  %118 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %119 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %102
  %126 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = call i64 @skb_headroom(%struct.sk_buff* %127)
  %129 = trunc i64 %128 to i32
  %130 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %131 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 (i8*, %struct.cxgbi_sock*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_sock* %126, i32 %129, i64 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  br label %205

136:                                              ; preds = %102
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @SKB_WR_LIST_SIZE, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %136
  %141 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %142)
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @SKB_WR_LIST_SIZE, align 4
  %153 = call i32 (i8*, %struct.cxgbi_sock*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %struct.cxgbi_sock* %141, i32 %145, i64 %148, i64 %151, i32 %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %7, align 4
  br label %205

156:                                              ; preds = %136
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 2
  %159 = load %struct.sk_buff*, %struct.sk_buff** %158, align 8
  store %struct.sk_buff* %159, %struct.sk_buff** %6, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %161, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = load i32, i32* @SKCBF_TX_NEED_HDR, align 4
  %164 = call i32 @cxgbi_skcb_set_flag(%struct.sk_buff* %162, i32 %163)
  %165 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = call i32 @cxgbi_sock_skb_entail(%struct.cxgbi_sock* %165, %struct.sk_buff* %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %8, align 4
  %175 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = call i32 @cxgbi_skcb_ulp_mode(%struct.sk_buff* %178)
  %180 = call i64 @cxgbi_ulp_extra_len(i32 %179)
  %181 = add nsw i64 %177, %180
  %182 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %183 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %181
  store i64 %185, i64* %183, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %186, %struct.sk_buff** %4, align 8
  br label %99

187:                                              ; preds = %99
  br label %188

188:                                              ; preds = %229, %187
  %189 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %190 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %189, i32 0, i32 5
  %191 = call i32 @skb_queue_len(i32* %190)
  %192 = call i64 @likely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %196 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %195, i32 0, i32 2
  %197 = load i32 (%struct.cxgbi_sock*, i32)*, i32 (%struct.cxgbi_sock*, i32)** %196, align 8
  %198 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %199 = call i32 %197(%struct.cxgbi_sock* %198, i32 1)
  br label %200

200:                                              ; preds = %194, %188
  %201 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %202 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %201, i32 0, i32 4
  %203 = call i32 @spin_unlock_bh(i32* %202)
  %204 = load i32, i32* %8, align 4
  ret i32 %204

205:                                              ; preds = %140, %125, %73, %42, %21
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %205
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @EPIPE, align 4
  %211 = sub nsw i32 0, %210
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %215 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %220 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  br label %225

222:                                              ; preds = %213
  %223 = load i32, i32* @EPIPE, align 4
  %224 = sub nsw i32 0, %223
  br label %225

225:                                              ; preds = %222, %218
  %226 = phi i32 [ %221, %218 ], [ %224, %222 ]
  store i32 %226, i32* %8, align 4
  br label %229

227:                                              ; preds = %208, %205
  %228 = load i32, i32* %7, align 4
  store i32 %228, i32* %8, align 4
  br label %229

229:                                              ; preds = %227, %225
  br label %188
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32, i32, ...) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_sock*, i32, i64, ...) #1

declare dso_local i32 @cxgbi_skcb_set_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @cxgbi_sock_skb_entail(%struct.cxgbi_sock*, %struct.sk_buff*) #1

declare dso_local i64 @cxgbi_ulp_extra_len(i32) #1

declare dso_local i32 @cxgbi_skcb_ulp_mode(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
