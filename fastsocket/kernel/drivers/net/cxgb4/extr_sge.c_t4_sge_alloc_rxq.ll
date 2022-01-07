; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_alloc_rxq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_alloc_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, %struct.sge_fl**, %struct.sge_rspq** }
%struct.sge_rspq = type { i32, i32, i32, i64, i32, i32*, i32, i32, %struct.net_device*, %struct.adapter*, i8*, i32, i32, i64, i32*, i32, i32 }
%struct.net_device = type { i32 }
%struct.sge_fl = type { i32, i64, i32*, i32, i32*, i64, i64, i64, i64, i64, i64, i64 }
%struct.fw_iq_cmd = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.port_info = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FW_IQ_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST = common dso_local global i32 0, align 4
@FW_CMD_WRITE = common dso_local global i32 0, align 4
@FW_CMD_EXEC = common dso_local global i32 0, align 4
@FW_IQ_CMD_ALLOC = common dso_local global i32 0, align 4
@FW_IQ_TYPE_FL_INT_CAP = common dso_local global i32 0, align 4
@FW_IQ_CMD_IQGTSMODE = common dso_local global i32 0, align 4
@STAT_LEN = common dso_local global i32 0, align 4
@FW_IQ_CMD_FL0PACKEN = common dso_local global i32 0, align 4
@FW_IQ_CMD_FL0PADEN = common dso_local global i32 0, align 4
@napi_rx_handler = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sge_alloc_rxq(%struct.adapter* %0, %struct.sge_rspq* %1, i32 %2, %struct.net_device* %3, i32 %4, %struct.sge_fl* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.sge_rspq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sge_fl*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fw_iq_cmd, align 8
  %19 = alloca %struct.port_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.net_device* %3, %struct.net_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.sge_fl* %5, %struct.sge_fl** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.net_device*, %struct.net_device** %12, align 8
  %21 = call %struct.port_info* @netdev_priv(%struct.net_device* %20)
  store %struct.port_info* %21, %struct.port_info** %19, align 8
  %22 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %23 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @roundup(i32 %24, i32 16)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %28 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.adapter*, %struct.adapter** %9, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %33 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %36 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %39 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %38, i32 0, i32 6
  %40 = call i8* @alloc_ring(i32 %31, i32 %34, i32 %37, i32 0, i32* %39, i32** null, i32 0)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %43 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %42, i32 0, i32 5
  store i32* %41, i32** %43, align 8
  %44 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %45 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %7
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %379

51:                                               ; preds = %7
  %52 = call i32 @memset(%struct.fw_iq_cmd* %18, i32 0, i32 96)
  %53 = load i32, i32* @FW_IQ_CMD, align 4
  %54 = call i32 @FW_CMD_OP(i32 %53)
  %55 = load i32, i32* @FW_CMD_REQUEST, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FW_CMD_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FW_CMD_EXEC, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.adapter*, %struct.adapter** %9, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @FW_IQ_CMD_PFN(i32 %63)
  %65 = or i32 %60, %64
  %66 = call i32 @FW_IQ_CMD_VFN(i32 0)
  %67 = or i32 %65, %66
  %68 = call i8* @htonl(i32 %67)
  %69 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 12
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* @FW_IQ_CMD_ALLOC, align 4
  %71 = call i32 @FW_IQ_CMD_IQSTART(i32 1)
  %72 = or i32 %70, %71
  %73 = call i32 @FW_LEN16(%struct.fw_iq_cmd* byval(%struct.fw_iq_cmd) align 8 %18)
  %74 = or i32 %72, %73
  %75 = call i8* @htonl(i32 %74)
  %76 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 11
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* @FW_IQ_TYPE_FL_INT_CAP, align 4
  %78 = call i32 @FW_IQ_CMD_TYPE(i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @FW_IQ_CMD_IQASYNCH(i32 %79)
  %81 = or i32 %78, %80
  %82 = load %struct.port_info*, %struct.port_info** %19, align 8
  %83 = getelementptr inbounds %struct.port_info, %struct.port_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @FW_IQ_CMD_VIID(i32 %84)
  %86 = or i32 %81, %85
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @FW_IQ_CMD_IQANDST(i32 %89)
  %91 = or i32 %86, %90
  %92 = call i32 @FW_IQ_CMD_IQANUD(i32 1)
  %93 = or i32 %91, %92
  %94 = load i32, i32* %13, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %51
  %97 = load i32, i32* %13, align 4
  br label %102

98:                                               ; preds = %51
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 0, %99
  %101 = sub nsw i32 %100, 1
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi i32 [ %97, %96 ], [ %101, %98 ]
  %104 = call i32 @FW_IQ_CMD_IQANDSTINDEX(i32 %103)
  %105 = or i32 %93, %104
  %106 = call i8* @htonl(i32 %105)
  %107 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 10
  store i8* %106, i8** %107, align 8
  %108 = load %struct.port_info*, %struct.port_info** %19, align 8
  %109 = getelementptr inbounds %struct.port_info, %struct.port_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @FW_IQ_CMD_IQPCIECH(i32 %110)
  %112 = load i32, i32* @FW_IQ_CMD_IQGTSMODE, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %115 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %114, i32 0, i32 16
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @FW_IQ_CMD_IQINTCNTTHRESH(i32 %116)
  %118 = or i32 %113, %117
  %119 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %120 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @ilog2(i32 %121)
  %123 = sub nsw i64 %122, 4
  %124 = call i32 @FW_IQ_CMD_IQESIZE(i64 %123)
  %125 = or i32 %118, %124
  %126 = call i8* @htons(i32 %125)
  %127 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 9
  store i8* %126, i8** %127, align 8
  %128 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %129 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @htons(i32 %130)
  %132 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 8
  store i8* %131, i8** %132, align 8
  %133 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %134 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @cpu_to_be64(i32 %135)
  %137 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 7
  store i8* %136, i8** %137, align 8
  %138 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %139 = icmp ne %struct.sge_fl* %138, null
  br i1 %139, label %140, label %201

140:                                              ; preds = %102
  %141 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %142 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @roundup(i32 %143, i32 8)
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %147 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.adapter*, %struct.adapter** %9, align 8
  %149 = getelementptr inbounds %struct.adapter, %struct.adapter* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %152 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %155 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %154, i32 0, i32 3
  %156 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %157 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %156, i32 0, i32 4
  %158 = load i32, i32* @STAT_LEN, align 4
  %159 = call i8* @alloc_ring(i32 %150, i32 %153, i32 4, i32 4, i32* %155, i32** %157, i32 %158)
  %160 = bitcast i8* %159 to i32*
  %161 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %162 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %161, i32 0, i32 2
  store i32* %160, i32** %162, align 8
  %163 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %164 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %140
  br label %318

168:                                              ; preds = %140
  %169 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %170 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sdiv i32 %171, 8
  %173 = sext i32 %172 to i64
  %174 = load i32, i32* @STAT_LEN, align 4
  %175 = sext i32 %174 to i64
  %176 = udiv i64 %175, 4
  %177 = add i64 %173, %176
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* @FW_IQ_CMD_FL0PACKEN, align 4
  %180 = call i32 @FW_IQ_CMD_FL0FETCHRO(i32 1)
  %181 = or i32 %179, %180
  %182 = call i32 @FW_IQ_CMD_FL0DATARO(i32 1)
  %183 = or i32 %181, %182
  %184 = load i32, i32* @FW_IQ_CMD_FL0PADEN, align 4
  %185 = or i32 %183, %184
  %186 = call i8* @htonl(i32 %185)
  %187 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 6
  store i8* %186, i8** %187, align 8
  %188 = call i32 @FW_IQ_CMD_FL0FBMIN(i32 2)
  %189 = call i32 @FW_IQ_CMD_FL0FBMAX(i32 3)
  %190 = or i32 %188, %189
  %191 = call i8* @htons(i32 %190)
  %192 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 5
  store i8* %191, i8** %192, align 8
  %193 = load i32, i32* %17, align 4
  %194 = call i8* @htons(i32 %193)
  %195 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 4
  store i8* %194, i8** %195, align 8
  %196 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %197 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @cpu_to_be64(i32 %198)
  %200 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 3
  store i8* %199, i8** %200, align 8
  br label %201

201:                                              ; preds = %168, %102
  %202 = load %struct.adapter*, %struct.adapter** %9, align 8
  %203 = load %struct.adapter*, %struct.adapter** %9, align 8
  %204 = getelementptr inbounds %struct.adapter, %struct.adapter* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @t4_wr_mbox(%struct.adapter* %202, i32 %205, %struct.fw_iq_cmd* %18, i32 96, %struct.fw_iq_cmd* %18)
  store i32 %206, i32* %16, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %201
  br label %321

210:                                              ; preds = %201
  %211 = load %struct.net_device*, %struct.net_device** %12, align 8
  %212 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %213 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %212, i32 0, i32 15
  %214 = load i32, i32* @napi_rx_handler, align 4
  %215 = call i32 @netif_napi_add(%struct.net_device* %211, i32* %213, i32 %214, i32 64)
  %216 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %217 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %220 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %219, i32 0, i32 14
  store i32* %218, i32** %220, align 8
  %221 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %222 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %221, i32 0, i32 13
  store i64 0, i64* %222, align 8
  %223 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %224 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %223, i32 0, i32 2
  store i32 1, i32* %224, align 8
  %225 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %226 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %225, i32 0, i32 11
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %229 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %228, i32 0, i32 12
  store i32 %227, i32* %229, align 4
  %230 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i8* @ntohs(i32 %231)
  %233 = ptrtoint i8* %232 to i64
  %234 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %235 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %234, i32 0, i32 3
  store i64 %233, i64* %235, align 8
  %236 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @ntohs(i32 %237)
  %239 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %240 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %239, i32 0, i32 10
  store i8* %238, i8** %240, align 8
  %241 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %242 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %242, align 8
  %245 = load %struct.adapter*, %struct.adapter** %9, align 8
  %246 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %247 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %246, i32 0, i32 9
  store %struct.adapter* %245, %struct.adapter** %247, align 8
  %248 = load %struct.net_device*, %struct.net_device** %12, align 8
  %249 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %250 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %249, i32 0, i32 8
  store %struct.net_device* %248, %struct.net_device** %250, align 8
  %251 = load i32, i32* %15, align 4
  %252 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %253 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %252, i32 0, i32 7
  store i32 %251, i32* %253, align 4
  %254 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %255 = icmp ne %struct.sge_fl* %254, null
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i32 0, i32 -1
  %258 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %259 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 8
  %260 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %261 = load %struct.adapter*, %struct.adapter** %9, align 8
  %262 = getelementptr inbounds %struct.adapter, %struct.adapter* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 3
  %264 = load %struct.sge_rspq**, %struct.sge_rspq*** %263, align 8
  %265 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %266 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.adapter*, %struct.adapter** %9, align 8
  %269 = getelementptr inbounds %struct.adapter, %struct.adapter* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = sub i64 %267, %271
  %273 = getelementptr inbounds %struct.sge_rspq*, %struct.sge_rspq** %264, i64 %272
  store %struct.sge_rspq* %260, %struct.sge_rspq** %273, align 8
  %274 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %275 = icmp ne %struct.sge_fl* %274, null
  br i1 %275, label %276, label %317

276:                                              ; preds = %210
  %277 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %18, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i8* @ntohs(i32 %278)
  %280 = ptrtoint i8* %279 to i64
  %281 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %282 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %281, i32 0, i32 1
  store i64 %280, i64* %282, align 8
  %283 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %284 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %283, i32 0, i32 10
  store i64 0, i64* %284, align 8
  %285 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %286 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %285, i32 0, i32 11
  store i64 0, i64* %286, align 8
  %287 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %288 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %287, i32 0, i32 8
  store i64 0, i64* %288, align 8
  %289 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %290 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %289, i32 0, i32 9
  store i64 0, i64* %290, align 8
  %291 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %292 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %291, i32 0, i32 5
  store i64 0, i64* %292, align 8
  %293 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %294 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %293, i32 0, i32 6
  store i64 0, i64* %294, align 8
  %295 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %296 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %295, i32 0, i32 7
  store i64 0, i64* %296, align 8
  %297 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %298 = load %struct.adapter*, %struct.adapter** %9, align 8
  %299 = getelementptr inbounds %struct.adapter, %struct.adapter* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 2
  %301 = load %struct.sge_fl**, %struct.sge_fl*** %300, align 8
  %302 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %303 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.adapter*, %struct.adapter** %9, align 8
  %306 = getelementptr inbounds %struct.adapter, %struct.adapter* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = sub i64 %304, %308
  %310 = getelementptr inbounds %struct.sge_fl*, %struct.sge_fl** %301, i64 %309
  store %struct.sge_fl* %297, %struct.sge_fl** %310, align 8
  %311 = load %struct.adapter*, %struct.adapter** %9, align 8
  %312 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %313 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %314 = call i32 @fl_cap(%struct.sge_fl* %313)
  %315 = load i32, i32* @GFP_KERNEL, align 4
  %316 = call i32 @refill_fl(%struct.adapter* %311, %struct.sge_fl* %312, i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %276, %210
  store i32 0, i32* %8, align 4
  br label %379

318:                                              ; preds = %167
  %319 = load i32, i32* @ENOMEM, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %16, align 4
  br label %321

321:                                              ; preds = %318, %209
  %322 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %323 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %322, i32 0, i32 5
  %324 = load i32*, i32** %323, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %326, label %346

326:                                              ; preds = %321
  %327 = load %struct.adapter*, %struct.adapter** %9, align 8
  %328 = getelementptr inbounds %struct.adapter, %struct.adapter* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %331 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %334 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = mul nsw i32 %332, %335
  %337 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %338 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %337, i32 0, i32 5
  %339 = load i32*, i32** %338, align 8
  %340 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %341 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @dma_free_coherent(i32 %329, i32 %336, i32* %339, i32 %342)
  %344 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %345 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %344, i32 0, i32 5
  store i32* null, i32** %345, align 8
  br label %346

346:                                              ; preds = %326, %321
  %347 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %348 = icmp ne %struct.sge_fl* %347, null
  br i1 %348, label %349, label %377

349:                                              ; preds = %346
  %350 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %351 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %350, i32 0, i32 2
  %352 = load i32*, i32** %351, align 8
  %353 = icmp ne i32* %352, null
  br i1 %353, label %354, label %377

354:                                              ; preds = %349
  %355 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %356 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %355, i32 0, i32 4
  %357 = load i32*, i32** %356, align 8
  %358 = call i32 @kfree(i32* %357)
  %359 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %360 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %359, i32 0, i32 4
  store i32* null, i32** %360, align 8
  %361 = load %struct.adapter*, %struct.adapter** %9, align 8
  %362 = getelementptr inbounds %struct.adapter, %struct.adapter* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %17, align 4
  %365 = sext i32 %364 to i64
  %366 = mul i64 %365, 4
  %367 = trunc i64 %366 to i32
  %368 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %369 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %368, i32 0, i32 2
  %370 = load i32*, i32** %369, align 8
  %371 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %372 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @dma_free_coherent(i32 %363, i32 %367, i32* %370, i32 %373)
  %375 = load %struct.sge_fl*, %struct.sge_fl** %14, align 8
  %376 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %375, i32 0, i32 2
  store i32* null, i32** %376, align 8
  br label %377

377:                                              ; preds = %354, %349, %346
  %378 = load i32, i32* %16, align 4
  store i32 %378, i32* %8, align 4
  br label %379

379:                                              ; preds = %377, %317, %48
  %380 = load i32, i32* %8, align 4
  ret i32 %380
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local i8* @alloc_ring(i32, i32, i32, i32, i32*, i32**, i32) #1

declare dso_local i32 @memset(%struct.fw_iq_cmd*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP(i32) #1

declare dso_local i32 @FW_IQ_CMD_PFN(i32) #1

declare dso_local i32 @FW_IQ_CMD_VFN(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQSTART(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_iq_cmd* byval(%struct.fw_iq_cmd) align 8) #1

declare dso_local i32 @FW_IQ_CMD_TYPE(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQASYNCH(i32) #1

declare dso_local i32 @FW_IQ_CMD_VIID(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQANDST(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQANUD(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQANDSTINDEX(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQPCIECH(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQINTCNTTHRESH(i32) #1

declare dso_local i32 @FW_IQ_CMD_IQESIZE(i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0FETCHRO(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0DATARO(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0FBMIN(i32) #1

declare dso_local i32 @FW_IQ_CMD_FL0FBMAX(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_iq_cmd*, i32, %struct.fw_iq_cmd*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @refill_fl(%struct.adapter*, %struct.sge_fl*, i32, i32) #1

declare dso_local i32 @fl_cap(%struct.sge_fl*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
