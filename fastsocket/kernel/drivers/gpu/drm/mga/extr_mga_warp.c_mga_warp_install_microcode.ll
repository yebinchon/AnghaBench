; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_warp.c_mga_warp_install_microcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_warp.c_mga_warp_install_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i64, i32 }
%struct.platform_device = type { i32 }
%struct.firmware = type { i64 }
%struct.ihex_binrec = type { i32, i32 }

@FIRMWARE_G400 = common dso_local global i8* null, align 8
@MGA_MAX_G400_PIPES = common dso_local global i32 0, align 4
@FIRMWARE_G200 = common dso_local global i8* null, align 8
@MGA_MAX_G200_PIPES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mga_warp\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"mga: Failed to register microcode\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"mga: Failed to load microcode \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"mga: Invalid microcode \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"MGA ucode size = %d bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"microcode too large! (%u > %lu)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c" pcbase = 0x%08lx  vcbase = %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mga_warp_install_microcode(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.ihex_binrec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  store %struct.firmware* null, %struct.firmware** %8, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %35 [
    i32 129, label %29
    i32 128, label %29
    i32 130, label %32
  ]

29:                                               ; preds = %1, %1
  %30 = load i8*, i8** @FIRMWARE_G400, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* @MGA_MAX_G400_PIPES, align 4
  store i32 %31, i32* %11, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load i8*, i8** @FIRMWARE_G200, align 8
  store i8* %33, i8** %6, align 8
  %34 = load i32, i32* @MGA_MAX_G200_PIPES, align 4
  store i32 %34, i32* %11, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %166

38:                                               ; preds = %32, %29
  %39 = call %struct.platform_device* @platform_device_register_simple(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32 0)
  store %struct.platform_device* %39, %struct.platform_device** %7, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %41 = call i64 @IS_ERR(%struct.platform_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %46 = call i32 @PTR_ERR(%struct.platform_device* %45)
  store i32 %46, i32* %2, align 4
  br label %166

47:                                               ; preds = %38
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @request_ihex_firmware(%struct.firmware** %8, i8* %48, i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %53 = call i32 @platform_device_unregister(%struct.platform_device* %52)
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %2, align 4
  br label %166

60:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %61 = load %struct.firmware*, %struct.firmware** %8, align 8
  %62 = getelementptr inbounds %struct.firmware, %struct.firmware* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.ihex_binrec*
  store %struct.ihex_binrec* %64, %struct.ihex_binrec** %9, align 8
  br label %65

65:                                               ; preds = %78, %60
  %66 = load %struct.ihex_binrec*, %struct.ihex_binrec** %9, align 8
  %67 = icmp ne %struct.ihex_binrec* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.ihex_binrec*, %struct.ihex_binrec** %9, align 8
  %70 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be16_to_cpu(i32 %71)
  %73 = call i32 @WARP_UCODE_SIZE(i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %68
  %79 = load %struct.ihex_binrec*, %struct.ihex_binrec** %9, align 8
  %80 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %79)
  store %struct.ihex_binrec* %80, %struct.ihex_binrec** %9, align 8
  br label %65

81:                                               ; preds = %65
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  br label %162

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @PAGE_ALIGN(i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ugt i32 %96, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %90
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %104, i32 %109)
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %13, align 4
  br label %162

113:                                              ; preds = %90
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = call i32 @memset(i64* %116, i32 0, i32 8)
  store i32 0, i32* %12, align 4
  %118 = load %struct.firmware*, %struct.firmware** %8, align 8
  %119 = getelementptr inbounds %struct.firmware, %struct.firmware* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to %struct.ihex_binrec*
  store %struct.ihex_binrec* %121, %struct.ihex_binrec** %9, align 8
  br label %122

122:                                              ; preds = %158, %113
  %123 = load %struct.ihex_binrec*, %struct.ihex_binrec** %9, align 8
  %124 = icmp ne %struct.ihex_binrec* %123, null
  br i1 %124, label %125, label %161

125:                                              ; preds = %122
  %126 = load i64, i64* %5, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %126, i8* %127)
  %129 = load i64, i64* %5, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %129, i64* %135, align 8
  %136 = load %struct.ihex_binrec*, %struct.ihex_binrec** %9, align 8
  %137 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @be16_to_cpu(i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @WARP_UCODE_SIZE(i32 %140)
  store i32 %141, i32* %15, align 4
  %142 = load i8*, i8** %4, align 8
  %143 = load %struct.ihex_binrec*, %struct.ihex_binrec** %9, align 8
  %144 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @memcpy(i8* %142, i32 %145, i32 %146)
  %148 = load i32, i32* %15, align 4
  %149 = zext i32 %148 to i64
  %150 = load i64, i64* %5, align 8
  %151 = add i64 %150, %149
  store i64 %151, i64* %5, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load i8*, i8** %4, align 8
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %4, align 8
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %125
  %159 = load %struct.ihex_binrec*, %struct.ihex_binrec** %9, align 8
  %160 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %159)
  store %struct.ihex_binrec* %160, %struct.ihex_binrec** %9, align 8
  br label %122

161:                                              ; preds = %122
  br label %162

162:                                              ; preds = %161, %103, %85
  %163 = load %struct.firmware*, %struct.firmware** %8, align 8
  %164 = call i32 @release_firmware(%struct.firmware* %163)
  %165 = load i32, i32* %13, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %162, %56, %43, %35
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.platform_device* @platform_device_register_simple(i8*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @request_ihex_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @WARP_UCODE_SIZE(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
