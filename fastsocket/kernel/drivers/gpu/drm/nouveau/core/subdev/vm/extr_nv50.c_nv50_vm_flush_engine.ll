; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv50.c_nv50_vm_flush_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv50.c_nv50_vm_flush_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv50_vmmgr_priv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"vm flush timeout: engine %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_vm_flush_engine(%struct.nouveau_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_vmmgr_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %3, align 8
  %8 = call i64 @nouveau_vmmgr(%struct.nouveau_subdev* %7)
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.nv50_vmmgr_priv*
  store %struct.nv50_vmmgr_priv* %10, %struct.nv50_vmmgr_priv** %5, align 8
  %11 = load %struct.nv50_vmmgr_priv*, %struct.nv50_vmmgr_priv** %5, align 8
  %12 = getelementptr inbounds %struct.nv50_vmmgr_priv, %struct.nv50_vmmgr_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 16
  %18 = or i32 %17, 1
  %19 = call i32 @nv_wr32(%struct.nouveau_subdev* %15, i32 1051776, i32 %18)
  %20 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %3, align 8
  %21 = call i32 @nv_wait(%struct.nouveau_subdev* %20, i32 1051776, i32 1, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @nv_error(%struct.nouveau_subdev* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.nv50_vmmgr_priv*, %struct.nv50_vmmgr_priv** %5, align 8
  %29 = getelementptr inbounds %struct.nv50_vmmgr_priv, %struct.nv50_vmmgr_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local i64 @nouveau_vmmgr(%struct.nouveau_subdev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_subdev*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_subdev*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_subdev*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
