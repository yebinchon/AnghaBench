; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_nv04.c_nv04_timer_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_nv04.c_nv04_timer_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv04_timer_priv = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@nv04_timer_intr = common dso_local global i32 0, align 4
@nv04_timer_read = common dso_local global i32 0, align 4
@nv04_timer_alarm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv04_timer_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_timer_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv04_timer_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %19 = call i32 @nouveau_timer_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, %struct.nv04_timer_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nv04_timer_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %47

27:                                               ; preds = %6
  %28 = load i32, i32* @nv04_timer_intr, align 4
  %29 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %14, align 8
  %30 = getelementptr inbounds %struct.nv04_timer_priv, %struct.nv04_timer_priv* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @nv04_timer_read, align 4
  %34 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %14, align 8
  %35 = getelementptr inbounds %struct.nv04_timer_priv, %struct.nv04_timer_priv* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @nv04_timer_alarm, align 4
  %38 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %14, align 8
  %39 = getelementptr inbounds %struct.nv04_timer_priv, %struct.nv04_timer_priv* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %14, align 8
  %42 = getelementptr inbounds %struct.nv04_timer_priv, %struct.nv04_timer_priv* %41, i32 0, i32 1
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %14, align 8
  %45 = getelementptr inbounds %struct.nv04_timer_priv, %struct.nv04_timer_priv* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_init(i32* %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %27, %25
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @nouveau_timer_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nv04_timer_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv04_timer_priv*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
