; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_device_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_device_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"radeon: finishing device.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_device_fini(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = call i32 @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call i32 @radeon_bo_evict_vram(%struct.radeon_device* %6)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = call i32 @radeon_fini(%struct.radeon_device* %8)
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @vga_switcheroo_unregister_client(i32 %12)
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @vga_client_register(i32 %16, i32* null, i32* null, i32* null)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @pci_iounmap(i32 %25, i32* %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @iounmap(i32* %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = call i32 @radeon_debugfs_remove_files(%struct.radeon_device* %39)
  ret void
}

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @radeon_bo_evict_vram(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fini(%struct.radeon_device*) #1

declare dso_local i32 @vga_switcheroo_unregister_client(i32) #1

declare dso_local i32 @vga_client_register(i32, i32*, i32*, i32*) #1

declare dso_local i32 @pci_iounmap(i32, i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @radeon_debugfs_remove_files(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
