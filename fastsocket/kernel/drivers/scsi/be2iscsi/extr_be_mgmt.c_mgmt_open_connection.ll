; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_open_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_open_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64, i64, %struct.be_ctrl_info, %struct.hwi_controller* }
%struct.be_ctrl_info = type { i32 }
%struct.hwi_controller = type { %struct.hwi_context_memory* }
%struct.hwi_context_memory = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.beiscsi_endpoint = type { i16, i32, i32*, i8*, i8* }
%struct.be_dma_mem = type { i32, i32, %struct.tcp_connect_and_offload_in* }
%struct.tcp_connect_and_offload_in = type { i32, i16, i16, i16, i16, i32, %struct.TYPE_12__, i32, i8*, %struct.TYPE_8__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i8* }
%struct.sockaddr_in = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.be_mcc_wrb = type { i32, i16, i16, i16, i16, i32, %struct.TYPE_12__, i32, i8*, %struct.TYPE_8__, i32 }
%struct.phys_addr = type { i32, i32, i32, i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_TCP_CONNECT_AND_OFFLOAD = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@BE2_IPV4 = common dso_local global i8* null, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@BE2_IPV6 = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"BG_%d : unknown addr family %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"BG_%d : i=%d cq_id=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_open_connection(%struct.beiscsi_hba* %0, %struct.sockaddr* %1, %struct.beiscsi_endpoint* %2, %struct.be_dma_mem* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.beiscsi_endpoint*, align 8
  %9 = alloca %struct.be_dma_mem*, align 8
  %10 = alloca %struct.hwi_controller*, align 8
  %11 = alloca %struct.hwi_context_memory*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca %struct.be_ctrl_info*, align 8
  %15 = alloca %struct.be_mcc_wrb*, align 8
  %16 = alloca %struct.tcp_connect_and_offload_in*, align 8
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca %struct.phys_addr, align 4
  %20 = alloca %struct.phys_addr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i16, align 2
  %24 = alloca %struct.be_sge*, align 8
  %25 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.beiscsi_endpoint* %2, %struct.beiscsi_endpoint** %8, align 8
  store %struct.be_dma_mem* %3, %struct.be_dma_mem** %9, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %27 = bitcast %struct.sockaddr* %26 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %27, %struct.sockaddr_in** %12, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %29 = bitcast %struct.sockaddr* %28 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %29, %struct.sockaddr_in6** %13, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 2
  store %struct.be_ctrl_info* %31, %struct.be_ctrl_info** %14, align 8
  %32 = bitcast %struct.phys_addr* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 16, i1 false)
  store i32 0, i32* %21, align 4
  %33 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %34 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %33, i32 0, i32 0
  %35 = load i16, i16* %34, align 8
  store i16 %35, i16* %23, align 2
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %37 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %36, i32 0, i32 3
  %38 = load %struct.hwi_controller*, %struct.hwi_controller** %37, align 8
  store %struct.hwi_controller* %38, %struct.hwi_controller** %10, align 8
  %39 = load %struct.hwi_controller*, %struct.hwi_controller** %10, align 8
  %40 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %39, i32 0, i32 0
  %41 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %40, align 8
  store %struct.hwi_context_memory* %41, %struct.hwi_context_memory** %11, align 8
  %42 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %43 = call i64 @HWI_GET_DEF_HDRQ_ID(%struct.beiscsi_hba* %42)
  %44 = trunc i64 %43 to i16
  store i16 %44, i16* %17, align 2
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %46 = call i64 @HWI_GET_DEF_BUFQ_ID(%struct.beiscsi_hba* %45)
  %47 = trunc i64 %46 to i16
  store i16 %47, i16* %18, align 2
  store %struct.phys_addr* %19, %struct.phys_addr** %20, align 8
  %48 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %49 = load %struct.phys_addr*, %struct.phys_addr** %20, align 8
  %50 = call i32 @ISCSI_GET_PDU_TEMPLATE_ADDRESS(%struct.beiscsi_hba* %48, %struct.phys_addr* %49)
  %51 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %14, align 8
  %52 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %51, i32 0, i32 0
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %55 = call i32 @alloc_mcc_tag(%struct.beiscsi_hba* %54)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %4
  %59 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %14, align 8
  %60 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load i32, i32* %21, align 4
  store i32 %62, i32* %5, align 4
  br label %303

63:                                               ; preds = %4
  %64 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %65 = call %struct.tcp_connect_and_offload_in* @wrb_from_mccq(%struct.beiscsi_hba* %64)
  %66 = bitcast %struct.tcp_connect_and_offload_in* %65 to %struct.be_mcc_wrb*
  store %struct.be_mcc_wrb* %66, %struct.be_mcc_wrb** %15, align 8
  %67 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %68 = bitcast %struct.be_mcc_wrb* %67 to %struct.tcp_connect_and_offload_in*
  %69 = call i32 @memset(%struct.tcp_connect_and_offload_in* %68, i32 0, i32 64)
  %70 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %71 = bitcast %struct.be_mcc_wrb* %70 to %struct.tcp_connect_and_offload_in*
  %72 = call %struct.be_sge* @nonembedded_sgl(%struct.tcp_connect_and_offload_in* %71)
  store %struct.be_sge* %72, %struct.be_sge** %24, align 8
  %73 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %74 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %73, i32 0, i32 2
  %75 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %74, align 8
  store %struct.tcp_connect_and_offload_in* %75, %struct.tcp_connect_and_offload_in** %16, align 8
  %76 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %77 = call i32 @memset(%struct.tcp_connect_and_offload_in* %76, i32 0, i32 64)
  %78 = load i32, i32* %21, align 4
  %79 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %80 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %15, align 8
  %84 = bitcast %struct.be_mcc_wrb* %83 to %struct.tcp_connect_and_offload_in*
  %85 = call i32 @be_wrb_hdr_prepare(%struct.tcp_connect_and_offload_in* %84, i32 64, i32 0, i32 1)
  %86 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %87 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %86, i32 0, i32 10
  %88 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %89 = load i32, i32* @OPCODE_COMMON_ISCSI_TCP_CONNECT_AND_OFFLOAD, align 4
  %90 = call i32 @be_cmd_hdr_prepare(i32* %87, i32 %88, i32 %89, i32 64)
  %91 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %92 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PF_INET, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %157

96:                                               ; preds = %63
  %97 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %25, align 4
  %101 = load i8*, i8** @BE2_IPV4, align 8
  %102 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %103 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load i32, i32* %25, align 4
  %106 = and i32 %105, 255
  %107 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %108 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %106, i32* %111, align 4
  %112 = load i32, i32* %25, align 4
  %113 = and i32 %112, 65280
  %114 = ashr i32 %113, 8
  %115 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %116 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %25, align 4
  %121 = and i32 %120, 16711680
  %122 = ashr i32 %121, 16
  %123 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %124 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %123, i32 0, i32 9
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 %122, i32* %127, align 4
  %128 = load i32, i32* %25, align 4
  %129 = and i32 %128, -16777216
  %130 = lshr i32 %129, 24
  %131 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %132 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  store i32 %130, i32* %135, align 4
  %136 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %137 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @ntohs(i32 %138)
  %140 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %141 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %140, i32 0, i32 8
  store i8* %139, i8** %141, align 8
  %142 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %143 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %147 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @ntohs(i32 %150)
  %152 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %153 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @BE2_IPV4, align 8
  %155 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %156 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  br label %217

157:                                              ; preds = %63
  %158 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %159 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @PF_INET6, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %198

163:                                              ; preds = %157
  %164 = load i8*, i8** @BE2_IPV6, align 8
  %165 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %166 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %165, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  store i8* %164, i8** %167, align 8
  %168 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %169 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %172 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = call i32 @memcpy(i32** %170, i32* %174, i32 16)
  %176 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %177 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @ntohs(i32 %178)
  %180 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %181 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %180, i32 0, i32 8
  store i8* %179, i8** %181, align 8
  %182 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %183 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @ntohs(i32 %184)
  %186 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %187 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  %188 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %189 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %188, i32 0, i32 2
  %190 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %191 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = call i32 @memcpy(i32** %189, i32* %193, i32 16)
  %195 = load i8*, i8** @BE2_IPV6, align 8
  %196 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  %197 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  br label %216

198:                                              ; preds = %157
  %199 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %200 = load i32, i32* @KERN_ERR, align 4
  %201 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %202 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %203 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i32, ...) @beiscsi_log(%struct.beiscsi_hba* %199, i32 %200, i32 %201, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %205)
  %207 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %14, align 8
  %208 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %207, i32 0, i32 0
  %209 = call i32 @spin_unlock(i32* %208)
  %210 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %211 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %210, i32 0, i32 2
  %212 = load i32, i32* %21, align 4
  %213 = call i32 @free_mcc_tag(%struct.be_ctrl_info* %211, i32 %212)
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %5, align 4
  br label %303

