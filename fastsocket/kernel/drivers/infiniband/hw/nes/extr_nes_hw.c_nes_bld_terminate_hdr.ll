; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_bld_terminate_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_bld_terminate_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_qp = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nes_terminate_hdr = type { i32, i8*, i32 }

@BAD_FRAME_OFFSET = common dso_local global i32 0, align 4
@NES_AEQE_Q2_DATA_WRITTEN = common dso_local global i32 0, align 4
@DDP_LEN_FLAG = common dso_local global i32 0, align 4
@TERM_DDP_LEN_TAGGED = common dso_local global i64 0, align 8
@DDP_HDR_FLAG = common dso_local global i32 0, align 4
@TERM_DDP_LEN_UNTAGGED = common dso_local global i64 0, align 8
@TERM_RDMA_LEN = common dso_local global i64 0, align 8
@RDMA_OPCODE_MASK = common dso_local global i32 0, align 4
@RDMA_READ_REQ_OPCODE = common dso_local global i32 0, align 4
@RDMA_HDR_FLAG = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@LAYER_DDP = common dso_local global i32 0, align 4
@DDP_TAGGED_BUFFER = common dso_local global i32 0, align 4
@DDP_TAGGED_INV_STAG = common dso_local global i8* null, align 8
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@LAYER_RDMA = common dso_local global i32 0, align 4
@RDMAP_REMOTE_PROT = common dso_local global i32 0, align 4
@RDMAP_INV_STAG = common dso_local global i8* null, align 8
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@DDP_UNTAGGED_BUFFER = common dso_local global i32 0, align 4
@DDP_UNTAGGED_INV_QN = common dso_local global i8* null, align 8
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@RDMAP_REMOTE_OP = common dso_local global i32 0, align 4
@RDMAP_CANT_INV_STAG = common dso_local global i8* null, align 8
@NES_AEQE_Q2_DATA_ETHERNET = common dso_local global i32 0, align 4
@NES_AEQE_Q2_DATA_MPA = common dso_local global i32 0, align 4
@DDP_TAGGED_BOUNDS = common dso_local global i8* null, align 8
@RDMAP_INV_BOUNDS = common dso_local global i8* null, align 8
@RDMAP_ACCESS = common dso_local global i8* null, align 8
@RDMAP_TO_WRAP = common dso_local global i8* null, align 8
@DDP_TAGGED_UNASSOC_STAG = common dso_local global i8* null, align 8
@RDMAP_UNASSOC_STAG = common dso_local global i8* null, align 8
@IB_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@LAYER_MPA = common dso_local global i32 0, align 4
@DDP_LLP = common dso_local global i32 0, align 4
@MPA_MARKER = common dso_local global i8* null, align 8
@IB_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@MPA_CRC = common dso_local global i8* null, align 8
@DDP_CATASTROPHIC = common dso_local global i32 0, align 4
@DDP_CATASTROPHIC_LOCAL = common dso_local global i8* null, align 8
@IB_WC_FATAL_ERR = common dso_local global i32 0, align 4
@DDP_UNTAGGED_INV_MSN_RANGE = common dso_local global i8* null, align 8
@DDP_UNTAGGED_INV_TOO_LONG = common dso_local global i8* null, align 8
@DDP_TAGGED_INV_DDP_VER = common dso_local global i8* null, align 8
@DDP_UNTAGGED_INV_DDP_VER = common dso_local global i8* null, align 8
@DDP_UNTAGGED_INV_MO = common dso_local global i8* null, align 8
@DDP_UNTAGGED_INV_MSN_NO_BUF = common dso_local global i8* null, align 8
@RDMAP_INV_RDMAP_VER = common dso_local global i8* null, align 8
@RDMAP_UNEXPECTED_OP = common dso_local global i8* null, align 8
@RDMAP_UNSPECIFIED = common dso_local global i8* null, align 8
@NES_AEQE_INBOUND_RDMA = common dso_local global i32 0, align 4
@NES_AEQE_SQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_qp*, i64, i32)* @nes_bld_terminate_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_bld_terminate_hdr(%struct.nes_qp* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nes_qp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nes_terminate_hdr*, align 8
  store %struct.nes_qp* %0, %struct.nes_qp** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %14 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @BAD_FRAME_OFFSET, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %21 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.nes_terminate_hdr*
  store %struct.nes_terminate_hdr* %24, %struct.nes_terminate_hdr** %12, align 8
  %25 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %26 = call i32 @memset(%struct.nes_terminate_hdr* %25, i32 0, i32 64)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NES_AEQE_Q2_DATA_WRITTEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %3
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32* @locate_mpa(i32* %32, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = bitcast i32* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @be16_to_cpu(i64 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %109

41:                                               ; preds = %31
  store i32 2, i32* %9, align 4
  %42 = load i32, i32* @DDP_LEN_FLAG, align 4
  %43 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %44 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 128
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @TERM_DDP_LEN_TAGGED, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i64, i64* @TERM_DDP_LEN_TAGGED, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @DDP_HDR_FLAG, align 4
  %61 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %62 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %54, %50
  br label %108

66:                                               ; preds = %41
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @TERM_DDP_LEN_UNTAGGED, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i64, i64* @TERM_DDP_LEN_UNTAGGED, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* @DDP_HDR_FLAG, align 4
  %77 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %78 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %70, %66
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @TERM_DDP_LEN_UNTAGGED, align 8
  %84 = load i64, i64* @TERM_RDMA_LEN, align 8
  %85 = add nsw i64 %83, %84
  %86 = icmp sge i64 %82, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RDMA_OPCODE_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @RDMA_READ_REQ_OPCODE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = load i64, i64* @TERM_RDMA_LEN, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* @RDMA_HDR_FLAG, align 4
  %102 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %103 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %95, %87
  br label %107

107:                                              ; preds = %106, %81
  br label %108

108:                                              ; preds = %107, %65
  br label %109

109:                                              ; preds = %108, %31
  br label %110

110:                                              ; preds = %109, %3
  %111 = load i64, i64* %5, align 8
  switch i64 %111, label %424 [
    i64 144, label %112
    i64 147, label %139
    i64 152, label %150
    i64 150, label %161
    i64 151, label %161
    i64 149, label %188
    i64 146, label %218
    i64 148, label %218
    i64 130, label %218
    i64 145, label %229
    i64 153, label %240
    i64 134, label %278
    i64 133, label %289
    i64 132, label %300
    i64 131, label %300
    i64 141, label %311
    i64 140, label %311
    i64 143, label %322
    i64 142, label %322
    i64 139, label %333
    i64 138, label %344
    i64 137, label %369
    i64 136, label %380
    i64 135, label %391
    i64 129, label %402
    i64 128, label %413
  ]

112:                                              ; preds = %110
  %113 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @iwarp_opcode(%struct.nes_qp* %113, i32 %114)
  switch i32 %115, label %127 [
    i32 154, label %116
  ]

116:                                              ; preds = %112
  %117 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* @LAYER_DDP, align 4
  %119 = shl i32 %118, 4
  %120 = load i32, i32* @DDP_TAGGED_BUFFER, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %123 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i8*, i8** @DDP_TAGGED_INV_STAG, align 8
  %125 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %126 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  br label %138

127:                                              ; preds = %112
  %128 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* @LAYER_RDMA, align 4
  %130 = shl i32 %129, 4
  %131 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %134 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i8*, i8** @RDMAP_INV_STAG, align 8
  %136 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %137 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %127, %116
  br label %435

139:                                              ; preds = %110
  %140 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* @LAYER_RDMA, align 4
  %142 = shl i32 %141, 4
  %143 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %146 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i8*, i8** @RDMAP_INV_STAG, align 8
  %148 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %149 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  br label %435

150:                                              ; preds = %110
  %151 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* @LAYER_DDP, align 4
  %153 = shl i32 %152, 4
  %154 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %157 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load i8*, i8** @DDP_UNTAGGED_INV_QN, align 8
  %159 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %160 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  br label %435

161:                                              ; preds = %110, %110
  %162 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @iwarp_opcode(%struct.nes_qp* %162, i32 %163)
  switch i32 %164, label %176 [
    i32 156, label %165
    i32 155, label %165
  ]

165:                                              ; preds = %161, %161
  %166 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* @LAYER_RDMA, align 4
  %168 = shl i32 %167, 4
  %169 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %172 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i8*, i8** @RDMAP_CANT_INV_STAG, align 8
  %174 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %175 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  br label %187

176:                                              ; preds = %161
  %177 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* @LAYER_RDMA, align 4
  %179 = shl i32 %178, 4
  %180 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %183 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i8*, i8** @RDMAP_INV_STAG, align 8
  %185 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %186 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %176, %165
  br label %435

188:                                              ; preds = %110
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @NES_AEQE_Q2_DATA_ETHERNET, align 4
  %191 = load i32, i32* @NES_AEQE_Q2_DATA_MPA, align 4
  %192 = or i32 %190, %191
  %193 = and i32 %189, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %188
  %196 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* @LAYER_DDP, align 4
  %198 = shl i32 %197, 4
  %199 = load i32, i32* @DDP_TAGGED_BUFFER, align 4
  %200 = or i32 %198, %199
  %201 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %202 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load i8*, i8** @DDP_TAGGED_BOUNDS, align 8
  %204 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %205 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %204, i32 0, i32 1
  store i8* %203, i8** %205, align 8
  br label %217

206:                                              ; preds = %188
  %207 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* @LAYER_RDMA, align 4
  %209 = shl i32 %208, 4
  %210 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %211 = or i32 %209, %210
  %212 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %213 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  %214 = load i8*, i8** @RDMAP_INV_BOUNDS, align 8
  %215 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %216 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %215, i32 0, i32 1
  store i8* %214, i8** %216, align 8
  br label %217

217:                                              ; preds = %206, %195
  br label %435

218:                                              ; preds = %110, %110, %110
  %219 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* @LAYER_RDMA, align 4
  %221 = shl i32 %220, 4
  %222 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %223 = or i32 %221, %222
  %224 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %225 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load i8*, i8** @RDMAP_ACCESS, align 8
  %227 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %228 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %227, i32 0, i32 1
  store i8* %226, i8** %228, align 8
  br label %435

229:                                              ; preds = %110
  %230 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* @LAYER_RDMA, align 4
  %232 = shl i32 %231, 4
  %233 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %234 = or i32 %232, %233
  %235 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %236 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load i8*, i8** @RDMAP_TO_WRAP, align 8
  %238 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %239 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %238, i32 0, i32 1
  store i8* %237, i8** %239, align 8
  br label %435

240:                                              ; preds = %110
  %241 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @iwarp_opcode(%struct.nes_qp* %241, i32 %242)
  switch i32 %243, label %266 [
    i32 154, label %244
    i32 156, label %255
    i32 155, label %255
  ]

244:                                              ; preds = %240
  %245 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* @LAYER_DDP, align 4
  %247 = shl i32 %246, 4
  %248 = load i32, i32* @DDP_TAGGED_BUFFER, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %251 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  %252 = load i8*, i8** @DDP_TAGGED_UNASSOC_STAG, align 8
  %253 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %254 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %253, i32 0, i32 1
  store i8* %252, i8** %254, align 8
  br label %277

255:                                              ; preds = %240, %240
  %256 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* @LAYER_RDMA, align 4
  %258 = shl i32 %257, 4
  %259 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %260 = or i32 %258, %259
  %261 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %262 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load i8*, i8** @RDMAP_CANT_INV_STAG, align 8
  %264 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %265 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %264, i32 0, i32 1
  store i8* %263, i8** %265, align 8
  br label %277

266:                                              ; preds = %240
  %267 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* @LAYER_RDMA, align 4
  %269 = shl i32 %268, 4
  %270 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %271 = or i32 %269, %270
  %272 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %273 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  %274 = load i8*, i8** @RDMAP_UNASSOC_STAG, align 8
  %275 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %276 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  br label %277

277:                                              ; preds = %266, %255, %244
  br label %435

278:                                              ; preds = %110
  %279 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* @LAYER_MPA, align 4
  %281 = shl i32 %280, 4
  %282 = load i32, i32* @DDP_LLP, align 4
  %283 = or i32 %281, %282
  %284 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %285 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  %286 = load i8*, i8** @MPA_MARKER, align 8
  %287 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %288 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %287, i32 0, i32 1
  store i8* %286, i8** %288, align 8
  br label %435

289:                                              ; preds = %110
  %290 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %290, i32* %11, align 4
  %291 = load i32, i32* @LAYER_MPA, align 4
  %292 = shl i32 %291, 4
  %293 = load i32, i32* @DDP_LLP, align 4
  %294 = or i32 %292, %293
  %295 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %296 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  %297 = load i8*, i8** @MPA_CRC, align 8
  %298 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %299 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %298, i32 0, i32 1
  store i8* %297, i8** %299, align 8
  br label %435

300:                                              ; preds = %110, %110
  %301 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  store i32 %301, i32* %11, align 4
  %302 = load i32, i32* @LAYER_DDP, align 4
  %303 = shl i32 %302, 4
  %304 = load i32, i32* @DDP_CATASTROPHIC, align 4
  %305 = or i32 %303, %304
  %306 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %307 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  %308 = load i8*, i8** @DDP_CATASTROPHIC_LOCAL, align 8
  %309 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %310 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %309, i32 0, i32 1
  store i8* %308, i8** %310, align 8
  br label %435

311:                                              ; preds = %110, %110
  %312 = load i32, i32* @IB_WC_FATAL_ERR, align 4
  store i32 %312, i32* %11, align 4
  %313 = load i32, i32* @LAYER_DDP, align 4
  %314 = shl i32 %313, 4
  %315 = load i32, i32* @DDP_CATASTROPHIC, align 4
  %316 = or i32 %314, %315
  %317 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %318 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 8
  %319 = load i8*, i8** @DDP_CATASTROPHIC_LOCAL, align 8
  %320 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %321 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %320, i32 0, i32 1
  store i8* %319, i8** %321, align 8
  br label %435

322:                                              ; preds = %110, %110
  %323 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %323, i32* %11, align 4
  %324 = load i32, i32* @LAYER_DDP, align 4
  %325 = shl i32 %324, 4
  %326 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %327 = or i32 %325, %326
  %328 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %329 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %328, i32 0, i32 0
  store i32 %327, i32* %329, align 8
  %330 = load i8*, i8** @DDP_UNTAGGED_INV_MSN_RANGE, align 8
  %331 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %332 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %331, i32 0, i32 1
  store i8* %330, i8** %332, align 8
  br label %435

333:                                              ; preds = %110
  %334 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  store i32 %334, i32* %11, align 4
  %335 = load i32, i32* @LAYER_DDP, align 4
  %336 = shl i32 %335, 4
  %337 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %338 = or i32 %336, %337
  %339 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %340 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %339, i32 0, i32 0
  store i32 %338, i32* %340, align 8
  %341 = load i8*, i8** @DDP_UNTAGGED_INV_TOO_LONG, align 8
  %342 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %343 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %342, i32 0, i32 1
  store i8* %341, i8** %343, align 8
  br label %435

344:                                              ; preds = %110
  %345 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %345, i32* %11, align 4
  %346 = load i32, i32* %10, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %358

348:                                              ; preds = %344
  %349 = load i32, i32* @LAYER_DDP, align 4
  %350 = shl i32 %349, 4
  %351 = load i32, i32* @DDP_TAGGED_BUFFER, align 4
  %352 = or i32 %350, %351
  %353 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %354 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %353, i32 0, i32 0
  store i32 %352, i32* %354, align 8
  %355 = load i8*, i8** @DDP_TAGGED_INV_DDP_VER, align 8
  %356 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %357 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %356, i32 0, i32 1
  store i8* %355, i8** %357, align 8
  br label %368

358:                                              ; preds = %344
  %359 = load i32, i32* @LAYER_DDP, align 4
  %360 = shl i32 %359, 4
  %361 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %362 = or i32 %360, %361
  %363 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %364 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %363, i32 0, i32 0
  store i32 %362, i32* %364, align 8
  %365 = load i8*, i8** @DDP_UNTAGGED_INV_DDP_VER, align 8
  %366 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %367 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %366, i32 0, i32 1
  store i8* %365, i8** %367, align 8
  br label %368

368:                                              ; preds = %358, %348
  br label %435

369:                                              ; preds = %110
  %370 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %370, i32* %11, align 4
  %371 = load i32, i32* @LAYER_DDP, align 4
  %372 = shl i32 %371, 4
  %373 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %374 = or i32 %372, %373
  %375 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %376 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %375, i32 0, i32 0
  store i32 %374, i32* %376, align 8
  %377 = load i8*, i8** @DDP_UNTAGGED_INV_MO, align 8
  %378 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %379 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %378, i32 0, i32 1
  store i8* %377, i8** %379, align 8
  br label %435

380:                                              ; preds = %110
  %381 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %381, i32* %11, align 4
  %382 = load i32, i32* @LAYER_DDP, align 4
  %383 = shl i32 %382, 4
  %384 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %385 = or i32 %383, %384
  %386 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %387 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %386, i32 0, i32 0
  store i32 %385, i32* %387, align 8
  %388 = load i8*, i8** @DDP_UNTAGGED_INV_MSN_NO_BUF, align 8
  %389 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %390 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %389, i32 0, i32 1
  store i8* %388, i8** %390, align 8
  br label %435

391:                                              ; preds = %110
  %392 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %392, i32* %11, align 4
  %393 = load i32, i32* @LAYER_DDP, align 4
  %394 = shl i32 %393, 4
  %395 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %396 = or i32 %394, %395
  %397 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %398 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %397, i32 0, i32 0
  store i32 %396, i32* %398, align 8
  %399 = load i8*, i8** @DDP_UNTAGGED_INV_QN, align 8
  %400 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %401 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %400, i32 0, i32 1
  store i8* %399, i8** %401, align 8
  br label %435

402:                                              ; preds = %110
  %403 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %403, i32* %11, align 4
  %404 = load i32, i32* @LAYER_RDMA, align 4
  %405 = shl i32 %404, 4
  %406 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %407 = or i32 %405, %406
  %408 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %409 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %408, i32 0, i32 0
  store i32 %407, i32* %409, align 8
  %410 = load i8*, i8** @RDMAP_INV_RDMAP_VER, align 8
  %411 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %412 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %411, i32 0, i32 1
  store i8* %410, i8** %412, align 8
  br label %435

413:                                              ; preds = %110
  %414 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  store i32 %414, i32* %11, align 4
  %415 = load i32, i32* @LAYER_RDMA, align 4
  %416 = shl i32 %415, 4
  %417 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %418 = or i32 %416, %417
  %419 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %420 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %419, i32 0, i32 0
  store i32 %418, i32* %420, align 8
  %421 = load i8*, i8** @RDMAP_UNEXPECTED_OP, align 8
  %422 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %423 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %422, i32 0, i32 1
  store i8* %421, i8** %423, align 8
  br label %435

424:                                              ; preds = %110
  %425 = load i32, i32* @IB_WC_FATAL_ERR, align 4
  store i32 %425, i32* %11, align 4
  %426 = load i32, i32* @LAYER_RDMA, align 4
  %427 = shl i32 %426, 4
  %428 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %429 = or i32 %427, %428
  %430 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %431 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %430, i32 0, i32 0
  store i32 %429, i32* %431, align 8
  %432 = load i8*, i8** @RDMAP_UNSPECIFIED, align 8
  %433 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %434 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %433, i32 0, i32 1
  store i8* %432, i8** %434, align 8
  br label %435

435:                                              ; preds = %424, %413, %402, %391, %380, %369, %368, %333, %322, %311, %300, %289, %278, %277, %229, %218, %217, %187, %150, %139, %138
  %436 = load i32, i32* %9, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %435
  %439 = load %struct.nes_terminate_hdr*, %struct.nes_terminate_hdr** %12, align 8
  %440 = getelementptr inbounds %struct.nes_terminate_hdr, %struct.nes_terminate_hdr* %439, i64 1
  %441 = load i32*, i32** %7, align 8
  %442 = load i32, i32* %9, align 4
  %443 = call i32 @memcpy(%struct.nes_terminate_hdr* %440, i32* %441, i32 %442)
  br label %444

444:                                              ; preds = %438, %435
  %445 = load i32, i32* %11, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %466

447:                                              ; preds = %444
  %448 = load i32, i32* @NES_AEQE_INBOUND_RDMA, align 4
  %449 = load i32, i32* %6, align 4
  %450 = and i32 %448, %449
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %466

452:                                              ; preds = %447
  %453 = load i32, i32* %6, align 4
  %454 = load i32, i32* @NES_AEQE_SQ, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %452
  %458 = load i32, i32* %11, align 4
  %459 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %460 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %459, i32 0, i32 0
  store i32 %458, i32* %460, align 8
  br label %465

461:                                              ; preds = %452
  %462 = load i32, i32* %11, align 4
  %463 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %464 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %463, i32 0, i32 1
  store i32 %462, i32* %464, align 4
  br label %465

465:                                              ; preds = %461, %457
  br label %466

466:                                              ; preds = %465, %447, %444
  %467 = load i32, i32* %9, align 4
  %468 = sext i32 %467 to i64
  %469 = add i64 24, %468
  %470 = trunc i64 %469 to i32
  ret i32 %470
}

declare dso_local i32 @memset(%struct.nes_terminate_hdr*, i32, i32) #1

declare dso_local i32* @locate_mpa(i32*, i32) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @iwarp_opcode(%struct.nes_qp*, i32) #1

declare dso_local i32 @memcpy(%struct.nes_terminate_hdr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
