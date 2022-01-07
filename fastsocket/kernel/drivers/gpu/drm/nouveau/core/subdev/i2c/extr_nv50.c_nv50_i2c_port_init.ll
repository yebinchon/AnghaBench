; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv50.c_nv50_i2c_port_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv50.c_nv50_i2c_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_i2c_priv = type { i32 }
%struct.nv50_i2c_port = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_i2c_port_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nv50_i2c_priv*, align 8
  %4 = alloca %struct.nv50_i2c_port*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %5 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.nv50_i2c_priv*
  store %struct.nv50_i2c_priv* %9, %struct.nv50_i2c_priv** %3, align 8
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %11 = bitcast %struct.nouveau_object* %10 to i8*
  %12 = bitcast i8* %11 to %struct.nv50_i2c_port*
  store %struct.nv50_i2c_port* %12, %struct.nv50_i2c_port** %4, align 8
  %13 = load %struct.nv50_i2c_priv*, %struct.nv50_i2c_priv** %3, align 8
  %14 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %4, align 8
  %15 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %4, align 8
  %18 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nv_wr32(%struct.nv50_i2c_priv* %13, i32 %16, i32 %19)
  %21 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %4, align 8
  %22 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %21, i32 0, i32 0
  %23 = call i32 @nouveau_i2c_port_init(i32* %22)
  ret i32 %23
}

declare dso_local i32 @nv_wr32(%struct.nv50_i2c_priv*, i32, i32) #1

declare dso_local i32 @nouveau_i2c_port_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
