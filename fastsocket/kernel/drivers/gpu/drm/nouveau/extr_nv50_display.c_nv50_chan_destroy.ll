; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_chan_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_chan_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_chan = type { i64 }

@NV_CLIENT_CLASS = common dso_local global i32 0, align 4
@EVO_CORE_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*, %struct.nv50_chan*)* @nv50_chan_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_chan_destroy(%struct.nouveau_object* %0, %struct.nv50_chan* %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_chan*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store %struct.nv50_chan* %1, %struct.nv50_chan** %4, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = load i32, i32* @NV_CLIENT_CLASS, align 4
  %8 = call %struct.nouveau_object* @nv_pclass(%struct.nouveau_object* %6, i32 %7)
  store %struct.nouveau_object* %8, %struct.nouveau_object** %5, align 8
  %9 = load %struct.nv50_chan*, %struct.nv50_chan** %4, align 8
  %10 = getelementptr inbounds %struct.nv50_chan, %struct.nv50_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %15 = load i32, i32* @EVO_CORE_HANDLE, align 4
  %16 = load %struct.nv50_chan*, %struct.nv50_chan** %4, align 8
  %17 = getelementptr inbounds %struct.nv50_chan, %struct.nv50_chan* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @nouveau_object_del(%struct.nouveau_object* %14, i32 %15, i64 %18)
  br label %20

20:                                               ; preds = %13, %2
  ret void
}

declare dso_local %struct.nouveau_object* @nv_pclass(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nouveau_object_del(%struct.nouveau_object*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
