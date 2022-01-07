; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_anx9805.c_anx9805_ddc_port_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_anx9805.c_anx9805_ddc_port_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_i2c_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.i2c_algo_bit_data*, i32* }
%struct.i2c_algo_bit_data = type { i32 }
%struct.anx9805_i2c_port = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@anx9805_i2c_algo = common dso_local global i32 0, align 4
@i2c_bit_algo = common dso_local global i32 0, align 4
@anx9805_i2c_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @anx9805_ddc_port_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx9805_ddc_port_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_i2c_port*, align 8
  %15 = alloca %struct.anx9805_i2c_port*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %19 = bitcast %struct.nouveau_object* %18 to i8*
  %20 = bitcast i8* %19 to %struct.nouveau_i2c_port*
  store %struct.nouveau_i2c_port* %20, %struct.nouveau_i2c_port** %14, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %23 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @nouveau_i2c_port_create(%struct.nouveau_object* %21, %struct.nouveau_object* %22, %struct.nouveau_oclass* %23, i32 %24, i32* @anx9805_i2c_algo, %struct.anx9805_i2c_port** %15)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %15, align 8
  %27 = call %struct.nouveau_object* @nv_object(%struct.anx9805_i2c_port* %26)
  %28 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %27, %struct.nouveau_object** %28, align 8
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %7, align 4
  br label %72

33:                                               ; preds = %6
  %34 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %35 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 65280
  %38 = ashr i32 %37, 8
  switch i32 %38, label %49 [
    i32 13, label %39
    i32 14, label %44
  ]

39:                                               ; preds = %33
  %40 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %15, align 8
  %41 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %40, i32 0, i32 0
  store i32 61, i32* %41, align 8
  %42 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %15, align 8
  %43 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %42, i32 0, i32 1
  store i32 57, i32* %43, align 4
  br label %51

44:                                               ; preds = %33
  %45 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %15, align 8
  %46 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %45, i32 0, i32 0
  store i32 63, i32* %46, align 8
  %47 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %15, align 8
  %48 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %47, i32 0, i32 1
  store i32 59, i32* %48, align 4
  br label %51

49:                                               ; preds = %33
  %50 = call i32 @BUG_ON(i32 1)
  br label %51

51:                                               ; preds = %49, %44, %39
  %52 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %14, align 8
  %53 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, @i2c_bit_algo
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %14, align 8
  %59 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %60, align 8
  store %struct.i2c_algo_bit_data* %61, %struct.i2c_algo_bit_data** %17, align 8
  %62 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %17, align 8
  %63 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @max(i32 %64, i32 40)
  %66 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %17, align 8
  %67 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %51
  %69 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %15, align 8
  %70 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32* @anx9805_i2c_func, i32** %71, align 8
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %31
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @nouveau_i2c_port_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32*, %struct.anx9805_i2c_port**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.anx9805_i2c_port*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
