; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_timer = type { i32 (%struct.nouveau_timer*, i64, %struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i32 }
%struct.nouveau_therm_priv = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"FAN target request: %d%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_therm*, i32)* @nouveau_therm_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_therm_update(%struct.nouveau_therm* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_therm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_timer*, align 8
  %6 = alloca %struct.nouveau_therm_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %10 = call %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_therm* %9)
  store %struct.nouveau_timer* %10, %struct.nouveau_timer** %5, align 8
  %11 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %12 = bitcast %struct.nouveau_therm* %11 to i8*
  %13 = bitcast i8* %12 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %13, %struct.nouveau_therm_priv** %6, align 8
  %14 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %15 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %22 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %27 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %52 [
    i32 129, label %29
    i32 130, label %36
    i32 128, label %51
  ]

29:                                               ; preds = %24
  %30 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %31 = call i32 @nouveau_therm_fan_get(%struct.nouveau_therm* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 100, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %29
  br label %53

36:                                               ; preds = %24
  %37 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %38 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %46 = call i32 @nouveau_therm_update_trip(%struct.nouveau_therm* %45)
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %49 = call i32 @nouveau_therm_update_linear(%struct.nouveau_therm* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %53

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %24, %51
  br label %63

53:                                               ; preds = %50, %35
  %54 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @nv_debug(%struct.nouveau_therm* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 130
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @nouveau_therm_fan_set(%struct.nouveau_therm* %57, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %53, %52
  %64 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %65 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i64 @list_empty(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 130
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.nouveau_timer*, %struct.nouveau_timer** %5, align 8
  %74 = getelementptr inbounds %struct.nouveau_timer, %struct.nouveau_timer* %73, i32 0, i32 0
  %75 = load i32 (%struct.nouveau_timer*, i64, %struct.TYPE_6__*)*, i32 (%struct.nouveau_timer*, i64, %struct.TYPE_6__*)** %74, align 8
  %76 = load %struct.nouveau_timer*, %struct.nouveau_timer** %5, align 8
  %77 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %78 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %77, i32 0, i32 2
  %79 = call i32 %75(%struct.nouveau_timer* %76, i64 1000000000, %struct.TYPE_6__* %78)
  br label %80

80:                                               ; preds = %72, %69, %63
  %81 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %82 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %81, i32 0, i32 1
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  ret void
}

declare dso_local %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_therm*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nouveau_therm_fan_get(%struct.nouveau_therm*) #1

declare dso_local i32 @nouveau_therm_update_trip(%struct.nouveau_therm*) #1

declare dso_local i32 @nouveau_therm_update_linear(%struct.nouveau_therm*) #1

declare dso_local i32 @nv_debug(%struct.nouveau_therm*, i8*, i32) #1

declare dso_local i32 @nouveau_therm_fan_set(%struct.nouveau_therm*, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
