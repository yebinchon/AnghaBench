; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_ioctl.c_drm_unset_busid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_ioctl.c_drm_unset_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_master = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_master*)* @drm_unset_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_unset_busid(%struct.drm_device* %0, %struct.drm_master* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_master*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_master* %1, %struct.drm_master** %4, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @kfree(i32* %7)
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %12 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kfree(i32* %13)
  %15 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %16 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %18 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %20 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
