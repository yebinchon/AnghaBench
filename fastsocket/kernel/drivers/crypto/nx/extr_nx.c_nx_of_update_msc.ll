; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_of_update_msc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_of_update_msc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.property = type { i32, i64 }
%struct.nx_of = type { i32, %struct.TYPE_2__*** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.msc_triplet = type { i32, i32, i32 }
%struct.max_sync_cop = type { i32, i64, i64, %struct.msc_triplet* }

@NX_MAX_FC = common dso_local global i64 0, align 8
@NX_MAX_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"unknown function code/mode combo: %d/%d (ignored)\0A\00", align 1
@NX_FC_AES = common dso_local global i64 0, align 8
@NX_FC_AES_HMAC = common dso_local global i64 0, align 8
@NX_FC_SHA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"unknown function code/key bit len combo: (%u/256)\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"unknown function code/key bit len combo: (%u/%u)\0A\00", align 1
@NX_OF_FLAG_MAXSYNCCOP_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.property*, %struct.nx_of*)* @nx_of_update_msc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nx_of_update_msc(%struct.device* %0, %struct.property* %1, %struct.nx_of* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.nx_of*, align 8
  %7 = alloca %struct.msc_triplet*, align 8
  %8 = alloca %struct.max_sync_cop*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.property* %1, %struct.property** %5, align 8
  store %struct.nx_of* %2, %struct.nx_of** %6, align 8
  %12 = load %struct.property*, %struct.property** %5, align 8
  %13 = getelementptr inbounds %struct.property, %struct.property* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.max_sync_cop*
  store %struct.max_sync_cop* %15, %struct.max_sync_cop** %8, align 8
  %16 = load %struct.property*, %struct.property** %5, align 8
  %17 = getelementptr inbounds %struct.property, %struct.property* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %305, %3
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = add i64 %21, 32
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ule i64 %22, %24
  br i1 %25, label %26, label %308

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, 32
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %32 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %31, i32 0, i32 3
  %33 = load %struct.msc_triplet*, %struct.msc_triplet** %32, align 8
  store %struct.msc_triplet* %33, %struct.msc_triplet** %7, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %302, %26
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 %36, 12
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp ule i64 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %44 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br label %47

47:                                               ; preds = %41, %34
  %48 = phi i1 [ false, %34 ], [ %46, %41 ]
  br i1 %48, label %49, label %305

49:                                               ; preds = %47
  %50 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %51 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NX_MAX_FC, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %57 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NX_MAX_MODE, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55, %49
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %64 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %67 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %68)
  br label %295

70:                                               ; preds = %55
  %71 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %72 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %285 [
    i32 128, label %74
    i32 160, label %74
    i32 192, label %111
    i32 256, label %148
    i32 512, label %248
  ]

74:                                               ; preds = %70, %70
  %75 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %76 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %79 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %79, align 8
  %81 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %82 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %80, i64 %83
  %85 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %84, align 8
  %86 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %87 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %85, i64 %88
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %77, i32* %92, align 4
  %93 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %94 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %97 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %97, align 8
  %99 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %100 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %98, i64 %101
  %103 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %102, align 8
  %104 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %105 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %103, i64 %106
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %95, i32* %110, align 4
  br label %294

111:                                              ; preds = %70
  %112 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %113 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %116 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %116, align 8
  %118 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %119 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %117, i64 %120
  %122 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %121, align 8
  %123 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %124 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %122, i64 %125
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i32 %114, i32* %129, align 4
  %130 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %131 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %134 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %134, align 8
  %136 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %137 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %135, i64 %138
  %140 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %139, align 8
  %141 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %142 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %140, i64 %143
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i32 %132, i32* %147, align 4
  br label %294

148:                                              ; preds = %70
  %149 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %150 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @NX_FC_AES, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %191

