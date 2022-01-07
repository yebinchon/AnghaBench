; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv94.c_nv94_i2c_port_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv94.c_nv94_i2c_port_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.dcb_i2c_entry = type { i64, i32 }
%struct.nv50_i2c_port = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@nouveau_i2c_bit_algo = common dso_local global i32 0, align 4
@nv50_i2c_addr_nr = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nv94_i2c_func = common dso_local global i32 0, align 4
@nv50_i2c_addr = common dso_local global i32* null, align 8
@DCB_I2C_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv94_i2c_port_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv94_i2c_port_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.dcb_i2c_entry*, align 8
  %15 = alloca %struct.nv50_i2c_port*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.dcb_i2c_entry*
  store %struct.dcb_i2c_entry* %18, %struct.dcb_i2c_entry** %14, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %21 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @nouveau_i2c_port_create(%struct.nouveau_object* %19, %struct.nouveau_object* %20, %struct.nouveau_oclass* %21, i32 %22, i32* @nouveau_i2c_bit_algo, %struct.nv50_i2c_port** %15)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %15, align 8
  %25 = call %struct.nouveau_object* @nv_object(%struct.nv50_i2c_port* %24)
  %26 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %25, %struct.nouveau_object** %26, align 8
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %7, align 4
  br label %70

31:                                               ; preds = %6
  %32 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %14, align 8
  %33 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @nv50_i2c_addr_nr, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %70

40:                                               ; preds = %31
  %41 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %15, align 8
  %42 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* @nv94_i2c_func, i32** %43, align 8
  %44 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %15, align 8
  %45 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %44, i32 0, i32 0
  store i32 7, i32* %45, align 8
  %46 = load i32*, i32** @nv50_i2c_addr, align 8
  %47 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %14, align 8
  %48 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %15, align 8
  %53 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %14, align 8
  %55 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DCB_I2C_UNUSED, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %40
  %60 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %14, align 8
  %61 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 80
  %64 = add nsw i32 58624, %63
  %65 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %15, align 8
  %66 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %15, align 8
  %68 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %67, i32 0, i32 2
  store i32 57345, i32* %68, align 8
  br label %69

69:                                               ; preds = %59, %40
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %37, %29
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @nouveau_i2c_port_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32*, %struct.nv50_i2c_port**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_i2c_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
