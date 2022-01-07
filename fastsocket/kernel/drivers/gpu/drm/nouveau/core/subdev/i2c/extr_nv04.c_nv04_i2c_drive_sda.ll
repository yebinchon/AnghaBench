; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv04.c_nv04_i2c_drive_sda.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv04.c_nv04_i2c_drive_sda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.nv04_i2c_priv = type { i32 }
%struct.nv04_i2c_port = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_i2c_port*, i32)* @nv04_i2c_drive_sda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_i2c_drive_sda(%struct.nouveau_i2c_port* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_i2c_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv04_i2c_priv*, align 8
  %6 = alloca %struct.nv04_i2c_port*, align 8
  %7 = alloca i32, align 4
  store %struct.nouveau_i2c_port* %0, %struct.nouveau_i2c_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %3, align 8
  %9 = call %struct.TYPE_2__* @nv_object(%struct.nouveau_i2c_port* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv04_i2c_priv*
  store %struct.nv04_i2c_priv* %13, %struct.nv04_i2c_priv** %5, align 8
  %14 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %3, align 8
  %15 = bitcast %struct.nouveau_i2c_port* %14 to i8*
  %16 = bitcast i8* %15 to %struct.nv04_i2c_port*
  store %struct.nv04_i2c_port* %16, %struct.nv04_i2c_port** %6, align 8
  %17 = load %struct.nv04_i2c_priv*, %struct.nv04_i2c_priv** %5, align 8
  %18 = load %struct.nv04_i2c_port*, %struct.nv04_i2c_port** %6, align 8
  %19 = getelementptr inbounds %struct.nv04_i2c_port, %struct.nv04_i2c_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nv_rdvgac(%struct.nv04_i2c_priv* %17, i32 0, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, 16
  store i32 %26, i32* %7, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 239
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.nv04_i2c_priv*, %struct.nv04_i2c_priv** %5, align 8
  %32 = load %struct.nv04_i2c_port*, %struct.nv04_i2c_port** %6, align 8
  %33 = getelementptr inbounds %struct.nv04_i2c_port, %struct.nv04_i2c_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, 1
  %37 = call i32 @nv_wrvgac(%struct.nv04_i2c_priv* %31, i32 0, i32 %34, i32 %36)
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_object(%struct.nouveau_i2c_port*) #1

declare dso_local i32 @nv_rdvgac(%struct.nv04_i2c_priv*, i32, i32) #1

declare dso_local i32 @nv_wrvgac(%struct.nv04_i2c_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
