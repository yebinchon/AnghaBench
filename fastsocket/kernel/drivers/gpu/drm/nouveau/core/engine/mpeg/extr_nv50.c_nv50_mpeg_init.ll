; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv50.c_nv50_mpeg_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv50.c_nv50_mpeg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_mpeg_priv = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"timeout 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_mpeg_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_mpeg_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = bitcast %struct.nouveau_object* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nv50_mpeg_priv*
  store %struct.nv50_mpeg_priv* %8, %struct.nv50_mpeg_priv** %4, align 8
  %9 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %10 = getelementptr inbounds %struct.nv50_mpeg_priv, %struct.nv50_mpeg_priv* %9, i32 0, i32 0
  %11 = call i32 @nouveau_mpeg_init(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %18 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %17, i32 45868, i32 0)
  %19 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %20 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %19, i32 45844, i32 256)
  %21 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %22 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %21, i32 45280, i32 26)
  %23 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %24 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %23, i32 45600, i32 68)
  %25 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %26 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %25, i32 45824, i32 8396481)
  %27 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %28 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %27, i32 45968, i32 0)
  %29 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %30 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %29, i32 45972, i32 0)
  %31 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %32 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %31, i32 45976, i32 0)
  %33 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %34 = call i32 @nv_mask(%struct.nv50_mpeg_priv* %33, i32 45868, i32 1, i32 1)
  %35 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %36 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %35, i32 45312, i32 -1)
  %37 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %38 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %37, i32 45376, i32 -1)
  %39 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %40 = call i32 @nv_wait(%struct.nv50_mpeg_priv* %39, i32 45568, i32 1, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %16
  %43 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %44 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %4, align 8
  %45 = call i32 @nv_rd32(%struct.nv50_mpeg_priv* %44, i32 45568)
  %46 = call i32 @nv_error(%struct.nv50_mpeg_priv* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %42, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @nouveau_mpeg_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv50_mpeg_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv50_mpeg_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv50_mpeg_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_mpeg_priv*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv50_mpeg_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