216:                                              ; preds = %163
  br label %217

217:                                              ; preds = %216, %96
  %218 = load i16, i16* %23, align 2
  %219 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %220 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %219, i32 0, i32 1
  store i16 %218, i16* %220, align 4
  %221 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %222 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, 1
  store i64 %224, i64* %222, align 8
  %225 = trunc i64 %223 to i32
  store i32 %225, i32* %22, align 4
  %226 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %227 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %230 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %228, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %217
  %234 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %235 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %234, i32 0, i32 0
  store i64 0, i64* %235, align 8
  br label %236

236:                                              ; preds = %233, %217
  %237 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %11, align 8
  %238 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %237, i32 0, i32 0
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = load i32, i32* %22, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %246 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %245, i32 0, i32 7
  store i32 %244, i32* %246, align 8
  %247 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %248 = load i32, i32* @KERN_INFO, align 4
  %249 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %250 = load i32, i32* %22, align 4
  %251 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %252 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 8
  %254 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, i32, ...) @beiscsi_log(%struct.beiscsi_hba* %247, i32 %248, i32 %249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %250, i32 %253)
  %255 = load i16, i16* %17, align 2
  %256 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %257 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %256, i32 0, i32 2
  store i16 %255, i16* %257, align 2
  %258 = load i16, i16* %17, align 2
  %259 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %260 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %259, i32 0, i32 3
  store i16 %258, i16* %260, align 8
  %261 = load i16, i16* %18, align 2
  %262 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %263 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %262, i32 0, i32 4
  store i16 %261, i16* %263, align 2
  %264 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %265 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %264, i32 0, i32 5
  store i32 1, i32* %265, align 4
  %266 = load %struct.phys_addr*, %struct.phys_addr** %20, align 8
  %267 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %270 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %269, i32 0, i32 6
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 1
  store i32 %268, i32* %271, align 4
  %272 = load %struct.phys_addr*, %struct.phys_addr** %20, align 8
  %273 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.tcp_connect_and_offload_in*, %struct.tcp_connect_and_offload_in** %16, align 8
  %276 = getelementptr inbounds %struct.tcp_connect_and_offload_in, %struct.tcp_connect_and_offload_in* %275, i32 0, i32 6
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 8
  %278 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %279 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @upper_32_bits(i32 %280)
  %282 = call i8* @cpu_to_le32(i32 %281)
  %283 = load %struct.be_sge*, %struct.be_sge** %24, align 8
  %284 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %283, i32 0, i32 2
  store i8* %282, i8** %284, align 8
  %285 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %286 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i8* @cpu_to_le32(i32 %287)
  %289 = load %struct.be_sge*, %struct.be_sge** %24, align 8
  %290 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %289, i32 0, i32 1
  store i8* %288, i8** %290, align 8
  %291 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %292 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i8* @cpu_to_le32(i32 %293)
  %295 = load %struct.be_sge*, %struct.be_sge** %24, align 8
  %296 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %295, i32 0, i32 0
  store i8* %294, i8** %296, align 8
  %297 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %298 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %297)
  %299 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %14, align 8
  %300 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %299, i32 0, i32 0
  %301 = call i32 @spin_unlock(i32* %300)
  %302 = load i32, i32* %21, align 4
  store i32 %302, i32* %5, align 4
  br label %303

303:                                              ; preds = %236, %198, %58
  %304 = load i32, i32* %5, align 4
  ret i32 %304
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @HWI_GET_DEF_HDRQ_ID(%struct.beiscsi_hba*) #2

declare dso_local i64 @HWI_GET_DEF_BUFQ_ID(%struct.beiscsi_hba*) #2

declare dso_local i32 @ISCSI_GET_PDU_TEMPLATE_ADDRESS(%struct.beiscsi_hba*, %struct.phys_addr*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @alloc_mcc_tag(%struct.beiscsi_hba*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local %struct.tcp_connect_and_offload_in* @wrb_from_mccq(%struct.beiscsi_hba*) #2

declare dso_local i32 @memset(%struct.tcp_connect_and_offload_in*, i32, i32) #2

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.tcp_connect_and_offload_in*) #2

declare dso_local i32 @be_wrb_hdr_prepare(%struct.tcp_connect_and_offload_in*, i32, i32, i32) #2

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #2

declare dso_local i8* @ntohs(i32) #2

declare dso_local i32 @memcpy(i32**, i32*, i32) #2

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32, ...) #2

declare dso_local i32 @free_mcc_tag(%struct.be_ctrl_info*, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @upper_32_bits(i32) #2

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
