; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_base.c_nouveau_bios_shadow_acpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_base.c_nouveau_bios_shadow_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32*, i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_bios*)* @nouveau_bios_shadow_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_bios_shadow_acpi(%struct.nouveau_bios* %0) #0 {
  %2 = alloca %struct.nouveau_bios*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %2, align 8
  %7 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %8 = call %struct.TYPE_2__* @nv_device(%struct.nouveau_bios* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call i32 @nouveau_acpi_rom_supported(%struct.pci_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %16 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %121

17:                                               ; preds = %1
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %19 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %18, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i32 4096, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %24 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %26 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %17
  %30 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %31 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @nouveau_acpi_get_bios_chunk(i32* %32, i32 0, i32 4096)
  %34 = icmp eq i32 %33, 4096
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %37 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 512
  %42 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %43 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %35, %29
  %45 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %46 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  br label %49

49:                                               ; preds = %44, %17
  %50 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %51 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %121

55:                                               ; preds = %49
  %56 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %57 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kmalloc(i32 %58, i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %63 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %65 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %121

68:                                               ; preds = %55
  %69 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %70 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %73 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @nouveau_acpi_get_bios_chunk(i32* %71, i32 0, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %78 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %90, label %81

81:                                               ; preds = %68
  %82 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %83 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %86 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @nvbios_checksum(i32* %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %81, %68
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %115, %90
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %94 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %91
  %98 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %99 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %100, %101
  %103 = call i32 @min(i32 %102, i32 4096)
  store i32 %103, i32* %5, align 4
  %104 = load %struct.nouveau_bios*, %struct.nouveau_bios** %2, align 8
  %105 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @nouveau_acpi_get_bios_chunk(i32* %106, i32 %107, i32 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %97
  br label %119

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %91

119:                                              ; preds = %113, %91
  br label %120

120:                                              ; preds = %119, %81
  br label %121

121:                                              ; preds = %14, %54, %120, %55
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nouveau_bios*) #1

declare dso_local i32 @nouveau_acpi_rom_supported(%struct.pci_dev*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @nouveau_acpi_get_bios_chunk(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @nvbios_checksum(i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
