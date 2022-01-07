; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_piornv50.c_nv50_pior_dp_lnk_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_piornv50.c_nv50_pior_dp_lnk_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_disp = type { i32 }
%struct.dcb_output = type { i32 }
%struct.nouveau_i2c_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_i2c_port*, i32, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_disp*, %struct.dcb_output*, i32, i32, i32, i32)* @nv50_pior_dp_lnk_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_pior_dp_lnk_ctl(%struct.nouveau_disp* %0, %struct.dcb_output* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nouveau_disp*, align 8
  %8 = alloca %struct.dcb_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_i2c_port*, align 8
  %14 = alloca i32, align 4
  store %struct.nouveau_disp* %0, %struct.nouveau_disp** %7, align 8
  store %struct.dcb_output* %1, %struct.dcb_output** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load %struct.nouveau_disp*, %struct.nouveau_disp** %7, align 8
  %18 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %19 = call %struct.nouveau_i2c_port* @nv50_pior_dp_find(%struct.nouveau_disp* %17, %struct.dcb_output* %18)
  store %struct.nouveau_i2c_port* %19, %struct.nouveau_i2c_port** %13, align 8
  %20 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %13, align 8
  %21 = icmp ne %struct.nouveau_i2c_port* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %6
  %23 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %13, align 8
  %24 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.nouveau_i2c_port*, i32, i32, i32)*, i32 (%struct.nouveau_i2c_port*, i32, i32, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.nouveau_i2c_port*, i32, i32, i32)* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %13, align 8
  %31 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.nouveau_i2c_port*, i32, i32, i32)*, i32 (%struct.nouveau_i2c_port*, i32, i32, i32)** %33, align 8
  %35 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %13, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 %34(%struct.nouveau_i2c_port* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %29, %22, %6
  %41 = load i32, i32* %14, align 4
  ret i32 %41
}

declare dso_local %struct.nouveau_i2c_port* @nv50_pior_dp_find(%struct.nouveau_disp*, %struct.dcb_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
