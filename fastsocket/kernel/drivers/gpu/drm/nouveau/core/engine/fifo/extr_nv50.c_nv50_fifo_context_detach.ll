; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_context_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_context_detach.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, %struct.nouveau_object*)* @nv50_fifo_context_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fifo_context_detach(%struct.nouveau_object* %0, i32 %1, %struct.nouveau_object* %2) #0 {
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
  store %struct.nouveau_object* %0, %struct.nouveau_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nouveau_object* %2, %struct.nouveau_object** %7, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %16 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %15)
  store %struct.nouveau_bar* %16, %struct.nouveau_bar** %8, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %18 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.nv50_fifo_priv*
  store %struct.nv50_fifo_priv* %21, %struct.nv50_fifo_priv** %9, align 8
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %23 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.nv50_fifo_base*
  store %struct.nv50_fifo_base* %26, %struct.nv50_fifo_base** %10, align 8
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %28 = bitcast %struct.nouveau_object* %27 to i8*
  %29 = bitcast i8* %28 to %struct.nv50_fifo_chan*
  store %struct.nv50_fifo_chan* %29, %struct.nv50_fifo_chan** %11, align 8
  store i32 0, i32* %14, align 4
  %30 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %31 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nv_engidx(i64 %32)
  switch i32 %33, label %37 [
    i32 128, label %34
    i32 130, label %35
    i32 129, label %36
  ]

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

35:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %40

36:                                               ; preds = %3
  store i32 96, i32* %12, align 4
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %118

40:                                               ; preds = %36, %35
  %41 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %9, align 8
  %42 = call i32 @nv_mask(%struct.nv50_fifo_priv* %41, i32 47200, i32 1, i32 1)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %9, align 8
  %44 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %45 = call %struct.TYPE_4__* @nv_gpuobj(%struct.nv50_fifo_base* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 12
  %49 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %43, i32 13052, i32 %48)
  %50 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %9, align 8
  %51 = call i32 @nv_wait_ne(%struct.nv50_fifo_priv* %50, i32 13052, i32 -1, i32 -1)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %40
  %54 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %9, align 8
  %55 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %56 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %11, align 8
  %60 = call i32 @nouveau_client_name(%struct.nv50_fifo_chan* %59)
  %61 = call i32 @nv_error(%struct.nv50_fifo_priv* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %64, %53
  br label %68

68:                                               ; preds = %67, %40
  %69 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @nv_wr32(%struct.nv50_fifo_priv* %69, i32 47200, i32 %70)
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %116

74:                                               ; preds = %68
  %75 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %76 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 0
  %80 = call i32 @nv_wo32(i32 %77, i32 %79, i32 0)
  %81 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %82 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 4
  %86 = call i32 @nv_wo32(i32 %83, i32 %85, i32 0)
  %87 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %88 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 8
  %92 = call i32 @nv_wo32(i32 %89, i32 %91, i32 0)
  %93 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %94 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 12
  %98 = call i32 @nv_wo32(i32 %95, i32 %97, i32 0)
  %99 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %100 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 16
  %104 = call i32 @nv_wo32(i32 %101, i32 %103, i32 0)
  %105 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %10, align 8
  %106 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 20
  %110 = call i32 @nv_wo32(i32 %107, i32 %109, i32 0)
  %111 = load %struct.nouveau_bar*, %struct.nouveau_bar** %8, align 8
  %112 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %111, i32 0, i32 0
  %113 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %112, align 8
  %114 = load %struct.nouveau_bar*, %struct.nouveau_bar** %8, align 8
  %115 = call i32 %113(%struct.nouveau_bar* %114)
  br label %116

116:                                              ; preds = %74, %68
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %37, %34
  %119 = load i32, i32* %4, align 4
  ret i32 %119
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
