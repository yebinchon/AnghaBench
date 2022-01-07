; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_aux.c_nv_rdaux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_aux.c_nv_rdaux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)*, i32 (%struct.nouveau_i2c_port*)* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv_rdaux(%struct.nouveau_i2c_port* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_i2c_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.nouveau_i2c_port* %0, %struct.nouveau_i2c_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %11 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)*, i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %4
  %17 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %18 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.nouveau_i2c_port*)*, i32 (%struct.nouveau_i2c_port*)** %20, align 8
  %22 = icmp ne i32 (%struct.nouveau_i2c_port*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %25 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.nouveau_i2c_port*)*, i32 (%struct.nouveau_i2c_port*)** %27, align 8
  %29 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %30 = call i32 %28(%struct.nouveau_i2c_port* %29)
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %33 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)*, i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)** %35, align 8
  %37 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 %36(%struct.nouveau_i2c_port* %37, i32 9, i32 %38, i32* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %31
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
