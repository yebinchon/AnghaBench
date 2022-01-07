; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raid1_add_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raid1_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i64, i64, %struct.r1conf* }
%struct.r1conf = type { i32, i64, i32, %struct.raid1_info* }
%struct.raid1_info = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32, i32, i64, i32, i32 }
%struct.request_queue = type { i64 }

@EEXIST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@Unmerged = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @raid1_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid1_add_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.r1conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.raid1_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.request_queue*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %13 = load %struct.mddev*, %struct.mddev** %4, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 4
  %15 = load %struct.r1conf*, %struct.r1conf** %14, align 8
  store %struct.r1conf* %15, %struct.r1conf** %6, align 8
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %19 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  %22 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.request_queue* @bdev_get_queue(i32 %24)
  store %struct.request_queue* %25, %struct.request_queue** %12, align 8
  %26 = load %struct.mddev*, %struct.mddev** %4, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %30 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %200

36:                                               ; preds = %2
  %37 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %38 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %47 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* @Unmerged, align 4
  %52 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %53 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %52, i32 0, i32 4
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.mddev*, %struct.mddev** %4, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %153, %57
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %156

63:                                               ; preds = %59
  %64 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %65 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %64, i32 0, i32 3
  %66 = load %struct.raid1_info*, %struct.raid1_info** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %66, i64 %68
  store %struct.raid1_info* %69, %struct.raid1_info** %9, align 8
  %70 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %71 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = icmp ne %struct.TYPE_2__* %72, null
  br i1 %73, label %110, label %74

74:                                               ; preds = %63
  %75 = load %struct.mddev*, %struct.mddev** %4, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.mddev*, %struct.mddev** %4, align 8
  %81 = getelementptr inbounds %struct.mddev, %struct.mddev* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %84 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %87 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 9
  %90 = call i32 @disk_stack_limits(i64 %82, i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %79, %74
  %92 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %93 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %96 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %7, align 4
  %97 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %98 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %103 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %91
  %105 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %106 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %109 = call i32 @rcu_assign_pointer(%struct.TYPE_2__* %107, %struct.md_rdev* %108)
  br label %156

110:                                              ; preds = %63
  %111 = load i32, i32* @WantReplacement, align 4
  %112 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %113 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i64 @test_bit(i32 %111, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %152

118:                                              ; preds = %110
  %119 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %120 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %121 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %119, i64 %123
  %125 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = icmp eq %struct.TYPE_2__* %126, null
  br i1 %127, label %128, label %152

128:                                              ; preds = %118
  %129 = load i32, i32* @In_sync, align 4
  %130 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %131 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %130, i32 0, i32 4
  %132 = call i32 @clear_bit(i32 %129, i32* %131)
  %133 = load i32, i32* @Replacement, align 4
  %134 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %135 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %134, i32 0, i32 4
  %136 = call i32 @set_bit(i32 %133, i32* %135)
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %139 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  store i32 0, i32* %7, align 4
  %140 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %141 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %140, i32 0, i32 2
  store i32 1, i32* %141, align 8
  %142 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %143 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %144 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %142, i64 %146
  %148 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %151 = call i32 @rcu_assign_pointer(%struct.TYPE_2__* %149, %struct.md_rdev* %150)
  br label %156

152:                                              ; preds = %118, %110
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %59

156:                                              ; preds = %128, %104, %59
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %156
  %160 = load i32, i32* @Unmerged, align 4
  %161 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %162 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %161, i32 0, i32 4
  %163 = call i64 @test_bit(i32 %160, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = call i32 (...) @synchronize_sched()
  %167 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %168 = call i32 @freeze_array(%struct.r1conf* %167, i32 0)
  %169 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %170 = call i32 @unfreeze_array(%struct.r1conf* %169)
  %171 = load i32, i32* @Unmerged, align 4
  %172 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %173 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %172, i32 0, i32 4
  %174 = call i32 @clear_bit(i32 %171, i32* %173)
  br label %175

175:                                              ; preds = %165, %159, %156
  %176 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %177 = load %struct.mddev*, %struct.mddev** %4, align 8
  %178 = call i32 @md_integrity_add_rdev(%struct.md_rdev* %176, %struct.mddev* %177)
  %179 = load %struct.mddev*, %struct.mddev** %4, align 8
  %180 = getelementptr inbounds %struct.mddev, %struct.mddev* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %175
  %184 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %185 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call %struct.request_queue* @bdev_get_queue(i32 %186)
  %188 = call i64 @blk_queue_discard(%struct.request_queue* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %192 = load %struct.mddev*, %struct.mddev** %4, align 8
  %193 = getelementptr inbounds %struct.mddev, %struct.mddev* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @queue_flag_set_unlocked(i32 %191, i64 %194)
  br label %196

196:                                              ; preds = %190, %183, %175
  %197 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %198 = call i32 @print_conf(%struct.r1conf* %197)
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %196, %33
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @disk_stack_limits(i64, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.TYPE_2__*, %struct.md_rdev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @synchronize_sched(...) #1

declare dso_local i32 @freeze_array(%struct.r1conf*, i32) #1

declare dso_local i32 @unfreeze_array(%struct.r1conf*) #1

declare dso_local i32 @md_integrity_add_rdev(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i64 @blk_queue_discard(%struct.request_queue*) #1

declare dso_local i32 @queue_flag_set_unlocked(i32, i64) #1

declare dso_local i32 @print_conf(%struct.r1conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
