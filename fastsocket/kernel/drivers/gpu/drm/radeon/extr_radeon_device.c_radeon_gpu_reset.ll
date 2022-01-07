; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_gpu_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_gpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Saved %d dwords of commands on ring %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"GPU reset succeeded, trying to resume\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ib ring test failed (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"GPU reset failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gpu_reset(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %10 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32*, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = call i32 @down_write(i32* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i32 @radeon_save_bios_scratch_regs(%struct.radeon_device* %20)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @ttm_bo_lock_delayed_workqueue(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = call i32 @radeon_suspend(%struct.radeon_device* %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %63, %1
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %16, i64 %41
  %43 = call i32 @radeon_ring_backup(%struct.radeon_device* %33, i32* %39, i32** %42)
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %13, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %13, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %13, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i32, i8*, ...) @dev_info(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %52, %32
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %28

66:                                               ; preds = %28
  br label %67

67:                                               ; preds = %128, %66
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = call i32 @radeon_asic_reset(%struct.radeon_device* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @dev_info(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = call i32 @radeon_resume(%struct.radeon_device* %77)
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = call i32 @radeon_restore_bios_scratch_regs(%struct.radeon_device* %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %133, label %84

84:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %112, %84
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %85
  %90 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %91 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %13, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %16, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @radeon_ring_restore(%struct.radeon_device* %90, i32* %96, i32 %100, i32* %104)
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %13, i64 %107
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %16, i64 %110
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %89
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %85

115:                                              ; preds = %85
  %116 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %117 = call i32 @radeon_ib_ring_tests(%struct.radeon_device* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  store i32 0, i32* %6, align 4
  %129 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %130 = call i32 @radeon_suspend(%struct.radeon_device* %129)
  br label %67

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %115
  br label %150

133:                                              ; preds = %79
  %134 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %135 = call i32 @radeon_fence_driver_force_completion(%struct.radeon_device* %134)
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %146, %133
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %16, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @kfree(i32* %144)
  br label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %136

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %149, %132
  %151 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @drm_helper_resume_force_mode(i32 %153)
  %155 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @ttm_bo_unlock_delayed_workqueue(i32* %157, i32 %158)
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %150
  %163 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @dev_info(i32 %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %167

167:                                              ; preds = %162, %150
  %168 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 0
  %170 = call i32 @up_write(i32* %169)
  %171 = load i32, i32* %8, align 4
  %172 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %172)
  ret i32 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @down_write(i32*) #2

declare dso_local i32 @radeon_save_bios_scratch_regs(%struct.radeon_device*) #2

declare dso_local i32 @ttm_bo_lock_delayed_workqueue(i32*) #2

declare dso_local i32 @radeon_suspend(%struct.radeon_device*) #2

declare dso_local i32 @radeon_ring_backup(%struct.radeon_device*, i32*, i32**) #2

declare dso_local i32 @dev_info(i32, i8*, ...) #2

declare dso_local i32 @radeon_asic_reset(%struct.radeon_device*) #2

declare dso_local i32 @radeon_resume(%struct.radeon_device*) #2

declare dso_local i32 @radeon_restore_bios_scratch_regs(%struct.radeon_device*) #2

declare dso_local i32 @radeon_ring_restore(%struct.radeon_device*, i32*, i32, i32*) #2

declare dso_local i32 @radeon_ib_ring_tests(%struct.radeon_device*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @radeon_fence_driver_force_completion(%struct.radeon_device*) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @drm_helper_resume_force_mode(i32) #2

declare dso_local i32 @ttm_bo_unlock_delayed_workqueue(i32*, i32) #2

declare dso_local i32 @up_write(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
