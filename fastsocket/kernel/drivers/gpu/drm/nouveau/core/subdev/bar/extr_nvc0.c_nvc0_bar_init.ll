; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nvc0.c_nvc0_bar_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nvc0.c_nvc0_bar_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nvc0_bar_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nvc0_bar_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_bar_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nvc0_bar_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = bitcast %struct.nouveau_object* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nvc0_bar_priv*
  store %struct.nvc0_bar_priv* %8, %struct.nvc0_bar_priv** %4, align 8
  %9 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %4, align 8
  %10 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %9, i32 0, i32 1
  %11 = call i32 @nouveau_bar_init(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %4, align 8
  %18 = call i32 @nv_mask(%struct.nvc0_bar_priv* %17, i32 512, i32 256, i32 0)
  %19 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %4, align 8
  %20 = call i32 @nv_mask(%struct.nvc0_bar_priv* %19, i32 512, i32 256, i32 256)
  %21 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %4, align 8
  %22 = call i32 @nv_mask(%struct.nvc0_bar_priv* %21, i32 1051776, i32 1, i32 0)
  %23 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %4, align 8
  %24 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %4, align 8
  %25 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 12
  %33 = or i32 -2147483648, %32
  %34 = call i32 @nv_wr32(%struct.nvc0_bar_priv* %23, i32 5892, i32 %33)
  %35 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %4, align 8
  %36 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %4, align 8
  %37 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 12
  %45 = or i32 -1073741824, %44
  %46 = call i32 @nv_wr32(%struct.nvc0_bar_priv* %35, i32 5908, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %16, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @nouveau_bar_init(i32*) #1

declare dso_local i32 @nv_mask(%struct.nvc0_bar_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_bar_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
