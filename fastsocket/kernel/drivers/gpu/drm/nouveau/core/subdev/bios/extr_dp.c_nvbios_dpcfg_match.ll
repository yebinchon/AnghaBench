; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dp.c_nvbios_dpcfg_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dp.c_nvbios_dpcfg_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.nvbios_dpcfg = type { i32 }

@__const.nvbios_dpcfg_match.vsoff = private unnamed_addr constant [4 x i32] [i32 0, i32 4, i32 7, i32 9], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_dpcfg_match(%struct.nouveau_bios* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, %struct.nvbios_dpcfg* %9) #0 {
  %11 = alloca %struct.nouveau_bios*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.nvbios_dpcfg*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca [4 x i32], align 16
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store %struct.nvbios_dpcfg* %9, %struct.nvbios_dpcfg** %20, align 8
  store i32 255, i32* %21, align 4
  %24 = load i32*, i32** %16, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %38

27:                                               ; preds = %10
  %28 = bitcast [4 x i32]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([4 x i32]* @__const.nvbios_dpcfg_match.vsoff to i8*), i64 16, i1 false)
  %29 = load i32, i32* %13, align 4
  %30 = mul nsw i32 %29, 10
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %30, %34
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %21, align 4
  br label %68

38:                                               ; preds = %10
  br label %39

39:                                               ; preds = %64, %38
  %40 = load %struct.nouveau_bios*, %struct.nouveau_bios** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* %21, align 4
  %43 = load i32*, i32** %16, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = load i32*, i32** %19, align 8
  %47 = call i64 @nvbios_dpcfg_entry(%struct.nouveau_bios* %40, i64 %41, i32 %42, i32* %43, i32* %44, i32* %45, i32* %46)
  store i64 %47, i64* %22, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %39
  %50 = load %struct.nouveau_bios*, %struct.nouveau_bios** %11, align 8
  %51 = load i64, i64* %22, align 8
  %52 = add nsw i64 %51, 0
  %53 = call i32 @nv_ro08(%struct.nouveau_bios* %50, i64 %52)
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.nouveau_bios*, %struct.nouveau_bios** %11, align 8
  %58 = load i64, i64* %22, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @nv_ro08(%struct.nouveau_bios* %57, i64 %59)
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %67

64:                                               ; preds = %56, %49
  %65 = load i32, i32* %21, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %21, align 4
  br label %39

67:                                               ; preds = %63, %39
  br label %68

68:                                               ; preds = %67, %27
  %69 = load %struct.nouveau_bios*, %struct.nouveau_bios** %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32*, i32** %16, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = load i32*, i32** %19, align 8
  %76 = load %struct.nvbios_dpcfg*, %struct.nvbios_dpcfg** %20, align 8
  %77 = call i64 @nvbios_dpcfg_parse(%struct.nouveau_bios* %69, i64 %70, i32 %71, i32* %72, i32* %73, i32* %74, i32* %75, %struct.nvbios_dpcfg* %76)
  ret i64 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @nvbios_dpcfg_entry(%struct.nouveau_bios*, i64, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #2

declare dso_local i64 @nvbios_dpcfg_parse(%struct.nouveau_bios*, i64, i32, i32*, i32*, i32*, i32*, %struct.nvbios_dpcfg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
