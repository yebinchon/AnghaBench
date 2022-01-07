; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/software/extr_nv50.c_nv50_software_mthd_dma_vblsem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/software/extr_nv50.c_nv50_software_mthd_dma_vblsem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_software_chan = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nouveau_fifo_chan = type { i32 }
%struct.nouveau_handle = type { i32 }
%struct.nouveau_gpuobj = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NV_GPUOBJ_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, i8*, i32)* @nv50_software_mthd_dma_vblsem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_software_mthd_dma_vblsem(%struct.nouveau_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv50_software_chan*, align 8
  %11 = alloca %struct.nouveau_fifo_chan*, align 8
  %12 = alloca %struct.nouveau_handle*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nouveau_gpuobj*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %16 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @nv_engctx(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.nv50_software_chan*
  store %struct.nv50_software_chan* %20, %struct.nv50_software_chan** %10, align 8
  %21 = load %struct.nv50_software_chan*, %struct.nv50_software_chan** %10, align 8
  %22 = call %struct.TYPE_8__* @nv_object(%struct.nv50_software_chan* %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.nouveau_fifo_chan*
  store %struct.nouveau_fifo_chan* %26, %struct.nouveau_fifo_chan** %11, align 8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %13, align 4
  %29 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %11, align 8
  %30 = call i32 @nv_namedb(%struct.nouveau_fifo_chan* %29)
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.nouveau_handle* @nouveau_namedb_get(i32 %30, i32 %33)
  store %struct.nouveau_handle* %34, %struct.nouveau_handle** %12, align 8
  %35 = load %struct.nouveau_handle*, %struct.nouveau_handle** %12, align 8
  %36 = icmp ne %struct.nouveau_handle* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %66

40:                                               ; preds = %4
  %41 = load %struct.nouveau_handle*, %struct.nouveau_handle** %12, align 8
  %42 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NV_GPUOBJ_CLASS, align 4
  %45 = call i64 @nv_iclass(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.nouveau_handle*, %struct.nouveau_handle** %12, align 8
  %49 = getelementptr inbounds %struct.nouveau_handle, %struct.nouveau_handle* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.nouveau_gpuobj* @nv_gpuobj(i32 %50)
  store %struct.nouveau_gpuobj* %51, %struct.nouveau_gpuobj** %14, align 8
  %52 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %14, align 8
  %53 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 4
  %58 = load %struct.nv50_software_chan*, %struct.nv50_software_chan** %10, align 8
  %59 = getelementptr inbounds %struct.nv50_software_chan, %struct.nv50_software_chan* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %47, %40
  %63 = load %struct.nouveau_handle*, %struct.nouveau_handle** %12, align 8
  %64 = call i32 @nouveau_namedb_put(%struct.nouveau_handle* %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %37
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @nv_engctx(i32) #1

declare dso_local %struct.TYPE_8__* @nv_object(%struct.nv50_software_chan*) #1

declare dso_local %struct.nouveau_handle* @nouveau_namedb_get(i32, i32) #1

declare dso_local i32 @nv_namedb(%struct.nouveau_fifo_chan*) #1

declare dso_local i64 @nv_iclass(i32, i32) #1

declare dso_local %struct.nouveau_gpuobj* @nv_gpuobj(i32) #1

declare dso_local i32 @nouveau_namedb_put(%struct.nouveau_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
