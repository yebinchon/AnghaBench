; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv94.c_nv94_i2c_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv94.c_nv94_i2c_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.nv50_i2c_priv = type { i32 }
%struct.nv50_i2c_port = type { i32, i64 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv94_i2c_acquire(%struct.nouveau_i2c_port* %0) #0 {
  %2 = alloca %struct.nouveau_i2c_port*, align 8
  %3 = alloca %struct.nv50_i2c_priv*, align 8
  %4 = alloca %struct.nv50_i2c_port*, align 8
  store %struct.nouveau_i2c_port* %0, %struct.nouveau_i2c_port** %2, align 8
  %5 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %2, align 8
  %6 = call %struct.TYPE_2__* @nv_object(%struct.nouveau_i2c_port* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.nv50_i2c_priv*
  store %struct.nv50_i2c_priv* %10, %struct.nv50_i2c_priv** %3, align 8
  %11 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %2, align 8
  %12 = bitcast %struct.nouveau_i2c_port* %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv50_i2c_port*
  store %struct.nv50_i2c_port* %13, %struct.nv50_i2c_port** %4, align 8
  %14 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %4, align 8
  %15 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.nv50_i2c_priv*, %struct.nv50_i2c_priv** %3, align 8
  %20 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %4, align 8
  %21 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 12
  %24 = call i32 @nv_mask(%struct.nv50_i2c_priv* %19, i64 %23, i32 1, i32 0)
  %25 = load %struct.nv50_i2c_priv*, %struct.nv50_i2c_priv** %3, align 8
  %26 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %4, align 8
  %27 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 0
  %30 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %4, align 8
  %31 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @nv_mask(%struct.nv50_i2c_priv* %25, i64 %29, i32 61443, i32 %32)
  br label %34

34:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_object(%struct.nouveau_i2c_port*) #1

declare dso_local i32 @nv_mask(%struct.nv50_i2c_priv*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
