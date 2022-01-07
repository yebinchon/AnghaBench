; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_cm.c_send_flowc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_cm.c_send_flowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fw_flowc_wr = type { %struct.TYPE_9__*, i8*, i8* }
%struct.TYPE_9__ = type { i64*, i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FW_FLOWC_WR = common dso_local global i32 0, align 4
@FW_FLOWC_MNEM_PFNVFN = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_CH = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_PORT = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_IQID = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_SNDNXT = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_RCVNXT = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_SNDBUF = common dso_local global i64 0, align 8
@snd_win = common dso_local global i32 0, align 4
@FW_FLOWC_MNEM_MSS = common dso_local global i64 0, align 8
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_ep*, %struct.sk_buff*)* @send_flowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_flowc(%struct.c4iw_ep* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.c4iw_ep*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_flowc_wr*, align 8
  %7 = alloca i32, align 4
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 80, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sk_buff* @get_skb(%struct.sk_buff* %8, i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @__skb_put(%struct.sk_buff* %12, i32 %13)
  %15 = inttoptr i64 %14 to %struct.fw_flowc_wr*
  store %struct.fw_flowc_wr* %15, %struct.fw_flowc_wr** %6, align 8
  %16 = load i32, i32* @FW_FLOWC_WR, align 4
  %17 = call i32 @FW_WR_OP(i32 %16)
  %18 = call i32 @FW_FLOWC_WR_NPARAMS(i32 8)
  %19 = or i32 %17, %18
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %22 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %23, i32 16)
  %25 = call i32 @FW_WR_LEN16(i32 %24)
  %26 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %27 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @FW_WR_FLOWID(i32 %28)
  %30 = or i32 %25, %29
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %33 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* @FW_FLOWC_MNEM_PFNVFN, align 8
  %35 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %36 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i64 %34, i64* %39, align 8
  %40 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %41 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PCI_FUNC(i32 %49)
  %51 = shl i32 %50, 8
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %54 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i8* %52, i8** %57, align 8
  %58 = load i64, i64* @FW_FLOWC_MNEM_CH, align 8
  %59 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %60 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i64 %58, i64* %63, align 8
  %64 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %65 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @cpu_to_be32(i32 %66)
  %68 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %69 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i8* %67, i8** %72, align 8
  %73 = load i64, i64* @FW_FLOWC_MNEM_PORT, align 8
  %74 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %75 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  store i64 %73, i64* %78, align 8
  %79 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %80 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @cpu_to_be32(i32 %81)
  %83 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %84 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i8* %82, i8** %87, align 8
  %88 = load i64, i64* @FW_FLOWC_MNEM_IQID, align 8
  %89 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %90 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 3
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i64 %88, i64* %93, align 8
  %94 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %95 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @cpu_to_be32(i32 %96)
  %98 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %99 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 3
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i8* %97, i8** %102, align 8
  %103 = load i64, i64* @FW_FLOWC_MNEM_SNDNXT, align 8
  %104 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %105 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  store i64 %103, i64* %108, align 8
  %109 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %110 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @cpu_to_be32(i32 %111)
  %113 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %114 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store i8* %112, i8** %117, align 8
  %118 = load i64, i64* @FW_FLOWC_MNEM_RCVNXT, align 8
  %119 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %120 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 5
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  store i64 %118, i64* %123, align 8
  %124 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %125 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @cpu_to_be32(i32 %126)
  %128 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %129 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 5
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i8* %127, i8** %132, align 8
  %133 = load i64, i64* @FW_FLOWC_MNEM_SNDBUF, align 8
  %134 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %135 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 6
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  store i64 %133, i64* %138, align 8
  %139 = load i32, i32* @snd_win, align 4
  %140 = call i8* @cpu_to_be32(i32 %139)
  %141 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %142 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 6
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  store i8* %140, i8** %145, align 8
  %146 = load i64, i64* @FW_FLOWC_MNEM_MSS, align 8
  %147 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %148 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %147, i32 0, i32 0
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 7
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  store i64 %146, i64* %151, align 8
  %152 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %153 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @cpu_to_be32(i32 %154)
  %156 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %157 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %156, i32 0, i32 0
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 7
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i8* %155, i8** %160, align 8
  %161 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %162 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %161, i32 0, i32 0
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i64 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  store i64 0, i64* %165, align 8
  %166 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %167 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %166, i32 0, i32 0
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  store i8* null, i8** %170, align 8
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %202, %2
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %172, 9
  br i1 %173, label %174, label %205

174:                                              ; preds = %171
  %175 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %176 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %175, i32 0, i32 0
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  store i64 0, i64* %183, align 8
  %184 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %185 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %184, i32 0, i32 0
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 1
  store i64 0, i64* %192, align 8
  %193 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %6, align 8
  %194 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %193, i32 0, i32 0
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 2
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %174
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %171

205:                                              ; preds = %171
  %206 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %207 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %208 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %209 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @set_wr_txq(%struct.sk_buff* %206, i32 %207, i32 %210)
  %212 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %213 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %218 = call i32 @c4iw_ofld_send(%struct.TYPE_12__* %216, %struct.sk_buff* %217)
  ret void
}

declare dso_local %struct.sk_buff* @get_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_WR_OP(i32) #1

declare dso_local i32 @FW_FLOWC_WR_NPARAMS(i32) #1

declare dso_local i32 @FW_WR_LEN16(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @FW_WR_FLOWID(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @c4iw_ofld_send(%struct.TYPE_12__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
