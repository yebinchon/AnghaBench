; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_rdauxr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_rdauxr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32 }
%struct.nouveau_i2c_port = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*, i32)* @init_rdauxr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rdauxr(%struct.nvbios_init* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvbios_init*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_i2c_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %10 = call %struct.nouveau_i2c_port* @init_i2c(%struct.nvbios_init* %9, i32 -2)
  store %struct.nouveau_i2c_port* %10, %struct.nouveau_i2c_port** %6, align 8
  %11 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %12 = icmp ne %struct.nouveau_i2c_port* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %15 = call i64 @init_exec(%struct.nvbios_init* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @nv_rdaux(%struct.nouveau_i2c_port* %18, i32 %19, i32* %7, i32 1)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %13, %2
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %25, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.nouveau_i2c_port* @init_i2c(%struct.nvbios_init*, i32) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local i32 @nv_rdaux(%struct.nouveau_i2c_port*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
