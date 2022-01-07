; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_anx9805.c_anx9805_train.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_anx9805.c_anx9805_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.anx9805_i2c_port = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"link training timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"link training failed: 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_i2c_port*, i32, i32, i32)* @anx9805_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx9805_train(%struct.nouveau_i2c_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_i2c_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.anx9805_i2c_port*, align 8
  %11 = alloca %struct.nouveau_i2c_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nouveau_i2c_port* %0, %struct.nouveau_i2c_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %15 = bitcast %struct.nouveau_i2c_port* %14 to i8*
  %16 = bitcast i8* %15 to %struct.anx9805_i2c_port*
  store %struct.anx9805_i2c_port* %16, %struct.anx9805_i2c_port** %10, align 8
  %17 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %10, align 8
  %18 = call %struct.TYPE_2__* @nv_object(%struct.anx9805_i2c_port* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.nouveau_i2c_port*
  store %struct.nouveau_i2c_port* %22, %struct.nouveau_i2c_port** %11, align 8
  %23 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %11, align 8
  %24 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %10, align 8
  %25 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %23, i32 %26, i32 160, i32 %27)
  %29 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %11, align 8
  %30 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %10, align 8
  %31 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 128, i32 0
  %38 = or i32 %33, %37
  %39 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %29, i32 %32, i32 161, i32 %38)
  %40 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %11, align 8
  %41 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %10, align 8
  %42 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %40, i32 %43, i32 162, i32 1)
  %45 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %11, align 8
  %46 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %10, align 8
  %47 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %45, i32 %48, i32 168, i32 1)
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %68, %4
  %51 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %11, align 8
  %52 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %10, align 8
  %53 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nv_rdi2cr(%struct.nouveau_i2c_port* %51, i32 %54, i32 168)
  store i32 %55, i32* %12, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = call i32 @mdelay(i32 5)
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  %62 = icmp eq i32 %60, 100
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %65 = call i32 (%struct.nouveau_i2c_port*, i8*, ...) @nv_error(%struct.nouveau_i2c_port* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %80

68:                                               ; preds = %58
  br label %50

69:                                               ; preds = %50
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, 112
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 (%struct.nouveau_i2c_port*, i8*, ...) @nv_error(%struct.nouveau_i2c_port* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %73, %63
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_2__* @nv_object(%struct.anx9805_i2c_port*) #1

declare dso_local i32 @nv_wri2cr(%struct.nouveau_i2c_port*, i32, i32, i32) #1

declare dso_local i32 @nv_rdi2cr(%struct.nouveau_i2c_port*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_i2c_port*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
