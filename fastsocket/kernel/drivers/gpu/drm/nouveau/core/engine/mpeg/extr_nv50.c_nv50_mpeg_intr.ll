; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv50.c_nv50_mpeg_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv50.c_nv50_mpeg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv50_mpeg_priv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_mpeg_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nv50_mpeg_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %9 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %10 = bitcast %struct.nouveau_subdev* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nv50_mpeg_priv*
  store %struct.nv50_mpeg_priv* %11, %struct.nv50_mpeg_priv** %3, align 8
  %12 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %13 = call i32 @nv_rd32(%struct.nv50_mpeg_priv* %12, i32 45312)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %15 = call i32 @nv_rd32(%struct.nv50_mpeg_priv* %14, i32 45616)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %17 = call i32 @nv_rd32(%struct.nv50_mpeg_priv* %16, i32 45620)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %19 = call i32 @nv_rd32(%struct.nv50_mpeg_priv* %18, i32 45624)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 16777216
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %32 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %31, i32 45832, i32 256)
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, -16777217
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %27, %24
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @nv_info(%struct.nv50_mpeg_priv* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %36
  %47 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %47, i32 45312, i32 %48)
  %50 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %51 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %50, i32 45616, i32 1)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv50_mpeg_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_mpeg_priv*, i32, i32) #1

declare dso_local i32 @nv_info(%struct.nv50_mpeg_priv*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
