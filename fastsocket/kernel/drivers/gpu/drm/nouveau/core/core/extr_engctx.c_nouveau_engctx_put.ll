; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_engctx.c_nouveau_engctx_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_engctx.c_nouveau_engctx_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nouveau_engctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_engctx_put(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nouveau_engine*, align 8
  %4 = alloca %struct.nouveau_engctx*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %5 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %6 = icmp ne %struct.nouveau_object* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nouveau_engine* @nv_engine(i32 %10)
  store %struct.nouveau_engine* %11, %struct.nouveau_engine** %3, align 8
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %13 = call %struct.nouveau_engctx* @nv_engctx(%struct.nouveau_object* %12)
  store %struct.nouveau_engctx* %13, %struct.nouveau_engctx** %4, align 8
  %14 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %14, i32 0, i32 0
  %16 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_engctx, %struct.nouveau_engctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @spin_unlock_irqrestore(i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %7, %1
  ret void
}

declare dso_local %struct.nouveau_engine* @nv_engine(i32) #1

declare dso_local %struct.nouveau_engctx* @nv_engctx(%struct.nouveau_object*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