154:                                              ; preds = %148
  %155 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %156 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %159 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %159, align 8
  %161 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %162 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %160, i64 %163
  %165 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %164, align 8
  %166 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %167 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %165, i64 %168
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  store i32 %157, i32* %172, align 4
  %173 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %174 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %177 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %177, align 8
  %179 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %180 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %178, i64 %181
  %183 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %182, align 8
  %184 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %185 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %183, i64 %186
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 2
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  store i32 %175, i32* %190, align 4
  br label %247

191:                                              ; preds = %148
  %192 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %193 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @NX_FC_AES_HMAC, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %199 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @NX_FC_SHA, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %240

203:                                              ; preds = %197, %191
  %204 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %205 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %208 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %207, i32 0, i32 1
  %209 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %208, align 8
  %210 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %211 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %209, i64 %212
  %214 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %213, align 8
  %215 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %216 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %214, i64 %217
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 1
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  store i32 %206, i32* %221, align 4
  %222 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %223 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %226 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %225, i32 0, i32 1
  %227 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %226, align 8
  %228 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %229 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %227, i64 %230
  %232 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %231, align 8
  %233 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %234 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %232, i64 %235
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i64 1
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  store i32 %224, i32* %239, align 4
  br label %246

240:                                              ; preds = %197
  %241 = load %struct.device*, %struct.device** %4, align 8
  %242 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %243 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = call i32 (%struct.device*, i8*, i64, ...) @dev_warn(%struct.device* %241, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %244)
  br label %246

246:                                              ; preds = %240, %203
  br label %247

247:                                              ; preds = %246, %154
  br label %294

248:                                              ; preds = %70
  %249 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %250 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %253 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %252, i32 0, i32 1
  %254 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %253, align 8
  %255 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %256 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %254, i64 %257
  %259 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %258, align 8
  %260 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %261 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %259, i64 %262
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i64 2
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 1
  store i32 %251, i32* %266, align 4
  %267 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %268 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %271 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %270, i32 0, i32 1
  %272 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %271, align 8
  %273 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %274 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %272, i64 %275
  %277 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %276, align 8
  %278 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %279 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %277, i64 %280
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i64 2
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  store i32 %269, i32* %284, align 4
  br label %294

285:                                              ; preds = %70
  %286 = load %struct.device*, %struct.device** %4, align 8
  %287 = load %struct.max_sync_cop*, %struct.max_sync_cop** %8, align 8
  %288 = getelementptr inbounds %struct.max_sync_cop, %struct.max_sync_cop* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %291 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 (%struct.device*, i8*, i64, ...) @dev_warn(%struct.device* %286, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %289, i32 %292)
  br label %294

294:                                              ; preds = %285, %248, %247, %111, %74
  br label %295

295:                                              ; preds = %294, %61
  %296 = load i32, i32* %9, align 4
  %297 = zext i32 %296 to i64
  %298 = add i64 %297, 12
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %9, align 4
  %300 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %301 = getelementptr inbounds %struct.msc_triplet, %struct.msc_triplet* %300, i32 1
  store %struct.msc_triplet* %301, %struct.msc_triplet** %7, align 8
  br label %302

302:                                              ; preds = %295
  %303 = load i32, i32* %10, align 4
  %304 = add i32 %303, 1
  store i32 %304, i32* %10, align 4
  br label %34

305:                                              ; preds = %47
  %306 = load %struct.msc_triplet*, %struct.msc_triplet** %7, align 8
  %307 = bitcast %struct.msc_triplet* %306 to %struct.max_sync_cop*
  store %struct.max_sync_cop* %307, %struct.max_sync_cop** %8, align 8
  br label %19

308:                                              ; preds = %19
  %309 = load i32, i32* @NX_OF_FLAG_MAXSYNCCOP_SET, align 4
  %310 = load %struct.nx_of*, %struct.nx_of** %6, align 8
  %311 = getelementptr inbounds %struct.nx_of, %struct.nx_of* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = or i32 %312, %309
  store i32 %313, i32* %311, align 8
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
