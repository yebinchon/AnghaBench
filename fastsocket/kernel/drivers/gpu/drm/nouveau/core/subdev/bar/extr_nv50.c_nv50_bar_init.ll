; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nv50.c_nv50_bar_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nv50.c_nv50_bar_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_bar_priv = type { %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv50_bar_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_bar_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_bar_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = bitcast %struct.nouveau_object* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nv50_bar_priv*
  store %struct.nv50_bar_priv* %8, %struct.nv50_bar_priv** %4, align 8
  %9 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %10 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %9, i32 0, i32 3
  %11 = call i32 @nouveau_bar_init(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %64

16:                                               ; preds = %1
  %17 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %18 = call i32 @nv_mask(%struct.nv50_bar_priv* %17, i32 512, i32 256, i32 0)
  %19 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %20 = call i32 @nv_mask(%struct.nv50_bar_priv* %19, i32 512, i32 256, i32 256)
  %21 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %22 = call i32 @nv_subdev(%struct.nv50_bar_priv* %21)
  %23 = call i32 @nv50_vm_flush_engine(i32 %22, i32 6)
  %24 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %25 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %26 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 12
  %31 = or i32 0, %30
  %32 = call i32 @nv_wr32(%struct.nv50_bar_priv* %24, i32 5892, i32 %31)
  %33 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %34 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %35 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 12
  %40 = or i32 1073741824, %39
  %41 = call i32 @nv_wr32(%struct.nv50_bar_priv* %33, i32 5892, i32 %40)
  %42 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %43 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %44 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 4
  %51 = or i32 -2147483648, %50
  %52 = call i32 @nv_wr32(%struct.nv50_bar_priv* %42, i32 5896, i32 %51)
  %53 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %54 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %4, align 8
  %55 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 4
  %62 = or i32 -2147483648, %61
  %63 = call i32 @nv_wr32(%struct.nv50_bar_priv* %53, i32 5900, i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %16, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @nouveau_bar_init(i32*) #1

declare dso_local i32 @nv_mask(%struct.nv50_bar_priv*, i32, i32, i32) #1

declare dso_local i32 @nv50_vm_flush_engine(i32, i32) #1

declare dso_local i32 @nv_subdev(%struct.nv50_bar_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nv50_bar_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
