; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_context_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_context_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64, i64 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.nve0_fifo_priv = type { i32 }
%struct.nve0_fifo_base = type { i32 }
%struct.nve0_fifo_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"channel %d [%s] kick timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, %struct.nouveau_object*)* @nve0_fifo_context_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_fifo_context_detach(%struct.nouveau_object* %0, i32 %1, %struct.nouveau_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_bar*, align 8
  %9 = alloca %struct.nve0_fifo_priv*, align 8
  %10 = alloca %struct.nve0_fifo_base*, align 8
  %11 = alloca %struct.nve0_fifo_chan*, align 8
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
  %19 = bitcast i8* %18 to %struct.nve0_fifo_priv*
  store %struct.nve0_fifo_priv* %19, %struct.nve0_fifo_priv** %9, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.nve0_fifo_base*
  store %struct.nve0_fifo_base* %24, %struct.nve0_fifo_base** %10, align 8
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %26 = bitcast %struct.nouveau_object* %25 to i8*
  %27 = bitcast i8* %26 to %struct.nve0_fifo_chan*
  store %struct.nve0_fifo_chan* %27, %struct.nve0_fifo_chan** %11, align 8
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %29 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @nv_engidx(i64 %30)
  switch i32 %31, label %37 [
    i32 129, label %32
    i32 131, label %33
    i32 133, label %33
    i32 132, label %33
    i32 134, label %34
    i32 128, label %35
    i32 130, label %36
  ]

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

33:                                               ; preds = %3, %3, %3
  store i32 528, i32* %12, align 4
  br label %40

34:                                               ; preds = %3
  store i32 624, i32* %12, align 4
  br label %40

35:                                               ; preds = %3
  store i32 592, i32* %12, align 4
  br label %40

36:                                               ; preds = %3
  store i32 608, i32* %12, align 4
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %83

40:                                               ; preds = %36, %35, %34, %33
  %41 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %9, align 8
  %42 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %11, align 8
  %43 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nv_wr32(%struct.nve0_fifo_priv* %41, i32 9780, i32 %45)
  %47 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %9, align 8
  %48 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %11, align 8
  %49 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nv_wait(%struct.nve0_fifo_priv* %47, i32 9780, i32 -1, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %40
  %55 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %9, align 8
  %56 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %11, align 8
  %57 = getelementptr inbounds %struct.nve0_fifo_chan, %struct.nve0_fifo_chan* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nve0_fifo_chan*, %struct.nve0_fifo_chan** %11, align 8
  %61 = call i32 @nouveau_client_name(%struct.nve0_fifo_chan* %60)
  %62 = call i32 @nv_error(%struct.nve0_fifo_priv* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %83

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %40
  %70 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 0
  %73 = call i32 @nv_wo32(%struct.nve0_fifo_base* %70, i32 %72, i32 0)
  %74 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 4
  %77 = call i32 @nv_wo32(%struct.nve0_fifo_base* %74, i32 %76, i32 0)
  %78 = load %struct.nouveau_bar*, %struct.nouveau_bar** %8, align 8
  %79 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %78, i32 0, i32 0
  %80 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %79, align 8
  %81 = load %struct.nouveau_bar*, %struct.nouveau_bar** %8, align 8
  %82 = call i32 %80(%struct.nouveau_bar* %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %69, %65, %37, %32
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_object*) #1

declare dso_local i32 @nv_engidx(i64) #1

declare dso_local i32 @nv_wr32(%struct.nve0_fifo_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nve0_fifo_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nve0_fifo_priv*, i8*, i32, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nve0_fifo_chan*) #1

declare dso_local i32 @nv_wo32(%struct.nve0_fifo_base*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
