; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.nvbios_init = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.nouveau_i2c = type { %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)*, %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)* }

@.str = private unnamed_addr constant [29 x i8] c"script needs output for i2c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nouveau_i2c_port* (%struct.nvbios_init*, i32)* @init_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nouveau_i2c_port* @init_i2c(%struct.nvbios_init* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_i2c_port*, align 8
  %4 = alloca %struct.nvbios_init*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_i2c*, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %8 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.nouveau_i2c* @nouveau_i2c(i32 %9)
  store %struct.nouveau_i2c* %10, %struct.nouveau_i2c** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = call i32 @NV_I2C_DEFAULT(i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %21 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @NV_I2C_DEFAULT(i32 1)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %19, %13
  br label %69

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %29
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.nouveau_i2c_port* null, %struct.nouveau_i2c_port** %3, align 8
  br label %76

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, -2
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %44 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %51 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @NV_I2C_TYPE_EXTAUX(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %6, align 8
  %57 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %56, i32 0, i32 1
  %58 = load %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)*, %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)** %57, align 8
  %59 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call %struct.nouveau_i2c_port* %58(%struct.nouveau_i2c* %59, i32 %60)
  store %struct.nouveau_i2c_port* %61, %struct.nouveau_i2c_port** %3, align 8
  br label %76

62:                                               ; preds = %42, %39
  %63 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %64 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %62, %29
  br label %69

69:                                               ; preds = %68, %28
  %70 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %6, align 8
  %71 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %70, i32 0, i32 0
  %72 = load %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)*, %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)** %71, align 8
  %73 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %6, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call %struct.nouveau_i2c_port* %72(%struct.nouveau_i2c* %73, i32 %74)
  store %struct.nouveau_i2c_port* %75, %struct.nouveau_i2c_port** %3, align 8
  br label %76

76:                                               ; preds = %69, %49, %37
  %77 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %3, align 8
  ret %struct.nouveau_i2c_port* %77
}

declare dso_local %struct.nouveau_i2c* @nouveau_i2c(i32) #1

declare dso_local i32 @NV_I2C_DEFAULT(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @NV_I2C_TYPE_EXTAUX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
