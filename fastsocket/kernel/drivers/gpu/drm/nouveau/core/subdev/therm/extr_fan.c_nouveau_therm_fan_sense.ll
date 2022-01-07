; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_therm_fan_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_therm_fan_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.nouveau_timer = type { i32 (%struct.nouveau_timer*)* }
%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i64, i32)* }

@DCB_GPIO_UNUSED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_therm_fan_sense(%struct.nouveau_therm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_therm*, align 8
  %4 = alloca %struct.nouveau_therm_priv*, align 8
  %5 = alloca %struct.nouveau_timer*, align 8
  %6 = alloca %struct.nouveau_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %3, align 8
  %13 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %14 = bitcast %struct.nouveau_therm* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %15, %struct.nouveau_therm_priv** %4, align 8
  %16 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %17 = call %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_therm* %16)
  store %struct.nouveau_timer* %17, %struct.nouveau_timer** %5, align 8
  %18 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %19 = call %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_therm* %18)
  store %struct.nouveau_gpio* %19, %struct.nouveau_gpio** %6, align 8
  %20 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %120

31:                                               ; preds = %1
  %32 = load %struct.nouveau_timer*, %struct.nouveau_timer** %5, align 8
  %33 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %32, i32 0, i32 0
  %34 = load i32 (%struct.nouveau_timer*)*, i32 (%struct.nouveau_timer*)** %33, align 8
  %35 = load %struct.nouveau_timer*, %struct.nouveau_timer** %5, align 8
  %36 = call i32 %34(%struct.nouveau_timer* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %38 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %37, i32 0, i32 0
  %39 = load i32 (%struct.nouveau_gpio*, i32, i64, i32)*, i32 (%struct.nouveau_gpio*, i32, i64, i32)** %38, align 8
  %40 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %41 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %42 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %48 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %39(%struct.nouveau_gpio* %40, i32 0, i64 %46, i32 %52)
  store i32 %53, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %102, %31
  %55 = call i32 @usleep_range(i32 500, i32 1000)
  %56 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %57 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %56, i32 0, i32 0
  %58 = load i32 (%struct.nouveau_gpio*, i32, i64, i32)*, i32 (%struct.nouveau_gpio*, i32, i64, i32)** %57, align 8
  %59 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %60 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %61 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %67 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %58(%struct.nouveau_gpio* %59, i32 0, i64 %65, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %54
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load %struct.nouveau_timer*, %struct.nouveau_timer** %5, align 8
  %81 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %80, i32 0, i32 0
  %82 = load i32 (%struct.nouveau_timer*)*, i32 (%struct.nouveau_timer*)** %81, align 8
  %83 = load %struct.nouveau_timer*, %struct.nouveau_timer** %5, align 8
  %84 = call i32 %82(%struct.nouveau_timer* %83)
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %85, %54
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 5
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.nouveau_timer*, %struct.nouveau_timer** %5, align 8
  %95 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %94, i32 0, i32 0
  %96 = load i32 (%struct.nouveau_timer*)*, i32 (%struct.nouveau_timer*)** %95, align 8
  %97 = load %struct.nouveau_timer*, %struct.nouveau_timer** %5, align 8
  %98 = call i32 %96(%struct.nouveau_timer* %97)
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %98, %99
  %101 = icmp slt i32 %100, 250000000
  br label %102

102:                                              ; preds = %93, %90
  %103 = phi i1 [ false, %90 ], [ %101, %93 ]
  br i1 %103, label %54, label %104

104:                                              ; preds = %102
  %105 = load %struct.nouveau_timer*, %struct.nouveau_timer** %5, align 8
  %106 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %105, i32 0, i32 0
  %107 = load i32 (%struct.nouveau_timer*)*, i32 (%struct.nouveau_timer*)** %106, align 8
  %108 = load %struct.nouveau_timer*, %struct.nouveau_timer** %5, align 8
  %109 = call i32 %107(%struct.nouveau_timer* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 5
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  store i32 -129542144, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %114, %115
  %117 = call i32 @do_div(i32 %113, i32 %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %2, align 4
  br label %120

119:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %112, %28
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_therm*) #1

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_therm*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
