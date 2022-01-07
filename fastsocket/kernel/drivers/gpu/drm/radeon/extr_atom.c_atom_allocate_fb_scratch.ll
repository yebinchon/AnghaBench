; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atom.c_atom_allocate_fb_scratch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atom.c_atom_allocate_fb_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i32, i32, i64 }
%struct._ATOM_VRAM_USAGE_BY_FIRMWARE = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DATA = common dso_local global i32 0, align 4
@VRAM_UsageByFirmware = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"atom firmware requested %08x %dkb\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atom_allocate_fb_scratch(%struct.atom_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atom_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*, align 8
  store %struct.atom_context* %0, %struct.atom_context** %3, align 8
  %8 = load i32, i32* @DATA, align 4
  %9 = load i32, i32* @VRAM_UsageByFirmware, align 4
  %10 = call i32 @GetIndexIntoMasterTable(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @atom_parse_data_header(%struct.atom_context* %11, i32 %12, i32* null, i32* null, i32* null, i64* %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %1
  %16 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %17 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*
  store %struct._ATOM_VRAM_USAGE_BY_FIRMWARE* %21, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE** %7, align 8
  %22 = load %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE** %7, align 8
  %23 = getelementptr inbounds %struct._ATOM_VRAM_USAGE_BY_FIRMWARE, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = load %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE** %7, align 8
  %30 = getelementptr inbounds %struct._ATOM_VRAM_USAGE_BY_FIRMWARE, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %35)
  %37 = load %struct._ATOM_VRAM_USAGE_BY_FIRMWARE*, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE** %7, align 8
  %38 = getelementptr inbounds %struct._ATOM_VRAM_USAGE_BY_FIRMWARE, %struct._ATOM_VRAM_USAGE_BY_FIRMWARE* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = mul nsw i32 %43, 1024
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %15, %1
  %46 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %47 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 20480, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @kzalloc(i32 %52, i32 %53)
  %55 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %56 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %58 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %68

64:                                               ; preds = %51
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %67 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.atom_context*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
