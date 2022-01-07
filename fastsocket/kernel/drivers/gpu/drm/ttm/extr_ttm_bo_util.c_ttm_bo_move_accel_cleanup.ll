; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_move_accel_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_move_accel_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32*, i32, i32*, %struct.ttm_mem_reg, %struct.ttm_bo_device* }
%struct.ttm_mem_reg = type { i64, i32* }
%struct.ttm_bo_device = type { i32, %struct.ttm_mem_type_manager*, %struct.ttm_bo_driver* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_bo_driver = type { i32 (i8**)*, i32* (i8*)* }

@TTM_MEMTYPE_FLAG_FIXED = common dso_local global i32 0, align 4
@TTM_BO_PRIV_FLAG_MOVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_move_accel_cleanup(%struct.ttm_buffer_object* %0, i8* %1, i32 %2, i32 %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.ttm_bo_device*, align 8
  %13 = alloca %struct.ttm_bo_driver*, align 8
  %14 = alloca %struct.ttm_mem_type_manager*, align 8
  %15 = alloca %struct.ttm_mem_reg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ttm_buffer_object*, align 8
  %18 = alloca i8*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 4
  %21 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %20, align 8
  store %struct.ttm_bo_device* %21, %struct.ttm_bo_device** %12, align 8
  %22 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %23 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %22, i32 0, i32 2
  %24 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %23, align 8
  store %struct.ttm_bo_driver* %24, %struct.ttm_bo_driver** %13, align 8
  %25 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %26 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %25, i32 0, i32 1
  %27 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %26, align 8
  %28 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %27, i64 %30
  store %struct.ttm_mem_type_manager* %31, %struct.ttm_mem_type_manager** %14, align 8
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %33 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %32, i32 0, i32 3
  store %struct.ttm_mem_reg* %33, %struct.ttm_mem_reg** %15, align 8
  store i8* null, i8** %18, align 8
  %34 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %35 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %38 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %5
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %43 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %18, align 8
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %5
  %49 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %13, align 8
  %50 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %49, i32 0, i32 1
  %51 = load i32* (i8*)*, i32* (i8*)** %50, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32* %51(i8* %52)
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %55 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %48
  %59 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %60 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %59, i32 0, i32 0, i32 0)
  store i32 %60, i32* %16, align 4
  %61 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %62 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i8*, i8** %18, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %13, align 8
  %68 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %67, i32 0, i32 0
  %69 = load i32 (i8**)*, i32 (i8**)** %68, align 8
  %70 = call i32 %69(i8** %18)
  br label %71

71:                                               ; preds = %66, %58
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %6, align 4
  br label %148

76:                                               ; preds = %71
  %77 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %14, align 8
  %78 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %85 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %90 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @ttm_tt_unbind(i32* %91)
  %93 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %94 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @ttm_tt_destroy(i32* %95)
  %97 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %98 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %88, %83, %76
  %100 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %101 = call i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object* %100)
  br label %141

102:                                              ; preds = %48
  %103 = load i32, i32* @TTM_BO_PRIV_FLAG_MOVING, align 4
  %104 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %105 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %104, i32 0, i32 1
  %106 = call i32 @set_bit(i32 %103, i32* %105)
  %107 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  %108 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load i8*, i8** %18, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %102
  %113 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %13, align 8
  %114 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %113, i32 0, i32 0
  %115 = load i32 (i8**)*, i32 (i8**)** %114, align 8
  %116 = call i32 %115(i8** %18)
  br label %117

117:                                              ; preds = %112, %102
  %118 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %119 = call i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object* %118, %struct.ttm_buffer_object** %17)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %6, align 4
  br label %148

124:                                              ; preds = %117
  %125 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %14, align 8
  %126 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %17, align 8
  %133 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %132, i32 0, i32 0
  store i32* null, i32** %133, align 8
  br label %137

134:                                              ; preds = %124
  %135 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %136 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %135, i32 0, i32 0
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %134, %131
  %138 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %17, align 8
  %139 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %138)
  %140 = call i32 @ttm_bo_unref(%struct.ttm_buffer_object** %17)
  br label %141

141:                                              ; preds = %137, %99
  %142 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %15, align 8
  %143 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %144 = bitcast %struct.ttm_mem_reg* %142 to i8*
  %145 = bitcast %struct.ttm_mem_reg* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 16, i1 false)
  %146 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %147 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %146, i32 0, i32 1
  store i32* null, i32** %147, align 8
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %141, %122, %74
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ttm_tt_unbind(i32*) #1

declare dso_local i32 @ttm_tt_destroy(i32*) #1

declare dso_local i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object*, %struct.ttm_buffer_object**) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_unref(%struct.ttm_buffer_object**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
