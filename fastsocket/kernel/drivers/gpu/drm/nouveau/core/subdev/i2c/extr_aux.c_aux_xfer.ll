; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_aux.c_aux_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_aux.c_aux_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.nouveau_i2c_port* }
%struct.nouveau_i2c_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)*, i32 (%struct.nouveau_i2c_port*)* }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @aux_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aux_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_i2c_port*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %17, align 8
  store %struct.nouveau_i2c_port* %18, %struct.nouveau_i2c_port** %8, align 8
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  store %struct.i2c_msg* %19, %struct.i2c_msg** %9, align 8
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %22 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)*, i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %116

30:                                               ; preds = %3
  %31 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %32 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32 (%struct.nouveau_i2c_port*)*, i32 (%struct.nouveau_i2c_port*)** %34, align 8
  %36 = icmp ne i32 (%struct.nouveau_i2c_port*)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %39 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.nouveau_i2c_port*)*, i32 (%struct.nouveau_i2c_port*)** %41, align 8
  %43 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %44 = call i32 %42(%struct.nouveau_i2c_port* %43)
  br label %45

45:                                               ; preds = %37, %30
  br label %46

46:                                               ; preds = %111, %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %11, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %114

50:                                               ; preds = %46
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %12, align 4
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %13, align 8
  br label %57

57:                                               ; preds = %103, %50
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %111

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = icmp sgt i32 %61, 16
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ 16, %63 ], [ %65, %64 ]
  store i32 %67, i32* %14, align 4
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @I2C_M_RD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 1, i32* %15, align 4
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = icmp sgt i32 %80, 16
  br i1 %81, label %82, label %85

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %15, align 4
  %84 = or i32 %83, 4
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %87 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)*, i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)** %89, align 8
  %91 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 %90(%struct.nouveau_i2c_port* %91, i32 %92, i32 %95, i32* %96, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %85
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %116

103:                                              ; preds = %85
  %104 = load i32, i32* %14, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %57

111:                                              ; preds = %57
  %112 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i32 1
  store %struct.i2c_msg* %113, %struct.i2c_msg** %9, align 8
  br label %46

114:                                              ; preds = %46
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %101, %27
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
