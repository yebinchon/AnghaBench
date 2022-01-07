; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_build_term_codes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_build_term_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cqe = type { i32 }

@LAYER_RDMAP = common dso_local global i32 0, align 4
@DDP_LOCAL_CATA = common dso_local global i32 0, align 4
@FW_RI_SEND_WITH_INV = common dso_local global i32 0, align 4
@FW_RI_SEND_WITH_SE_INV = common dso_local global i32 0, align 4
@FW_RI_RDMA_WRITE = common dso_local global i32 0, align 4
@FW_RI_READ_RESP = common dso_local global i32 0, align 4
@RDMAP_REMOTE_OP = common dso_local global i32 0, align 4
@RDMAP_CANT_INV_STAG = common dso_local global i32 0, align 4
@RDMAP_REMOTE_PROT = common dso_local global i32 0, align 4
@RDMAP_INV_STAG = common dso_local global i32 0, align 4
@RDMAP_STAG_NOT_ASSOC = common dso_local global i32 0, align 4
@RDMAP_ACC_VIOL = common dso_local global i32 0, align 4
@RDMAP_TO_WRAP = common dso_local global i32 0, align 4
@LAYER_DDP = common dso_local global i32 0, align 4
@DDP_TAGGED_ERR = common dso_local global i32 0, align 4
@DDPT_BASE_BOUNDS = common dso_local global i32 0, align 4
@RDMAP_BASE_BOUNDS = common dso_local global i32 0, align 4
@RDMAP_LOCAL_CATA = common dso_local global i32 0, align 4
@DDP_UNTAGGED_ERR = common dso_local global i32 0, align 4
@DDPU_INV_MSN_NOBUF = common dso_local global i32 0, align 4
@LAYER_MPA = common dso_local global i32 0, align 4
@DDP_LLP = common dso_local global i32 0, align 4
@MPA_CRC_ERR = common dso_local global i32 0, align 4
@MPA_MARKER_ERR = common dso_local global i32 0, align 4
@DDPU_MSG_TOOBIG = common dso_local global i32 0, align 4
@DDPT_INV_VERS = common dso_local global i32 0, align 4
@DDPU_INV_VERS = common dso_local global i32 0, align 4
@RDMAP_INV_VERS = common dso_local global i32 0, align 4
@RDMAP_INV_OPCODE = common dso_local global i32 0, align 4
@DDPU_INV_QN = common dso_local global i32 0, align 4
@DDPU_INV_MSN_RANGE = common dso_local global i32 0, align 4
@DDPU_INV_MO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_cqe*, i32*, i32*)* @build_term_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_term_codes(%struct.t4_cqe* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.t4_cqe*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.t4_cqe* %0, %struct.t4_cqe** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %13 = icmp ne %struct.t4_cqe* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @LAYER_RDMAP, align 4
  %16 = load i32, i32* @DDP_LOCAL_CATA, align 4
  %17 = or i32 %15, %16
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 0, i32* %19, align 4
  br label %242

20:                                               ; preds = %3
  %21 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %22 = call i32 @CQE_STATUS(%struct.t4_cqe* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %24 = call i32 @CQE_OPCODE(%struct.t4_cqe* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %26 = call i32 @RQ_TYPE(%struct.t4_cqe* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @FW_RI_SEND_WITH_INV, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @FW_RI_SEND_WITH_SE_INV, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %20
  %35 = phi i1 [ true, %20 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @FW_RI_RDMA_WRITE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @FW_RI_READ_RESP, align 4
  %46 = icmp eq i32 %44, %45
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %34
  %50 = phi i1 [ true, %34 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %236 [
    i32 130, label %53
    i32 134, label %71
    i32 132, label %90
    i32 153, label %97
    i32 128, label %104
    i32 152, label %111
    i32 144, label %129
    i32 145, label %129
    i32 148, label %136
    i32 147, label %136
    i32 146, label %136
    i32 136, label %142
    i32 135, label %149
    i32 151, label %156
    i32 142, label %163
    i32 133, label %170
    i32 149, label %177
    i32 131, label %195
    i32 137, label %202
    i32 150, label %209
    i32 140, label %216
    i32 139, label %216
    i32 138, label %216
    i32 143, label %216
    i32 129, label %223
    i32 141, label %229
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* @LAYER_RDMAP, align 4
  %58 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @RDMAP_CANT_INV_STAG, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %70

63:                                               ; preds = %53
  %64 = load i32, i32* @LAYER_RDMAP, align 4
  %65 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %66 = or i32 %64, %65
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @RDMAP_INV_STAG, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %56
  br label %242

71:                                               ; preds = %49
  %72 = load i32, i32* @LAYER_RDMAP, align 4
  %73 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %74 = or i32 %72, %73
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @FW_RI_SEND_WITH_INV, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @FW_RI_SEND_WITH_SE_INV, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %71
  %84 = load i32, i32* @RDMAP_CANT_INV_STAG, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  br label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @RDMAP_STAG_NOT_ASSOC, align 4
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %83
  br label %242

90:                                               ; preds = %49
  %91 = load i32, i32* @LAYER_RDMAP, align 4
  %92 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %93 = or i32 %91, %92
  %94 = load i32*, i32** %5, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @RDMAP_STAG_NOT_ASSOC, align 4
  %96 = load i32*, i32** %6, align 8
  store i32 %95, i32* %96, align 4
  br label %242

97:                                               ; preds = %49
  %98 = load i32, i32* @LAYER_RDMAP, align 4
  %99 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %100 = or i32 %98, %99
  %101 = load i32*, i32** %5, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @RDMAP_ACC_VIOL, align 4
  %103 = load i32*, i32** %6, align 8
  store i32 %102, i32* %103, align 4
  br label %242

104:                                              ; preds = %49
  %105 = load i32, i32* @LAYER_RDMAP, align 4
  %106 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %107 = or i32 %105, %106
  %108 = load i32*, i32** %5, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @RDMAP_TO_WRAP, align 4
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  br label %242

111:                                              ; preds = %49
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32, i32* @LAYER_DDP, align 4
  %116 = load i32, i32* @DDP_TAGGED_ERR, align 4
  %117 = or i32 %115, %116
  %118 = load i32*, i32** %5, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @DDPT_BASE_BOUNDS, align 4
  %120 = load i32*, i32** %6, align 8
  store i32 %119, i32* %120, align 4
  br label %128

121:                                              ; preds = %111
  %122 = load i32, i32* @LAYER_RDMAP, align 4
  %123 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %124 = or i32 %122, %123
  %125 = load i32*, i32** %5, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* @RDMAP_BASE_BOUNDS, align 4
  %127 = load i32*, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %114
  br label %242

129:                                              ; preds = %49, %49
  %130 = load i32, i32* @LAYER_RDMAP, align 4
  %131 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %132 = or i32 %130, %131
  %133 = load i32*, i32** %5, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @RDMAP_CANT_INV_STAG, align 4
  %135 = load i32*, i32** %6, align 8
  store i32 %134, i32* %135, align 4
  br label %242

136:                                              ; preds = %49, %49, %49
  %137 = load i32, i32* @LAYER_RDMAP, align 4
  %138 = load i32, i32* @RDMAP_LOCAL_CATA, align 4
  %139 = or i32 %137, %138
  %140 = load i32*, i32** %5, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32*, i32** %6, align 8
  store i32 0, i32* %141, align 4
  br label %242

142:                                              ; preds = %49
  %143 = load i32, i32* @LAYER_DDP, align 4
  %144 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %145 = or i32 %143, %144
  %146 = load i32*, i32** %5, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* @DDPU_INV_MSN_NOBUF, align 4
  %148 = load i32*, i32** %6, align 8
  store i32 %147, i32* %148, align 4
  br label %242

149:                                              ; preds = %49
  %150 = load i32, i32* @LAYER_DDP, align 4
  %151 = load i32, i32* @DDP_TAGGED_ERR, align 4
  %152 = or i32 %150, %151
  %153 = load i32*, i32** %5, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* @DDPT_BASE_BOUNDS, align 4
  %155 = load i32*, i32** %6, align 8
  store i32 %154, i32* %155, align 4
  br label %242

156:                                              ; preds = %49
  %157 = load i32, i32* @LAYER_MPA, align 4
  %158 = load i32, i32* @DDP_LLP, align 4
  %159 = or i32 %157, %158
  %160 = load i32*, i32** %5, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* @MPA_CRC_ERR, align 4
  %162 = load i32*, i32** %6, align 8
  store i32 %161, i32* %162, align 4
  br label %242

163:                                              ; preds = %49
  %164 = load i32, i32* @LAYER_MPA, align 4
  %165 = load i32, i32* @DDP_LLP, align 4
  %166 = or i32 %164, %165
  %167 = load i32*, i32** %5, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* @MPA_MARKER_ERR, align 4
  %169 = load i32*, i32** %6, align 8
  store i32 %168, i32* %169, align 4
  br label %242

170:                                              ; preds = %49
  %171 = load i32, i32* @LAYER_DDP, align 4
  %172 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %173 = or i32 %171, %172
  %174 = load i32*, i32** %5, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* @DDPU_MSG_TOOBIG, align 4
  %176 = load i32*, i32** %6, align 8
  store i32 %175, i32* %176, align 4
  br label %242

177:                                              ; preds = %49
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i32, i32* @LAYER_DDP, align 4
  %182 = load i32, i32* @DDP_TAGGED_ERR, align 4
  %183 = or i32 %181, %182
  %184 = load i32*, i32** %5, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32, i32* @DDPT_INV_VERS, align 4
  %186 = load i32*, i32** %6, align 8
  store i32 %185, i32* %186, align 4
  br label %194

187:                                              ; preds = %177
  %188 = load i32, i32* @LAYER_DDP, align 4
  %189 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %190 = or i32 %188, %189
  %191 = load i32*, i32** %5, align 8
  store i32 %190, i32* %191, align 4
  %192 = load i32, i32* @DDPU_INV_VERS, align 4
  %193 = load i32*, i32** %6, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %187, %180
  br label %242

195:                                              ; preds = %49
  %196 = load i32, i32* @LAYER_RDMAP, align 4
  %197 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %198 = or i32 %196, %197
  %199 = load i32*, i32** %5, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* @RDMAP_INV_VERS, align 4
  %201 = load i32*, i32** %6, align 8
  store i32 %200, i32* %201, align 4
  br label %242

202:                                              ; preds = %49
  %203 = load i32, i32* @LAYER_RDMAP, align 4
  %204 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %205 = or i32 %203, %204
  %206 = load i32*, i32** %5, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* @RDMAP_INV_OPCODE, align 4
  %208 = load i32*, i32** %6, align 8
  store i32 %207, i32* %208, align 4
  br label %242

209:                                              ; preds = %49
  %210 = load i32, i32* @LAYER_DDP, align 4
  %211 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %212 = or i32 %210, %211
  %213 = load i32*, i32** %5, align 8
  store i32 %212, i32* %213, align 4
  %214 = load i32, i32* @DDPU_INV_QN, align 4
  %215 = load i32*, i32** %6, align 8
  store i32 %214, i32* %215, align 4
  br label %242

216:                                              ; preds = %49, %49, %49, %49
  %217 = load i32, i32* @LAYER_DDP, align 4
  %218 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %219 = or i32 %217, %218
  %220 = load i32*, i32** %5, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* @DDPU_INV_MSN_RANGE, align 4
  %222 = load i32*, i32** %6, align 8
  store i32 %221, i32* %222, align 4
  br label %242

223:                                              ; preds = %49
  %224 = load i32, i32* @LAYER_DDP, align 4
  %225 = load i32, i32* @DDP_LOCAL_CATA, align 4
  %226 = or i32 %224, %225
  %227 = load i32*, i32** %5, align 8
  store i32 %226, i32* %227, align 4
  %228 = load i32*, i32** %6, align 8
  store i32 0, i32* %228, align 4
  br label %242

229:                                              ; preds = %49
  %230 = load i32, i32* @LAYER_DDP, align 4
  %231 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %232 = or i32 %230, %231
  %233 = load i32*, i32** %5, align 8
  store i32 %232, i32* %233, align 4
  %234 = load i32, i32* @DDPU_INV_MO, align 4
  %235 = load i32*, i32** %6, align 8
  store i32 %234, i32* %235, align 4
  br label %242

236:                                              ; preds = %49
  %237 = load i32, i32* @LAYER_RDMAP, align 4
  %238 = load i32, i32* @DDP_LOCAL_CATA, align 4
  %239 = or i32 %237, %238
  %240 = load i32*, i32** %5, align 8
  store i32 %239, i32* %240, align 4
  %241 = load i32*, i32** %6, align 8
  store i32 0, i32* %241, align 4
  br label %242

242:                                              ; preds = %14, %236, %229, %223, %216, %209, %202, %195, %194, %170, %163, %156, %149, %142, %136, %129, %128, %104, %97, %90, %89, %70
  ret void
}

declare dso_local i32 @CQE_STATUS(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_OPCODE(%struct.t4_cqe*) #1

declare dso_local i32 @RQ_TYPE(%struct.t4_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
