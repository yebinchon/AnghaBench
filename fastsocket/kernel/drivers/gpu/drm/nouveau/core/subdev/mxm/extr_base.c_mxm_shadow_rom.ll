; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_base.c_mxm_shadow_rom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_base.c_mxm_shadow_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mxm = type { i32* }
%struct.nouveau_bios = type { i32 }
%struct.nouveau_i2c = type { %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)* }
%struct.nouveau_i2c_port = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_mxm*, i32)* @mxm_shadow_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxm_shadow_rom(%struct.nouveau_mxm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_mxm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_bios*, align 8
  %7 = alloca %struct.nouveau_i2c*, align 8
  %8 = alloca %struct.nouveau_i2c_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_mxm* %0, %struct.nouveau_mxm** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %14 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_mxm* %13)
  store %struct.nouveau_bios* %14, %struct.nouveau_bios** %6, align 8
  %15 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %16 = call %struct.nouveau_i2c* @nouveau_i2c(%struct.nouveau_mxm* %15)
  store %struct.nouveau_i2c* %16, %struct.nouveau_i2c** %7, align 8
  store %struct.nouveau_i2c_port* null, %struct.nouveau_i2c_port** %8, align 8
  %17 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %18 = call i32 @mxm_ddc_map(%struct.nouveau_bios* %17, i32 1)
  %19 = and i32 %18, 15
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 15
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %7, align 8
  %24 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %23, i32 0, i32 0
  %25 = load %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)*, %struct.nouveau_i2c_port* (%struct.nouveau_i2c*, i32)** %24, align 8
  %26 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.nouveau_i2c_port* %25(%struct.nouveau_i2c* %26, i32 %27)
  store %struct.nouveau_i2c_port* %28, %struct.nouveau_i2c_port** %8, align 8
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %31 = icmp ne %struct.nouveau_i2c_port* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %82

33:                                               ; preds = %29
  store i32 84, i32* %11, align 4
  %34 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %37 = call i64 @mxm_shadow_rom_fetch(%struct.nouveau_i2c_port* %34, i32 %35, i32 0, i32 6, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  store i32 86, i32* %11, align 4
  %40 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %43 = call i64 @mxm_shadow_rom_fetch(%struct.nouveau_i2c_port* %40, i32 %41, i32 0, i32 6, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %82

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %33
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %49 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %50 = getelementptr inbounds %struct.nouveau_mxm, %struct.nouveau_mxm* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %52 = call i32 @mxms_headerlen(%struct.nouveau_mxm* %51)
  %53 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %54 = call i32 @mxms_structlen(%struct.nouveau_mxm* %53)
  %55 = add nsw i32 %52, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32* @kmalloc(i32 %56, i32 %57)
  %59 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %60 = getelementptr inbounds %struct.nouveau_mxm, %struct.nouveau_mxm* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %62 = getelementptr inbounds %struct.nouveau_mxm, %struct.nouveau_mxm* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %47
  %66 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %70 = getelementptr inbounds %struct.nouveau_mxm, %struct.nouveau_mxm* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @mxm_shadow_rom_fetch(%struct.nouveau_i2c_port* %66, i32 %67, i32 0, i32 %68, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %82

75:                                               ; preds = %65, %47
  %76 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %77 = getelementptr inbounds %struct.nouveau_mxm, %struct.nouveau_mxm* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @kfree(i32* %78)
  %80 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %81 = getelementptr inbounds %struct.nouveau_mxm, %struct.nouveau_mxm* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %75, %74, %45, %32
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_mxm*) #1

declare dso_local %struct.nouveau_i2c* @nouveau_i2c(%struct.nouveau_mxm*) #1

declare dso_local i32 @mxm_ddc_map(%struct.nouveau_bios*, i32) #1

declare dso_local i64 @mxm_shadow_rom_fetch(%struct.nouveau_i2c_port*, i32, i32, i32, i32*) #1

declare dso_local i32 @mxms_headerlen(%struct.nouveau_mxm*) #1

declare dso_local i32 @mxms_structlen(%struct.nouveau_mxm*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
