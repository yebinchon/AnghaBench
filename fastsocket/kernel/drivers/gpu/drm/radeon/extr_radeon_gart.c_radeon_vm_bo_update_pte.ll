; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_vm_bo_update_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_vm_bo_update_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_vm = type { i32, i32, i32* }
%struct.radeon_bo = type { i32 }
%struct.ttm_mem_reg = type { i32, i64 }
%struct.radeon_ib = type { i32, i64 }
%struct.radeon_bo_va = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"bo %p not in vm %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"bo %p don't has a mapping in vm %p\0A\00", align 1
@RADEON_VM_PAGE_VALID = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_SYSTEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@TTM_PL_TT = common dso_local global i64 0, align 8
@RADEON_VM_BLOCK_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vm_bo_update_pte(%struct.radeon_device* %0, %struct.radeon_vm* %1, %struct.radeon_bo* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_vm*, align 8
  %8 = alloca %struct.radeon_bo*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_ib, align 8
  %12 = alloca %struct.radeon_bo_va*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %7, align 8
  store %struct.radeon_bo* %2, %struct.radeon_bo** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %25 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %237

29:                                               ; preds = %4
  %30 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %31 = load %struct.radeon_bo*, %struct.radeon_bo** %8, align 8
  %32 = call %struct.radeon_bo_va* @radeon_vm_bo_find(%struct.radeon_vm* %30, %struct.radeon_bo* %31)
  store %struct.radeon_bo_va* %32, %struct.radeon_bo_va** %12, align 8
  %33 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %34 = icmp eq %struct.radeon_bo_va* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.radeon_bo*, %struct.radeon_bo** %8, align 8
  %40 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %41 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.radeon_bo* %39, %struct.radeon_vm* %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %237

44:                                               ; preds = %29
  %45 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %46 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.radeon_bo*, %struct.radeon_bo** %8, align 8
  %54 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %55 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.radeon_bo* %53, %struct.radeon_vm* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %237

58:                                               ; preds = %44
  %59 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %60 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %65 = icmp ne %struct.ttm_mem_reg* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %68 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %73 = icmp eq %struct.ttm_mem_reg* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %63
  store i32 0, i32* %5, align 4
  br label %237

75:                                               ; preds = %71, %66
  %76 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %79 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %85 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %89 = icmp ne %struct.ttm_mem_reg* %88, null
  br i1 %89, label %90, label %131

90:                                               ; preds = %75
  %91 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %92 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PAGE_SHIFT, align 4
  %95 = shl i32 %93, %94
  store i32 %95, i32* %16, align 4
  %96 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %97 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %90
  %102 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %103 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %104 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %108 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %101, %90
  %110 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %111 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TTM_PL_TT, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %117 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %118 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %130

121:                                              ; preds = %109
  %122 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %121, %115
  br label %134

131:                                              ; preds = %75
  store i32 0, i32* %16, align 4
  %132 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %133 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %132, i32 0, i32 0
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %130
  %135 = load %struct.radeon_bo*, %struct.radeon_bo** %8, align 8
  %136 = call i32 @radeon_bo_ngpu_pages(%struct.radeon_bo* %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @RADEON_VM_BLOCK_SIZE, align 4
  %139 = lshr i32 %137, %138
  %140 = add i32 %139, 2
  store i32 %140, i32* %14, align 4
  store i32 64, i32* %15, align 4
  %141 = load i32, i32* @RADEON_VM_BLOCK_SIZE, align 4
  %142 = icmp ugt i32 %141, 11
  br i1 %142, label %143, label %149

143:                                              ; preds = %134
  %144 = load i32, i32* %13, align 4
  %145 = lshr i32 %144, 11
  %146 = mul i32 %145, 4
  %147 = load i32, i32* %15, align 4
  %148 = add i32 %147, %146
  store i32 %148, i32* %15, align 4
  br label %156

149:                                              ; preds = %134
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @RADEON_VM_BLOCK_SIZE, align 4
  %152 = lshr i32 %150, %151
  %153 = mul i32 %152, 4
  %154 = load i32, i32* %15, align 4
  %155 = add i32 %154, %153
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %149, %143
  %157 = load i32, i32* %13, align 4
  %158 = mul i32 %157, 2
  %159 = load i32, i32* %15, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %14, align 4
  %162 = lshr i32 %161, 11
  %163 = mul i32 %162, 4
  %164 = load i32, i32* %15, align 4
  %165 = add i32 %164, %163
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %14, align 4
  %167 = mul i32 %166, 2
  %168 = load i32, i32* %15, align 4
  %169 = add i32 %168, %167
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp ugt i32 %170, 1048575
  br i1 %171, label %172, label %175

172:                                              ; preds = %156
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  br label %237

175:                                              ; preds = %156
  %176 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %15, align 4
  %179 = mul i32 %178, 4
  %180 = call i32 @radeon_ib_get(%struct.radeon_device* %176, i32 %177, %struct.radeon_ib* %11, i32* null, i32 %179)
  store i32 %180, i32* %17, align 4
  %181 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  store i64 0, i64* %181, align 8
  %182 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %183 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %184 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %185 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %188 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @radeon_vm_update_pdes(%struct.radeon_device* %182, %struct.radeon_vm* %183, %struct.radeon_ib* %11, i32 %186, i32 %189)
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %175
  %194 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %195 = call i32 @radeon_ib_free(%struct.radeon_device* %194, %struct.radeon_ib* %11)
  %196 = load i32, i32* %17, align 4
  store i32 %196, i32* %5, align 4
  br label %237

197:                                              ; preds = %175
  %198 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %199 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %200 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %201 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %204 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %16, align 4
  %207 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %12, align 8
  %208 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @radeon_vm_update_ptes(%struct.radeon_device* %198, %struct.radeon_vm* %199, %struct.radeon_ib* %11, i32 %202, i32 %205, i32 %206, i32 %209)
  %211 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %212 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @radeon_ib_sync_to(%struct.radeon_ib* %11, i32 %213)
  %215 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %216 = call i32 @radeon_ib_schedule(%struct.radeon_device* %215, %struct.radeon_ib* %11, i32* null)
  store i32 %216, i32* %17, align 4
  %217 = load i32, i32* %17, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %197
  %220 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %221 = call i32 @radeon_ib_free(%struct.radeon_device* %220, %struct.radeon_ib* %11)
  %222 = load i32, i32* %17, align 4
  store i32 %222, i32* %5, align 4
  br label %237

223:                                              ; preds = %197
  %224 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %225 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %224, i32 0, i32 1
  %226 = call i32 @radeon_fence_unref(i32* %225)
  %227 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @radeon_fence_ref(i32 %228)
  %230 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %231 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %233 = call i32 @radeon_ib_free(%struct.radeon_device* %232, %struct.radeon_ib* %11)
  %234 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %235 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %234, i32 0, i32 0
  %236 = call i32 @radeon_fence_unref(i32* %235)
  store i32 0, i32* %5, align 4
  br label %237

237:                                              ; preds = %223, %219, %193, %172, %74, %49, %35, %28
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local %struct.radeon_bo_va* @radeon_vm_bo_find(%struct.radeon_vm*, %struct.radeon_bo*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.radeon_bo*, %struct.radeon_vm*) #1

declare dso_local i32 @radeon_bo_ngpu_pages(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @radeon_vm_update_pdes(%struct.radeon_device*, %struct.radeon_vm*, %struct.radeon_ib*, i32, i32) #1

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_vm_update_ptes(%struct.radeon_device*, %struct.radeon_vm*, %struct.radeon_ib*, i32, i32, i32, i32) #1

declare dso_local i32 @radeon_ib_sync_to(%struct.radeon_ib*, i32) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*) #1

declare dso_local i32 @radeon_fence_unref(i32*) #1

declare dso_local i32 @radeon_fence_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
