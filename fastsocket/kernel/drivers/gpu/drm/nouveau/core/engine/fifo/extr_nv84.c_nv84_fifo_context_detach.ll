; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv84.c_nv84_fifo_context_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv84.c_nv84_fifo_context_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64, i64 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nv50_fifo_priv = type { i32 }
%struct.nv50_fifo_base = type { i32 }
%struct.nv50_fifo_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"channel %d [%s] unload timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, %struct.nouveau_object*)* @nv84_fifo_context_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_fifo_context_detach(%struct.nouveau_object* %0, i32 %1, %struct.nouveau_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_bar*, align 8
  %9 = alloca %struct.nv50_fifo_priv*, align 8
  %10 = alloca %struct.nv50_fifo_base*, align 8
  %11 = alloca %struct.nv50_fifo_chan*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nouveau_object* %2, %struct.nouveau_object** %7, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %17 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %16)
  store %struct.nouveau_bar* %17, %struct.nouveau_bar** %8, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %19 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.nv50_fifo_priv*
  store %struct.nv50_fifo_priv* %22, %struct.nv50_fifo_priv** %9, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.nv50_fifo_base*
  store %struct.nv50_fifo_base* %27, %struct.nv50_fifo_base** %10, align 8
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %29 = bitcast %struct.nouveau_object* %28 to i8*
  %30 = bitcast i8* %29 to %struct.nv50_fifo_chan*
  store %struct.nv50_fifo_chan* %30, %struct.nv50_fifo_chan** %11, align 8
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %32 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @nv_engidx(i64 %33)
  switch i32 %34, label %40 [
    i32 128, label %35
    i32 130, label %36
    i32 129, label %37
    i32 131, label %38
    i32 132, label %39
  ]

35:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %119

36:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  store i32 32, i32* %12, align 4
  br label %43

37:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  store i32 96, i32* %12, align 4
  br label %43

38:                                               ; preds = %3
  store i32 4, i32* %14, align 4
  store i32 160, i32* %12, align 4
  br label %43

39:                                               ; preds = %3
  store i32 2, i32* %14, align 4
  store i32 192, i32* %12, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %119

43:                                               ; preds = %39, %38, %37, %36
  %44 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %9, align 8
  %45 = load i32, i32* %14, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @nv_mask(%struct.nv50_fifo_priv* %44, i32 9504, i32 63, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %9, align 8
  %49 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %50 = call %struct.TYPE_4__* @nv_gpuobj(%struct.nv50_fifo_base* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 12
  %54 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %48, i32 13052, i32 %53)
  %55 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %9, align 8
  %56 = call i32 @nv_wait_ne(%struct.nv50_fifo_priv* %55, i32 13052, i32 -1, i32 -1)
  store i32 %56, i32* %15, align 4
  %57 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %57, i32 9504, i32 %58)
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %43
  %63 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %9, align 8
  %64 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %65 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %69 = call i32 @nouveau_client_name(%struct.nv50_fifo_chan* %68)
  %70 = call i32 @nv_error(%struct.nv50_fifo_priv* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %119

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %43
  %78 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %79 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 0
  %83 = call i32 @nv_wo32(i32 %80, i32 %82, i32 0)
  %84 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %85 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 4
  %89 = call i32 @nv_wo32(i32 %86, i32 %88, i32 0)
  %90 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %91 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 8
  %95 = call i32 @nv_wo32(i32 %92, i32 %94, i32 0)
  %96 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %97 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 12
  %101 = call i32 @nv_wo32(i32 %98, i32 %100, i32 0)
  %102 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %103 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 16
  %107 = call i32 @nv_wo32(i32 %104, i32 %106, i32 0)
  %108 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %109 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 20
  %113 = call i32 @nv_wo32(i32 %110, i32 %112, i32 0)
  %114 = load %struct.nouveau_bar*, %struct.nouveau_bar** %8, align 8
  %115 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %114, i32 0, i32 0
  %116 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %115, align 8
  %117 = load %struct.nouveau_bar*, %struct.nouveau_bar** %8, align 8
  %118 = call i32 %116(%struct.nouveau_bar* %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %77, %73, %40, %35
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i32 @nv_engidx(i64) #1

declare dso_local i32 @nv_mask(%struct.nv50_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_fifo_priv*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @nv_gpuobj(%struct.nv50_fifo_base*) #1

declare dso_local i32 @nv_wait_ne(%struct.nv50_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_fifo_priv*, i8*, i32, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nv50_fifo_chan*) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
