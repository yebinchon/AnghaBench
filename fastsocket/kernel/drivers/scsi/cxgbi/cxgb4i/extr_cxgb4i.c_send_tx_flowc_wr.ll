; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_send_tx_flowc_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_send_tx_flowc_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.sk_buff = type { i64 }
%struct.fw_flowc_wr = type { %struct.TYPE_3__*, i8*, i8* }
%struct.TYPE_3__ = type { i64*, i8*, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@FW_FLOWC_WR = common dso_local global i32 0, align 4
@FW_FLOWC_MNEM_PFNVFN = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_CH = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_PORT = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_IQID = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_SNDNXT = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_RCVNXT = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_SNDBUF = common dso_local global i64 0, align 8
@cxgb4i_snd_win = common dso_local global i32 0, align 4
@FW_FLOWC_MNEM_MSS = common dso_local global i64 0, align 8
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"csk 0x%p, tid 0x%x, %u,%u,%u,%u,%u,%u,%u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*)* @send_tx_flowc_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_tx_flowc_wr(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.fw_flowc_wr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  store i32 80, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.sk_buff* @alloc_wr(i32 %7, i32 0, i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.fw_flowc_wr*
  store %struct.fw_flowc_wr* %13, %struct.fw_flowc_wr** %4, align 8
  %14 = load i32, i32* @FW_FLOWC_WR, align 4
  %15 = call i32 @FW_WR_OP(i32 %14)
  %16 = call i32 @FW_FLOWC_WR_NPARAMS(i32 8)
  %17 = or i32 %15, %16
  %18 = call i8* @htonl(i32 %17)
  %19 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %20 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = call i32 @DIV_ROUND_UP(i32 72, i32 16)
  %22 = call i32 @FW_WR_LEN16(i32 %21)
  %23 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %24 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @FW_WR_FLOWID(i32 %25)
  %27 = or i32 %22, %26
  %28 = call i8* @htonl(i32 %27)
  %29 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %30 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i64, i64* @FW_FLOWC_MNEM_PFNVFN, align 8
  %32 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %33 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i64 %31, i64* %36, align 8
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %38 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %37, i32 0, i32 6
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @htonl(i32 %41)
  %43 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %44 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %42, i8** %47, align 8
  %48 = load i64, i64* @FW_FLOWC_MNEM_CH, align 8
  %49 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %50 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i64 %48, i64* %53, align 8
  %54 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %55 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @htonl(i32 %56)
  %58 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %59 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i8* %57, i8** %62, align 8
  %63 = load i64, i64* @FW_FLOWC_MNEM_PORT, align 8
  %64 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %65 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i64 %63, i64* %68, align 8
  %69 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %70 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @htonl(i32 %71)
  %73 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %74 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i8* %72, i8** %77, align 8
  %78 = load i64, i64* @FW_FLOWC_MNEM_IQID, align 8
  %79 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %80 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 3
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i64 %78, i64* %83, align 8
  %84 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %85 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @htonl(i32 %86)
  %88 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %89 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i8* %87, i8** %92, align 8
  %93 = load i64, i64* @FW_FLOWC_MNEM_SNDNXT, align 8
  %94 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %95 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i64 %93, i64* %98, align 8
  %99 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %100 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @htonl(i32 %101)
  %103 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %104 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 4
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i8* %102, i8** %107, align 8
  %108 = load i64, i64* @FW_FLOWC_MNEM_RCVNXT, align 8
  %109 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %110 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 5
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i64 %108, i64* %113, align 8
  %114 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %115 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @htonl(i32 %116)
  %118 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %119 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 5
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i8* %117, i8** %122, align 8
  %123 = load i64, i64* @FW_FLOWC_MNEM_SNDBUF, align 8
  %124 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %125 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 6
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  store i64 %123, i64* %128, align 8
  %129 = load i32, i32* @cxgb4i_snd_win, align 4
  %130 = call i8* @htonl(i32 %129)
  %131 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %132 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 6
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  store i8* %130, i8** %135, align 8
  %136 = load i64, i64* @FW_FLOWC_MNEM_MSS, align 8
  %137 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %138 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 7
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  store i64 %136, i64* %141, align 8
  %142 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %143 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @htonl(i32 %144)
  %146 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %147 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %146, i32 0, i32 0
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 7
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i8* %145, i8** %150, align 8
  %151 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %152 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %151, i32 0, i32 0
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  store i64 0, i64* %155, align 8
  %156 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %157 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %156, i32 0, i32 0
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  store i8* null, i8** %160, align 8
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %192, %1
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %162, 9
  br i1 %163, label %164, label %195

164:                                              ; preds = %161
  %165 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %166 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %165, i32 0, i32 0
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  store i64 0, i64* %173, align 8
  %174 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %175 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %174, i32 0, i32 0
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 1
  store i64 0, i64* %182, align 8
  %183 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %184 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %183, i32 0, i32 0
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 2
  store i64 0, i64* %191, align 8
  br label %192

192:                                              ; preds = %164
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %161

195:                                              ; preds = %161
  %196 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %197 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %198 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %199 = call i32 @set_queue(%struct.sk_buff* %196, i32 %197, %struct.cxgbi_sock* %198)
  %200 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %201 = shl i32 1, %200
  %202 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %203 = shl i32 1, %202
  %204 = or i32 %201, %203
  %205 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %206 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %207 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %210 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %213 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %216 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %219 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @cxgb4i_snd_win, align 4
  %222 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %223 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @log_debug(i32 %204, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %205, i32 %208, i32 0, i32 %211, i32 %214, i32 %217, i32 %220, i32 %221, i32 %224)
  %226 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %227 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %226, i32 0, i32 6
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %232 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %237 = call i32 @cxgb4_ofld_send(i32 %235, %struct.sk_buff* %236)
  ret void
}

declare dso_local %struct.sk_buff* @alloc_wr(i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_WR_OP(i32) #1

declare dso_local i32 @FW_FLOWC_WR_NPARAMS(i32) #1

declare dso_local i32 @FW_WR_LEN16(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @FW_WR_FLOWID(i32) #1

declare dso_local i32 @set_queue(%struct.sk_buff*, i32, %struct.cxgbi_sock*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
