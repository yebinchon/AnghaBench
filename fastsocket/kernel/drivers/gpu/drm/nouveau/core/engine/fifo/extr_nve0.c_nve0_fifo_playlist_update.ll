; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_playlist_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_playlist_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nve0_fifo_priv = type { %struct.TYPE_3__, %struct.nve0_fifo_engn* }
%struct.TYPE_3__ = type { i32 }
%struct.nve0_fifo_engn = type { i64, %struct.nouveau_gpuobj** }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"playlist alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"playlist %d update timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nve0_fifo_priv*, i64)* @nve0_fifo_playlist_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_fifo_playlist_update(%struct.nve0_fifo_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.nve0_fifo_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nouveau_bar*, align 8
  %6 = alloca %struct.nve0_fifo_engn*, align 8
  %7 = alloca %struct.nouveau_gpuobj*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nve0_fifo_priv* %0, %struct.nve0_fifo_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %14 = call %struct.nouveau_bar* @nouveau_bar(%struct.nve0_fifo_priv* %13)
  store %struct.nouveau_bar* %14, %struct.nouveau_bar** %5, align 8
  %15 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %16 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %15, i32 0, i32 1
  %17 = load %struct.nve0_fifo_engn*, %struct.nve0_fifo_engn** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.nve0_fifo_engn, %struct.nve0_fifo_engn* %17, i64 %18
  store %struct.nve0_fifo_engn* %19, %struct.nve0_fifo_engn** %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = shl i64 %20, 16
  %22 = or i64 %21, 1
  store i64 %22, i64* %8, align 8
  %23 = load %struct.nve0_fifo_engn*, %struct.nve0_fifo_engn** %6, align 8
  %24 = getelementptr inbounds %struct.nve0_fifo_engn, %struct.nve0_fifo_engn* %23, i32 0, i32 1
  %25 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %24, align 8
  %26 = load %struct.nve0_fifo_engn*, %struct.nve0_fifo_engn** %6, align 8
  %27 = getelementptr inbounds %struct.nve0_fifo_engn, %struct.nve0_fifo_engn* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %25, i64 %28
  %30 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %29, align 8
  store %struct.nouveau_gpuobj* %30, %struct.nouveau_gpuobj** %7, align 8
  %31 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %32 = icmp eq %struct.nouveau_gpuobj* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %2
  %37 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %38 = call %struct.TYPE_4__* @nv_object(%struct.nve0_fifo_priv* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nouveau_gpuobj_new(i32 %40, i32* null, i32 32768, i32 4096, i32 0, %struct.nouveau_gpuobj** %7)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %46 = call i32 (%struct.nve0_fifo_priv*, i8*, ...) @nv_error(%struct.nve0_fifo_priv* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %132

47:                                               ; preds = %36
  %48 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %49 = load %struct.nve0_fifo_engn*, %struct.nve0_fifo_engn** %6, align 8
  %50 = getelementptr inbounds %struct.nve0_fifo_engn, %struct.nve0_fifo_engn* %49, i32 0, i32 1
  %51 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %50, align 8
  %52 = load %struct.nve0_fifo_engn*, %struct.nve0_fifo_engn** %6, align 8
  %53 = getelementptr inbounds %struct.nve0_fifo_engn, %struct.nve0_fifo_engn* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %51, i64 %54
  store %struct.nouveau_gpuobj* %48, %struct.nouveau_gpuobj** %55, align 8
  br label %56

56:                                               ; preds = %47, %2
  %57 = load %struct.nve0_fifo_engn*, %struct.nve0_fifo_engn** %6, align 8
  %58 = getelementptr inbounds %struct.nve0_fifo_engn, %struct.nve0_fifo_engn* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = load %struct.nve0_fifo_engn*, %struct.nve0_fifo_engn** %6, align 8
  %65 = getelementptr inbounds %struct.nve0_fifo_engn, %struct.nve0_fifo_engn* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %97, %56
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %69 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %66
  %74 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %75, 8
  %77 = add nsw i32 8388612, %76
  %78 = call i32 @nv_rd32(%struct.nve0_fifo_priv* %74, i32 %77)
  %79 = and i32 %78, 2031617
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %97

85:                                               ; preds = %73
  %86 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 0
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %86, i32 %88, i32 %89)
  %91 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 4
  %94 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %91, i32 %93, i32 0)
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 8
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %85, %84
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %66

100:                                              ; preds = %66
  %101 = load %struct.nouveau_bar*, %struct.nouveau_bar** %5, align 8
  %102 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %101, i32 0, i32 0
  %103 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %102, align 8
  %104 = load %struct.nouveau_bar*, %struct.nouveau_bar** %5, align 8
  %105 = call i32 %103(%struct.nouveau_bar* %104)
  %106 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %107 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %7, align 8
  %108 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 12
  %111 = sext i32 %110 to i64
  %112 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %106, i32 8816, i64 %111)
  %113 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %114 = load i64, i64* %4, align 8
  %115 = shl i64 %114, 20
  %116 = load i32, i32* %10, align 4
  %117 = ashr i32 %116, 3
  %118 = sext i32 %117 to i64
  %119 = or i64 %115, %118
  %120 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %113, i32 8820, i64 %119)
  %121 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %122 = load i64, i64* %4, align 8
  %123 = mul i64 %122, 4
  %124 = add i64 8836, %123
  %125 = trunc i64 %124 to i32
  %126 = call i32 @nv_wait(%struct.nve0_fifo_priv* %121, i32 %125, i32 1048576, i32 0)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %100
  %129 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %3, align 8
  %130 = load i64, i64* %4, align 8
  %131 = call i32 (%struct.nve0_fifo_priv*, i8*, ...) @nv_error(%struct.nve0_fifo_priv* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %44, %128, %100
  ret void
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nve0_fifo_priv*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nouveau_gpuobj_new(i32, i32*, i32, i32, i32, %struct.nouveau_gpuobj**) #1

declare dso_local %struct.TYPE_4__* @nv_object(%struct.nve0_fifo_priv*) #1

declare dso_local i32 @nv_error(%struct.nve0_fifo_priv*, i8*, ...) #1

declare dso_local i32 @nv_rd32(%struct.nve0_fifo_priv*, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nve0_fifo_priv*, i32, i64) #1

declare dso_local i32 @nv_wait(%struct.nve0_fifo_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
