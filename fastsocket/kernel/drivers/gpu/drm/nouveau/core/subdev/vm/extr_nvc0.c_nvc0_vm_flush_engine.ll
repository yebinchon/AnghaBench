; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nvc0.c_nvc0_vm_flush_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nvc0.c_nvc0_vm_flush_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nvc0_vmmgr_priv = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"vm timeout 0: 0x%08x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"vm timeout 1: 0x%08x %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvc0_vm_flush_engine(%struct.nouveau_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvc0_vmmgr_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %4, align 8
  %10 = call i64 @nouveau_vmmgr(%struct.nouveau_subdev* %9)
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nvc0_vmmgr_priv*
  store %struct.nvc0_vmmgr_priv* %12, %struct.nvc0_vmmgr_priv** %7, align 8
  %13 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %7, align 8
  %14 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %4, align 8
  %18 = call i32 @nv_wait_ne(%struct.nouveau_subdev* %17, i32 1051776, i32 16711680, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %4, align 8
  %22 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %4, align 8
  %23 = call i32 @nv_rd32(%struct.nouveau_subdev* %22, i32 1051776)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @nv_error(%struct.nouveau_subdev* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %3
  %27 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 8
  %30 = call i32 @nv_wr32(%struct.nouveau_subdev* %27, i32 1051832, i32 %29)
  %31 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = or i32 -2147483648, %32
  %34 = call i32 @nv_wr32(%struct.nouveau_subdev* %31, i32 1051836, i32 %33)
  %35 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %4, align 8
  %36 = call i32 @nv_wait(%struct.nouveau_subdev* %35, i32 1051776, i32 32768, i32 32768)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %26
  %39 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %4, align 8
  %40 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %4, align 8
  %41 = call i32 @nv_rd32(%struct.nouveau_subdev* %40, i32 1051776)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @nv_error(%struct.nouveau_subdev* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %26
  %45 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %7, align 8
  %46 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local i64 @nouveau_vmmgr(%struct.nouveau_subdev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv_wait_ne(%struct.nouveau_subdev*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_subdev*, i8*, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_subdev*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_subdev*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_subdev*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
