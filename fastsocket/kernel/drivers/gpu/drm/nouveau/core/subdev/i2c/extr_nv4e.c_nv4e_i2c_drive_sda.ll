; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv4e.c_nv4e_i2c_drive_sda.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv4e.c_nv4e_i2c_drive_sda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.nv4e_i2c_priv = type { i32 }
%struct.nv4e_i2c_port = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_i2c_port*, i32)* @nv4e_i2c_drive_sda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv4e_i2c_drive_sda(%struct.nouveau_i2c_port* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_i2c_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv4e_i2c_priv*, align 8
  %6 = alloca %struct.nv4e_i2c_port*, align 8
  store %struct.nouveau_i2c_port* %0, %struct.nouveau_i2c_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %3, align 8
  %8 = call %struct.TYPE_2__* @nv_object(%struct.nouveau_i2c_port* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nv4e_i2c_priv*
  store %struct.nv4e_i2c_priv* %12, %struct.nv4e_i2c_priv** %5, align 8
  %13 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %3, align 8
  %14 = bitcast %struct.nouveau_i2c_port* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv4e_i2c_port*
  store %struct.nv4e_i2c_port* %15, %struct.nv4e_i2c_port** %6, align 8
  %16 = load %struct.nv4e_i2c_priv*, %struct.nv4e_i2c_priv** %5, align 8
  %17 = load %struct.nv4e_i2c_port*, %struct.nv4e_i2c_port** %6, align 8
  %18 = getelementptr inbounds %struct.nv4e_i2c_port, %struct.nv4e_i2c_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 17, i32 1
  %24 = call i32 @nv_mask(%struct.nv4e_i2c_priv* %16, i32 %19, i32 31, i32 %23)
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_object(%struct.nouveau_i2c_port*) #1

declare dso_local i32 @nv_mask(%struct.nv4e_i2c_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
