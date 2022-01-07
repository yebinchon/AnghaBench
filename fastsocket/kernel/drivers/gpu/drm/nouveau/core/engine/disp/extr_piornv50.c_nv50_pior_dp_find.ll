; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_piornv50.c_nv50_pior_dp_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_piornv50.c_nv50_pior_dp_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.nouveau_disp = type { i32 }
%struct.dcb_output = type { i32 }
%struct.nouveau_i2c = type { %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nouveau_i2c_port* (%struct.nouveau_disp*, %struct.dcb_output*)* @nv50_pior_dp_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nouveau_i2c_port* @nv50_pior_dp_find(%struct.nouveau_disp* %0, %struct.dcb_output* %1) #0 {
  %3 = alloca %struct.nouveau_disp*, align 8
  %4 = alloca %struct.dcb_output*, align 8
  %5 = alloca %struct.nouveau_i2c*, align 8
  store %struct.nouveau_disp* %0, %struct.nouveau_disp** %3, align 8
  store %struct.dcb_output* %1, %struct.dcb_output** %4, align 8
  %6 = load %struct.nouveau_disp*, %struct.nouveau_disp** %3, align 8
  %7 = call %struct.nouveau_i2c* @nouveau_i2c(%struct.nouveau_disp* %6)
  store %struct.nouveau_i2c* %7, %struct.nouveau_i2c** %5, align 8
  %8 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %5, align 8
  %9 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %8, i32 0, i32 0
  %10 = load %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)*, %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)** %9, align 8
  %11 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %5, align 8
  %12 = load %struct.dcb_output*, %struct.dcb_output** %4, align 8
  %13 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @NV_I2C_TYPE_EXTAUX(i32 %14)
  %16 = call %struct.nouveau_i2c_port* %10(%struct.nouveau_i2c* %11, i32 %15)
  ret %struct.nouveau_i2c_port* %16
}

declare dso_local %struct.nouveau_i2c* @nouveau_i2c(%struct.nouveau_disp*) #1

declare dso_local i32 @NV_I2C_TYPE_EXTAUX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
