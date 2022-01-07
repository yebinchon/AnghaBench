; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv50.c_nv50_i2c_drive_scl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv50.c_nv50_i2c_drive_scl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.nv50_i2c_priv = type { i32 }
%struct.nv50_i2c_port = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_i2c_drive_scl(%struct.nouveau_i2c_port* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_i2c_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_i2c_priv*, align 8
  %6 = alloca %struct.nv50_i2c_port*, align 8
  store %struct.nouveau_i2c_port* %0, %struct.nouveau_i2c_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %3, align 8
  %8 = call %struct.TYPE_2__* @nv_object(%struct.nouveau_i2c_port* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nv50_i2c_priv*
  store %struct.nv50_i2c_priv* %12, %struct.nv50_i2c_priv** %5, align 8
  %13 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %3, align 8
  %14 = bitcast %struct.nouveau_i2c_port* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv50_i2c_port*
  store %struct.nv50_i2c_port* %15, %struct.nv50_i2c_port** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %6, align 8
  %20 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %6, align 8
  %25 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 254
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.nv50_i2c_priv*, %struct.nv50_i2c_priv** %5, align 8
  %30 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %6, align 8
  %31 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %6, align 8
  %34 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nv_wr32(%struct.nv50_i2c_priv* %29, i32 %32, i32 %35)
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_object(%struct.nouveau_i2c_port*) #1

declare dso_local i32 @nv_wr32(%struct.nv50_i2c_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
