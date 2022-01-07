; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_chan_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_chan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_chan = type { i32, i32 }

@NV_CLIENT_CLASS = common dso_local global i32 0, align 4
@EVO_CORE_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, i32, i8*, i32, %struct.nv50_chan*)* @nv50_chan_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_chan_create(%struct.nouveau_object* %0, i32 %1, i32 %2, i8* %3, i32 %4, %struct.nv50_chan* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nv50_chan*, align 8
  %14 = alloca %struct.nouveau_object*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nv50_chan* %5, %struct.nv50_chan** %13, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %19 = load i32, i32* @NV_CLIENT_CLASS, align 4
  %20 = call %struct.nouveau_object* @nv_pclass(%struct.nouveau_object* %18, i32 %19)
  store %struct.nouveau_object* %20, %struct.nouveau_object** %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %23 = call i32 @EVO_CHAN_OCLASS(i32 %21, %struct.nouveau_object* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @EVO_CHAN_HANDLE(i32 %24, i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %28 = load i32, i32* @EVO_CORE_HANDLE, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.nv50_chan*, %struct.nv50_chan** %13, align 8
  %34 = getelementptr inbounds %struct.nv50_chan, %struct.nv50_chan* %33, i32 0, i32 1
  %35 = call i32 @nouveau_object_new(%struct.nouveau_object* %27, i32 %28, i32 %29, i32 %30, i8* %31, i32 %32, i32* %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %7, align 4
  br label %44

40:                                               ; preds = %6
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.nv50_chan*, %struct.nv50_chan** %13, align 8
  %43 = getelementptr inbounds %struct.nv50_chan, %struct.nv50_chan* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %38
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.nouveau_object* @nv_pclass(%struct.nouveau_object*, i32) #1

declare dso_local i32 @EVO_CHAN_OCLASS(i32, %struct.nouveau_object*) #1

declare dso_local i32 @EVO_CHAN_HANDLE(i32, i32) #1

declare dso_local i32 @nouveau_object_new(%struct.nouveau_object*, i32, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
