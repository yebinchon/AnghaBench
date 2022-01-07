; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_i2c_long_if.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_i2c_long_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }
%struct.nouveau_i2c_port = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [64 x i8] c"I2C_LONG_IF\09I2C[0x%02x][0x%02x][0x%02x%02x] & 0x%02x == 0x%02x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_i2c_long_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_i2c_long_if(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_i2c_port*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca [1 x i32], align 4
  %13 = alloca [2 x %struct.i2c_msg], align 16
  %14 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 1
  %17 = load %struct.nouveau_bios*, %struct.nouveau_bios** %16, align 8
  store %struct.nouveau_bios* %17, %struct.nouveau_bios** %3, align 8
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %19 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %20 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i32 @nv_ro08(%struct.nouveau_bios* %18, i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %25 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %26 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 2
  %29 = call i32 @nv_ro08(%struct.nouveau_bios* %24, i64 %28)
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %33 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 3
  %36 = call i32 @nv_ro08(%struct.nouveau_bios* %31, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %38 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %39 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 4
  %42 = call i32 @nv_ro08(%struct.nouveau_bios* %37, i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %44 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %45 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 5
  %48 = call i32 @nv_ro08(%struct.nouveau_bios* %43, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %50 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %51 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 6
  %54 = call i32 @nv_ro08(%struct.nouveau_bios* %49, i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @trace(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 7
  store i64 %65, i64* %63, align 8
  %66 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call %struct.nouveau_i2c_port* @init_i2c(%struct.nvbios_init* %66, i32 %67)
  store %struct.nouveau_i2c_port* %68, %struct.nouveau_i2c_port** %10, align 8
  %69 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %10, align 8
  %70 = icmp ne %struct.nouveau_i2c_port* %69, null
  br i1 %70, label %71, label %107

71:                                               ; preds = %1
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds i32, i32* %72, i64 1
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %74, align 4
  %76 = bitcast [1 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %76, i8 0, i64 4, i1 false)
  %77 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 0
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %78, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 1
  store i32 2, i32* %80, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 2
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32* %82, i32** %81, align 8
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 3
  store i32 0, i32* %83, align 8
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i64 1
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 0, i32 0
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %85, align 8
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 0, i32 2
  %89 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  store i32* %89, i32** %88, align 8
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 0, i32 3
  %91 = load i32, i32* @I2C_M_RD, align 4
  store i32 %91, i32* %90, align 8
  %92 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %10, align 8
  %93 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %92, i32 0, i32 0
  %94 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %95 = call i32 @i2c_transfer(i32* %93, %struct.i2c_msg* %94, i32 2)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %106

98:                                               ; preds = %71
  %99 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %110

106:                                              ; preds = %98, %71
  br label %107

107:                                              ; preds = %106, %1
  %108 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %109 = call i32 @init_exec_set(%struct.nvbios_init* %108, i32 0)
  br label %110

110:                                              ; preds = %107, %105
  ret void
}

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.nouveau_i2c_port* @init_i2c(%struct.nvbios_init*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @init_exec_set(%struct.nvbios_init*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
