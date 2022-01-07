; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv50.c_nv50_vpe_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv50.c_nv50_vpe_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv50_mpeg_priv = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"PMSRCH: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv50_vpe_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_vpe_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nv50_mpeg_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %5 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %6 = bitcast %struct.nouveau_subdev* %5 to i8*
  %7 = bitcast i8* %6 to %struct.nv50_mpeg_priv*
  store %struct.nv50_mpeg_priv* %7, %struct.nv50_mpeg_priv** %3, align 8
  %8 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %9 = call i64 @nv_rd32(%struct.nv50_mpeg_priv* %8, i32 45312)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %13 = call i32 @nv50_mpeg_intr(%struct.nouveau_subdev* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %16 = call i64 @nv_rd32(%struct.nv50_mpeg_priv* %15, i32 47104)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %20 = call i64 @nv_rd32(%struct.nv50_mpeg_priv* %19, i32 47104)
  store i64 %20, i64* %4, align 8
  %21 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @nv_info(%struct.nv50_mpeg_priv* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.nv50_mpeg_priv*, %struct.nv50_mpeg_priv** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @nv_wr32(%struct.nv50_mpeg_priv* %24, i32 47104, i64 %25)
  br label %27

27:                                               ; preds = %18, %14
  ret void
}

declare dso_local i64 @nv_rd32(%struct.nv50_mpeg_priv*, i32) #1

declare dso_local i32 @nv50_mpeg_intr(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_info(%struct.nv50_mpeg_priv*, i8*, i64) #1

declare dso_local i32 @nv_wr32(%struct.nv50_mpeg_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
