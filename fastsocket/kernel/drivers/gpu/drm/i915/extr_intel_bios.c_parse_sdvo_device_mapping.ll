; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_sdvo_device_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_sdvo_device_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.sdvo_device_mapping* }
%struct.sdvo_device_mapping = type { i32, i32, i64, i32, i32, i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_general_definitions = type { i32, %struct.child_device_config* }
%struct.child_device_config = type { i64, i32, i64, i32, i32, i32, i32 }

@BDB_GENERAL_DEFINITIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"No general definition block is found, unable to construct sdvo mapping.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"different child size is found. Invalid.\0A\00", align 1
@SLAVE_ADDR1 = common dso_local global i64 0, align 8
@SLAVE_ADDR2 = common dso_local global i64 0, align 8
@DEVICE_PORT_DVOB = common dso_local global i32 0, align 4
@DEVICE_PORT_DVOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Incorrect SDVO port. Skip it\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"the SDVO device with slave addr %2x is found on %s port\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SDVOB\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SDVOC\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"SDVO device: dvo=%x, addr=%x, wiring=%d, ddc_pin=%d, i2c_pin=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Maybe one SDVO port is shared by two SDVO device.\0A\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"there exists the slave2_addr. Maybe this is a SDVO device with multiple inputs.\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"No SDVO device info is found in VBT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_sdvo_device_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_sdvo_device_mapping(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.sdvo_device_mapping*, align 8
  %6 = alloca %struct.bdb_general_definitions*, align 8
  %7 = alloca %struct.child_device_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %12 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %13 = load i32, i32* @BDB_GENERAL_DEFINITIONS, align 4
  %14 = call %struct.bdb_general_definitions* @find_section(%struct.bdb_header* %12, i32 %13)
  store %struct.bdb_general_definitions* %14, %struct.bdb_general_definitions** %6, align 8
  %15 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %6, align 8
  %16 = icmp ne %struct.bdb_general_definitions* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  br label %168

19:                                               ; preds = %2
  %20 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %6, align 8
  %21 = getelementptr inbounds %struct.bdb_general_definitions, %struct.bdb_general_definitions* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 40
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %168

27:                                               ; preds = %19
  %28 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %6, align 8
  %29 = call i32 @get_blocksize(%struct.bdb_general_definitions* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, 16
  %33 = udiv i64 %32, 40
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %159, %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %162

39:                                               ; preds = %35
  %40 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %6, align 8
  %41 = getelementptr inbounds %struct.bdb_general_definitions, %struct.bdb_general_definitions* %40, i32 0, i32 1
  %42 = load %struct.child_device_config*, %struct.child_device_config** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %42, i64 %44
  store %struct.child_device_config* %45, %struct.child_device_config** %7, align 8
  %46 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %47 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %159

51:                                               ; preds = %39
  %52 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %53 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SLAVE_ADDR1, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %59 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SLAVE_ADDR2, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %159

64:                                               ; preds = %57, %51
  %65 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %66 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DEVICE_PORT_DVOB, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %72 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DEVICE_PORT_DVOC, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %159

78:                                               ; preds = %70, %64
  %79 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %80 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %83 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @DEVICE_PORT_DVOB, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %89 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %81, i8* %88)
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 0
  %92 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %91, align 8
  %93 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %94 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %92, i64 %97
  store %struct.sdvo_device_mapping* %98, %struct.sdvo_device_mapping** %5, align 8
  %99 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %100 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %147, label %103

103:                                              ; preds = %78
  %104 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %105 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %108 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %110 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %113 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %115 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %118 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %120 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %123 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %125 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %128 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %130 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %132 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %135 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %138 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %141 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %144 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %133, i64 %136, i32 %139, i32 %142, i32 %145)
  br label %149

147:                                              ; preds = %78
  %148 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %103
  %150 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %151 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %149
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %156, %76, %63, %50
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %35

162:                                              ; preds = %35
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %162
  br label %168

168:                                              ; preds = %167, %25, %17
  ret void
}

declare dso_local %struct.bdb_general_definitions* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @get_blocksize(%struct.bdb_general_definitions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
