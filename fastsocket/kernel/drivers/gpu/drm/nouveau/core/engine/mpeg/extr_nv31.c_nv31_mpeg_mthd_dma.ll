; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv31.c_nv31_mpeg_mthd_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv31.c_nv31_mpeg_mthd_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nouveau_instmem = type { i32 }
%struct.nv31_mpeg_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, i8*, i32)* @nv31_mpeg_mthd_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv31_mpeg_mthd_dma(%struct.nouveau_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_instmem*, align 8
  %11 = alloca %struct.nv31_mpeg_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %19 = call %struct.nouveau_instmem* @nouveau_instmem(%struct.nouveau_object* %18)
  store %struct.nouveau_instmem* %19, %struct.nouveau_instmem** %10, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %21 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.nv31_mpeg_priv*
  store %struct.nv31_mpeg_priv* %24, %struct.nv31_mpeg_priv** %11, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 0
  %32 = call i32 @nv_ro32(%struct.nouveau_instmem* %29, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 4
  %36 = call i32 @nv_ro32(%struct.nouveau_instmem* %33, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 8
  %40 = call i32 @nv_ro32(%struct.nouveau_instmem* %37, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = and i32 %41, -4096
  %43 = load i32, i32* %13, align 4
  %44 = ashr i32 %43, 20
  %45 = or i32 %42, %44
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %48, 8192
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %4
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %99

54:                                               ; preds = %4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 400
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %11, align 8
  %59 = load i32, i32* %13, align 4
  %60 = and i32 %59, 196608
  %61 = call i32 @nv_mask(%struct.nv31_mpeg_priv* %58, i32 45824, i32 196608, i32 %60)
  %62 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %11, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %62, i32 45876, i32 %63)
  %65 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %11, align 8
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %65, i32 45860, i32 %66)
  br label %98

68:                                               ; preds = %54
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 416
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %11, align 8
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, 196608
  %75 = shl i32 %74, 2
  %76 = call i32 @nv_mask(%struct.nv31_mpeg_priv* %72, i32 45824, i32 786432, i32 %75)
  %77 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %11, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %77, i32 45920, i32 %78)
  %80 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %11, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %80, i32 45924, i32 %81)
  br label %97

83:                                               ; preds = %68
  %84 = load i32, i32* %13, align 4
  %85 = and i32 %84, 786432
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %99

90:                                               ; preds = %83
  %91 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %11, align 8
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %91, i32 45936, i32 %92)
  %94 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %11, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %94, i32 45940, i32 %95)
  br label %97

97:                                               ; preds = %90, %71
  br label %98

98:                                               ; preds = %97, %57
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %87, %51
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.nouveau_instmem* @nouveau_instmem(%struct.nouveau_object*) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_instmem*, i32) #1

declare dso_local i32 @nv_mask(%struct.nv31_mpeg_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv31_mpeg_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
