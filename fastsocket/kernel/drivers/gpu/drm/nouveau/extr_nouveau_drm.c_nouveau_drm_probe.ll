; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.apertures_struct = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.nouveau_object = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"nouveaufb\00", align 1
@nouveau_config = common dso_local global i32 0, align 4
@nouveau_debug = common dso_local global i32 0, align 4
@driver = common dso_local global i32 0, align 4
@IORESOURCE_ROM_SHADOW = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @nouveau_drm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_drm_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.apertures_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = call %struct.apertures_struct* @alloc_apertures(i32 3)
  store %struct.apertures_struct* %10, %struct.apertures_struct** %7, align 8
  %11 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %12 = icmp ne %struct.apertures_struct* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %125

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i8* @pci_resource_start(%struct.pci_dev* %17, i32 1)
  %19 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %20 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i8* %18, i8** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i8* @pci_resource_len(%struct.pci_dev* %24, i32 1)
  %26 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %27 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i8* %25, i8** %30, align 8
  %31 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %32 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i8* @pci_resource_len(%struct.pci_dev* %33, i32 2)
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %16
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i8* @pci_resource_start(%struct.pci_dev* %37, i32 2)
  %39 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %40 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %43 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %38, i8** %47, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i8* @pci_resource_len(%struct.pci_dev* %48, i32 2)
  %50 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %51 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %54 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i8* %49, i8** %58, align 8
  %59 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %60 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %36, %16
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i8* @pci_resource_len(%struct.pci_dev* %64, i32 3)
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i8* @pci_resource_start(%struct.pci_dev* %68, i32 3)
  %70 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %71 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %74 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i8* %69, i8** %78, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = call i8* @pci_resource_len(%struct.pci_dev* %79, i32 3)
  %81 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %82 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %85 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i8* %80, i8** %89, align 8
  %90 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %91 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %67, %63
  %95 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @remove_conflicting_framebuffers(%struct.apertures_struct* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.apertures_struct*, %struct.apertures_struct** %7, align 8
  %99 = call i32 @kfree(%struct.apertures_struct* %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = call i32 @nouveau_name(%struct.pci_dev* %101)
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = call i32 @pci_name(%struct.pci_dev* %103)
  %105 = load i32, i32* @nouveau_config, align 4
  %106 = load i32, i32* @nouveau_debug, align 4
  %107 = call i32 @nouveau_device_create(%struct.pci_dev* %100, i32 %102, i32 %104, i32 %105, i32 %106, %struct.nouveau_device** %6)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %94
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %125

112:                                              ; preds = %94
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = call i32 @pci_set_master(%struct.pci_dev* %113)
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %117 = call i32 @drm_get_pci_dev(%struct.pci_dev* %115, %struct.pci_device_id* %116, i32* @driver)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = bitcast %struct.nouveau_device** %6 to %struct.nouveau_object**
  %122 = call i32 @nouveau_object_ref(i32* null, %struct.nouveau_object** %121)
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %125

124:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %120, %110, %13
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.apertures_struct* @alloc_apertures(i32) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @remove_conflicting_framebuffers(%struct.apertures_struct*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.apertures_struct*) #1

declare dso_local i32 @nouveau_device_create(%struct.pci_dev*, i32, i32, i32, i32, %struct.nouveau_device**) #1

declare dso_local i32 @nouveau_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @drm_get_pci_dev(%struct.pci_dev*, %struct.pci_device_id*, i32*) #1

declare dso_local i32 @nouveau_object_ref(i32*, %struct.nouveau_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
