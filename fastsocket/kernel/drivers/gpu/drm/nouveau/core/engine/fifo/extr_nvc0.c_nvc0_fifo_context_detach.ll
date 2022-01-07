; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_context_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_context_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64, i64 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nvc0_fifo_priv = type { i32 }
%struct.nvc0_fifo_base = type { i32 }
%struct.nvc0_fifo_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"channel %d [%s] kick timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, %struct.nouveau_object*)* @nvc0_fifo_context_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_fifo_context_detach(%struct.nouveau_object* %0, i32 %1, %struct.nouveau_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_bar*, align 8
  %9 = alloca %struct.nvc0_fifo_priv*, align 8
  %10 = alloca %struct.nvc0_fifo_base*, align 8
  %11 = alloca %struct.nvc0_fifo_chan*, align 8
  %12 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nouveau_object* %2, %struct.nouveau_object** %7, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %14 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object* %13)
  store %struct.nouveau_bar* %14, %struct.nouveau_bar** %8, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.nvc0_fifo_priv*
  store %struct.nvc0_fifo_priv* %19, %struct.nvc0_fifo_priv** %9, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.nvc0_fifo_base*
  store %struct.nvc0_fifo_base* %24, %struct.nvc0_fifo_base** %10, align 8
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %26 = bitcast %struct.nouveau_object* %25 to i8*
  %27 = bitcast i8* %26 to %struct.nvc0_fifo_chan*
  store %struct.nvc0_fifo_chan* %27, %struct.nvc0_fifo_chan** %11, align 8
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %29 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @nv_engidx(i64 %30)
  switch i32 %31, label %39 [
    i32 129, label %32
    i32 131, label %33
    i32 133, label %34
    i32 132, label %35
    i32 134, label %36
    i32 128, label %37
    i32 130, label %38
  ]

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

33:                                               ; preds = %3
  store i32 528, i32* %12, align 4
  br label %42

34:                                               ; preds = %3
  store i32 560, i32* %12, align 4
  br label %42

35:                                               ; preds = %3
  store i32 576, i32* %12, align 4
  br label %42

36:                                               ; preds = %3
  store i32 624, i32* %12, align 4
  br label %42

37:                                               ; preds = %3
  store i32 592, i32* %12, align 4
  br label %42

38:                                               ; preds = %3
  store i32 608, i32* %12, align 4
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %85

42:                                               ; preds = %38, %37, %36, %35, %34, %33
  %43 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %9, align 8
  %44 = load %struct.nvc0_fifo_chan*, %struct.nvc0_fifo_chan** %11, align 8
  %45 = getelementptr inbounds %struct.nvc0_fifo_chan, %struct.nvc0_fifo_chan* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nv_wr32(%struct.nvc0_fifo_priv* %43, i32 9780, i32 %47)
  %49 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %9, align 8
  %50 = load %struct.nvc0_fifo_chan*, %struct.nvc0_fifo_chan** %11, align 8
  %51 = getelementptr inbounds %struct.nvc0_fifo_chan, %struct.nvc0_fifo_chan* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @nv_wait(%struct.nvc0_fifo_priv* %49, i32 9780, i32 -1, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %42
  %57 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %9, align 8
  %58 = load %struct.nvc0_fifo_chan*, %struct.nvc0_fifo_chan** %11, align 8
  %59 = getelementptr inbounds %struct.nvc0_fifo_chan, %struct.nvc0_fifo_chan* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nvc0_fifo_chan*, %struct.nvc0_fifo_chan** %11, align 8
  %63 = call i32 @nouveau_client_name(%struct.nvc0_fifo_chan* %62)
  %64 = call i32 @nv_error(%struct.nvc0_fifo_priv* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %42
  %72 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 0
  %75 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %72, i32 %74, i32 0)
  %76 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 4
  %79 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %76, i32 %78, i32 0)
  %80 = load %struct.nouveau_bar*, %struct.nouveau_bar** %8, align 8
  %81 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %80, i32 0, i32 0
  %82 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %81, align 8
  %83 = load %struct.nouveau_bar*, %struct.nouveau_bar** %8, align 8
  %84 = call i32 %82(%struct.nouveau_bar* %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %71, %67, %39, %32
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i32 @nv_engidx(i64) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_fifo_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nvc0_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_fifo_priv*, i8*, i32, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nvc0_fifo_chan*) #1

declare dso_local i32 @nv_wo32(%struct.nvc0_fifo_base*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
