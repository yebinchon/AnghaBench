; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_mem_reg, i32, i32 }
%struct.ttm_mem_reg = type { i64, i32* }
%struct.nouveau_drm = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_bo = type { %struct.nouveau_drm_tile* }
%struct.nouveau_drm_tile = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*)* @nouveau_bo_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bo_move(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.nouveau_drm*, align 8
  %13 = alloca %struct.nouveau_bo*, align 8
  %14 = alloca %struct.ttm_mem_reg*, align 8
  %15 = alloca %struct.nouveau_drm_tile*, align 8
  %16 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.nouveau_drm* @nouveau_bdev(i32 %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %12, align 8
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %22 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %21)
  store %struct.nouveau_bo* %22, %struct.nouveau_bo** %13, align 8
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %24 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %23, i32 0, i32 0
  store %struct.ttm_mem_reg* %24, %struct.ttm_mem_reg** %14, align 8
  store %struct.nouveau_drm_tile* null, %struct.nouveau_drm_tile** %15, align 8
  store i32 0, i32* %16, align 4
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_4__* @nv_device(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NV_50, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %5
  %34 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %35 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %36 = call i32 @nouveau_bo_vm_bind(%struct.ttm_buffer_object* %34, %struct.ttm_mem_reg* %35, %struct.nouveau_drm_tile** %15)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %6, align 4
  br label %148

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %5
  %43 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %14, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %55 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %62 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %61, i32 0, i32 0
  %63 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %64 = bitcast %struct.ttm_mem_reg* %62 to i8*
  %65 = bitcast %struct.ttm_mem_reg* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 16, i1 false)
  %66 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %67 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  br label %124

68:                                               ; preds = %48, %42
  %69 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %70 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %79 = call i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object* %75, i32 %76, i32 %77, %struct.ttm_mem_reg* %78)
  store i32 %79, i32* %16, align 4
  br label %124

80:                                               ; preds = %68
  %81 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %82 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %92 = call i32 @nouveau_bo_move_flipd(%struct.ttm_buffer_object* %87, i32 %88, i32 %89, i32 %90, %struct.ttm_mem_reg* %91)
  store i32 %92, i32* %16, align 4
  br label %114

93:                                               ; preds = %80
  %94 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %14, align 8
  %95 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %105 = call i32 @nouveau_bo_move_flips(%struct.ttm_buffer_object* %100, i32 %101, i32 %102, i32 %103, %struct.ttm_mem_reg* %104)
  store i32 %105, i32* %16, align 4
  br label %113

106:                                              ; preds = %93
  %107 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %112 = call i32 @nouveau_bo_move_m2mf(%struct.ttm_buffer_object* %107, i32 %108, i32 %109, i32 %110, %struct.ttm_mem_reg* %111)
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %106, %99
  br label %114

114:                                              ; preds = %113, %86
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  br label %124

118:                                              ; preds = %114
  %119 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %123 = call i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object* %119, i32 %120, i32 %121, %struct.ttm_mem_reg* %122)
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %118, %117, %74, %53
  %125 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %126 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.TYPE_4__* @nv_device(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NV_50, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %124
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %138 = call i32 @nouveau_bo_vm_cleanup(%struct.ttm_buffer_object* %137, %struct.nouveau_drm_tile* null, %struct.nouveau_drm_tile** %15)
  br label %145

139:                                              ; preds = %133
  %140 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %141 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %15, align 8
  %142 = load %struct.nouveau_bo*, %struct.nouveau_bo** %13, align 8
  %143 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %142, i32 0, i32 0
  %144 = call i32 @nouveau_bo_vm_cleanup(%struct.ttm_buffer_object* %140, %struct.nouveau_drm_tile* %141, %struct.nouveau_drm_tile** %143)
  br label %145

145:                                              ; preds = %139, %136
  br label %146

146:                                              ; preds = %145, %124
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %146, %39
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.TYPE_4__* @nv_device(i32) #1

declare dso_local i32 @nouveau_bo_vm_bind(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.nouveau_drm_tile**) #1

declare dso_local i32 @BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @nouveau_bo_move_flipd(%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @nouveau_bo_move_flips(%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @nouveau_bo_move_m2mf(%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @nouveau_bo_vm_cleanup(%struct.ttm_buffer_object*, %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
