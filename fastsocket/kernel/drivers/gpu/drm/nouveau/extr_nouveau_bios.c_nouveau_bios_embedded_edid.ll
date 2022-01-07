; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_embedded_edid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_embedded_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@__const.nouveau_bios_embedded_edid.edid_sig = private unnamed_addr constant [8 x i32] [i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0], align 16
@NV_PROM_SIZE = common dso_local global i32 0, align 4
@EDID1_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Found EDID in BIOS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nouveau_bios_embedded_edid(%struct.drm_device* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca [8 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %10)
  store %struct.nouveau_drm* %11, %struct.nouveau_drm** %4, align 8
  %12 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %12, i32 0, i32 0
  store %struct.nvbios* %13, %struct.nvbios** %5, align 8
  %14 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([8 x i32]* @__const.nouveau_bios_embedded_edid.edid_sig to i8*), i64 32, i1 false)
  store i64 0, i64* %7, align 8
  %15 = load i32, i32* @NV_PROM_SIZE, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %17 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %23 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %2, align 8
  br label %74

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  %31 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %32 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %38 = call i64 @findstr(i32* %35, i32 %36, i32* %37, i32 8)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  store i32* null, i32** %2, align 8
  br label %74

42:                                               ; preds = %30
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %47 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* @EDID1_LEN, align 4
  %52 = call i32 @nv_cksum(i32* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %63

55:                                               ; preds = %42
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %27

63:                                               ; preds = %54, %27
  %64 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %65 = call i32 @NV_INFO(%struct.nouveau_drm* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %67 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %72 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32* %70, i32** %73, align 8
  store i32* %70, i32** %2, align 8
  br label %74

74:                                               ; preds = %63, %41, %21
  %75 = load i32*, i32** %2, align 8
  ret i32* %75
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @findstr(i32*, i32, i32*, i32) #1

declare dso_local i32 @nv_cksum(i32*, i32) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
