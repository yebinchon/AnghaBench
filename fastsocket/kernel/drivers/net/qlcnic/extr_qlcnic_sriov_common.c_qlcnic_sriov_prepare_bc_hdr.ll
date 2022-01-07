; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_prepare_bc_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_prepare_bc_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { i32, i32, i32, i64, %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_payload*, %struct.qlcnic_bc_payload*, %struct.qlcnic_bc_hdr* }
%struct.qlcnic_bc_payload = type { i32 }
%struct.qlcnic_bc_hdr = type { i32, i32, i32, i32, i64, i64, i32, i64 }
%struct.qlcnic_cmd_args = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@QLC_BC_PAYLOAD_SZ = common dso_local global i32 0, align 4
@QLC_BC_COMMAND = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*, i32, i64)* @qlcnic_sriov_prepare_bc_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_prepare_bc_hdr(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_bc_trans*, align 8
  %7 = alloca %struct.qlcnic_cmd_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.qlcnic_bc_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %6, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* @QLC_BC_PAYLOAD_SZ, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @QLC_BC_COMMAND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %118

22:                                               ; preds = %4
  %23 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %24 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to %struct.qlcnic_bc_payload*
  %28 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %28, i32 0, i32 6
  store %struct.qlcnic_bc_payload* %27, %struct.qlcnic_bc_payload** %29, align 8
  %30 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %31 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to %struct.qlcnic_bc_payload*
  %35 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %36 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %35, i32 0, i32 5
  store %struct.qlcnic_bc_payload* %34, %struct.qlcnic_bc_payload** %36, align 8
  %37 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %38 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %41, 4
  %43 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %44 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %46 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %49, 4
  %51 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %52 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %54 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 255
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %15, align 8
  %61 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = srem i32 %63, %64
  store i32 %65, i32* %14, align 4
  %66 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %67 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sdiv i32 %68, %69
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %16, align 8
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %22
  %75 = load i64, i64* %16, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %16, align 8
  br label %77

77:                                               ; preds = %74, %22
  %78 = load i64, i64* %16, align 8
  store i64 %78, i64* %17, align 8
  %79 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %80 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %79, i32 0, i32 7
  %81 = load i64, i64* %16, align 8
  %82 = call i64 @qlcnic_sriov_alloc_bc_msg(%struct.qlcnic_bc_hdr** %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %241

87:                                               ; preds = %77
  %88 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %89 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = srem i32 %90, %91
  store i32 %92, i32* %14, align 4
  %93 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %94 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %13, align 4
  %97 = sdiv i32 %95, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %16, align 8
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %87
  %102 = load i64, i64* %16, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %16, align 8
  br label %104

104:                                              ; preds = %101, %87
  %105 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %106 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %105, i32 0, i32 4
  %107 = load i64, i64* %16, align 8
  %108 = call i64 @qlcnic_sriov_alloc_bc_msg(%struct.qlcnic_bc_hdr** %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %241

113:                                              ; preds = %104
  %114 = load i64, i64* %17, align 8
  store i64 %114, i64* %16, align 8
  %115 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %116 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %115, i32 0, i32 7
  %117 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %116, align 8
  store %struct.qlcnic_bc_hdr* %117, %struct.qlcnic_bc_hdr** %10, align 8
  br label %175

118:                                              ; preds = %4
  %119 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %120 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %119, i32 0, i32 6
  %121 = load %struct.qlcnic_bc_payload*, %struct.qlcnic_bc_payload** %120, align 8
  %122 = bitcast %struct.qlcnic_bc_payload* %121 to i32*
  %123 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %124 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i32* %122, i32** %125, align 8
  %126 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %127 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %126, i32 0, i32 5
  %128 = load %struct.qlcnic_bc_payload*, %struct.qlcnic_bc_payload** %127, align 8
  %129 = bitcast %struct.qlcnic_bc_payload* %128 to i32*
  %130 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %131 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32* %129, i32** %132, align 8
  %133 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %134 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 255
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %15, align 8
  %141 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %142 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %13, align 4
  %145 = srem i32 %143, %144
  store i32 %145, i32* %14, align 4
  %146 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %147 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %13, align 4
  %150 = sdiv i32 %148, %149
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %16, align 8
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %118
  %155 = load i64, i64* %16, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %16, align 8
  br label %157

157:                                              ; preds = %154, %118
  %158 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %159 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sdiv i32 %160, 4
  %162 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %163 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  %165 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %166 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sdiv i32 %167, 4
  %169 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %170 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 8
  %172 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %173 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %172, i32 0, i32 4
  %174 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %173, align 8
  store %struct.qlcnic_bc_hdr* %174, %struct.qlcnic_bc_hdr** %10, align 8
  br label %175

175:                                              ; preds = %157, %113
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %178 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = load i64, i64* %15, align 8
  %180 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %181 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %180, i32 0, i32 3
  store i64 %179, i64* %181, align 8
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %237, %175
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %16, align 8
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %187, label %240

187:                                              ; preds = %182
  %188 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %188, i64 %190
  %192 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %191, i32 0, i32 0
  store i32 2, i32* %192, align 8
  %193 = load i64, i64* %9, align 8
  %194 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %194, i64 %196
  %198 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %197, i32 0, i32 7
  store i64 %193, i64* %198, align 8
  %199 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %200 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %202, i64 %204
  %206 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %205, i32 0, i32 6
  store i32 %201, i32* %206, align 8
  %207 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %207, i64 %209
  %211 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %210, i32 0, i32 1
  store i32 1, i32* %211, align 4
  %212 = load i64, i64* %16, align 8
  %213 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %213, i64 %215
  %217 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %216, i32 0, i32 5
  store i64 %212, i64* %217, align 8
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  %220 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %220, i64 %222
  %224 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %223, i32 0, i32 2
  store i32 %219, i32* %224, align 8
  %225 = load i64, i64* %15, align 8
  %226 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %226, i64 %228
  %230 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %229, i32 0, i32 4
  store i64 %225, i64* %230, align 8
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %232, i64 %234
  %236 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %235, i32 0, i32 3
  store i32 %231, i32* %236, align 4
  br label %237

237:                                              ; preds = %187
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %11, align 4
  br label %182

240:                                              ; preds = %182
  store i32 0, i32* %5, align 4
  br label %241

241:                                              ; preds = %240, %110, %84
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i64 @qlcnic_sriov_alloc_bc_msg(%struct.qlcnic_bc_hdr**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
