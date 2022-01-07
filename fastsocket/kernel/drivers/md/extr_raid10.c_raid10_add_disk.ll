; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_add_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i64, i64, i64, %struct.r10conf* }
%struct.r10conf = type { i32, %struct.raid10_info*, %struct.TYPE_3__ }
%struct.raid10_info = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.md_rdev = type { i32, i32, i32, i32, i32 }
%struct.request_queue = type { i64 }

@EEXIST = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Unmerged = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @raid10_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid10_add_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.request_queue*, align 8
  %12 = alloca %struct.raid10_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %13 = load %struct.mddev*, %struct.mddev** %4, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 5
  %15 = load %struct.r10conf*, %struct.r10conf** %14, align 8
  store %struct.r10conf* %15, %struct.r10conf** %6, align 8
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %19 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %24 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.request_queue* @bdev_get_queue(i32 %25)
  store %struct.request_queue* %26, %struct.request_queue** %11, align 8
  %27 = load %struct.mddev*, %struct.mddev** %4, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MaxSector, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %257

35:                                               ; preds = %2
  %36 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %37 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %42 = call i32 @_enough(%struct.r10conf* %41, i32 1, i32 -1)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %257

47:                                               ; preds = %40, %35
  %48 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %49 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %54 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %58 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* @Unmerged, align 4
  %63 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 4
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load %struct.mddev*, %struct.mddev** %4, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %56
  %69 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %70 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %76 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %75, i32 0, i32 1
  %77 = load %struct.raid10_info*, %struct.raid10_info** %76, align 8
  %78 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %79 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %77, i64 %81
  %83 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = icmp eq %struct.TYPE_4__* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %88 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %8, align 4
  br label %92

90:                                               ; preds = %74, %68
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %90, %86
  br label %93

93:                                               ; preds = %210, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %213

97:                                               ; preds = %93
  %98 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %99 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %98, i32 0, i32 1
  %100 = load %struct.raid10_info*, %struct.raid10_info** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %100, i64 %102
  store %struct.raid10_info* %103, %struct.raid10_info** %12, align 8
  %104 = load %struct.raid10_info*, %struct.raid10_info** %12, align 8
  %105 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.mddev*, %struct.mddev** %4, align 8
  %108 = getelementptr inbounds %struct.mddev, %struct.mddev* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %210

112:                                              ; preds = %97
  %113 = load %struct.raid10_info*, %struct.raid10_info** %12, align 8
  %114 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = icmp ne %struct.TYPE_4__* %115, null
  br i1 %116, label %117, label %167

117:                                              ; preds = %112
  %118 = load i32, i32* @WantReplacement, align 4
  %119 = load %struct.raid10_info*, %struct.raid10_info** %12, align 8
  %120 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = call i64 @test_bit(i32 %118, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.raid10_info*, %struct.raid10_info** %12, align 8
  %127 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %126, i32 0, i32 3
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = icmp ne %struct.TYPE_4__* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %117
  br label %210

131:                                              ; preds = %125
  %132 = load i32, i32* @In_sync, align 4
  %133 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %134 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %133, i32 0, i32 4
  %135 = call i32 @clear_bit(i32 %132, i32* %134)
  %136 = load i32, i32* @Replacement, align 4
  %137 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %138 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %137, i32 0, i32 4
  %139 = call i32 @set_bit(i32 %136, i32* %138)
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %142 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  store i32 0, i32* %7, align 4
  %143 = load %struct.mddev*, %struct.mddev** %4, align 8
  %144 = getelementptr inbounds %struct.mddev, %struct.mddev* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %131
  %148 = load %struct.mddev*, %struct.mddev** %4, align 8
  %149 = getelementptr inbounds %struct.mddev, %struct.mddev* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %152 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %155 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 9
  %158 = call i32 @disk_stack_limits(i64 %150, i32 %153, i32 %157)
  br label %159

159:                                              ; preds = %147, %131
  %160 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %161 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load %struct.raid10_info*, %struct.raid10_info** %12, align 8
  %163 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %162, i32 0, i32 3
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %166 = call i32 @rcu_assign_pointer(%struct.TYPE_4__* %164, %struct.md_rdev* %165)
  br label %213

167:                                              ; preds = %112
  %168 = load %struct.mddev*, %struct.mddev** %4, align 8
  %169 = getelementptr inbounds %struct.mddev, %struct.mddev* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load %struct.mddev*, %struct.mddev** %4, align 8
  %174 = getelementptr inbounds %struct.mddev, %struct.mddev* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %177 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %180 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 9
  %183 = call i32 @disk_stack_limits(i64 %175, i32 %178, i32 %182)
  br label %184

184:                                              ; preds = %172, %167
  %185 = load %struct.raid10_info*, %struct.raid10_info** %12, align 8
  %186 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %185, i32 0, i32 2
  store i64 0, i64* %186, align 8
  %187 = load %struct.mddev*, %struct.mddev** %4, align 8
  %188 = getelementptr inbounds %struct.mddev, %struct.mddev* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = sub nsw i64 %189, 1
  %191 = load %struct.raid10_info*, %struct.raid10_info** %12, align 8
  %192 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %195 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  store i32 0, i32* %7, align 4
  %196 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %197 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %184
  %202 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %203 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %202, i32 0, i32 0
  store i32 1, i32* %203, align 8
  br label %204

204:                                              ; preds = %201, %184
  %205 = load %struct.raid10_info*, %struct.raid10_info** %12, align 8
  %206 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %205, i32 0, i32 1
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %209 = call i32 @rcu_assign_pointer(%struct.TYPE_4__* %207, %struct.md_rdev* %208)
  br label %213

210:                                              ; preds = %130, %111
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %93

213:                                              ; preds = %204, %159, %93
  %214 = load i32, i32* %7, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %213
  %217 = load i32, i32* @Unmerged, align 4
  %218 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %219 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %218, i32 0, i32 4
  %220 = call i64 @test_bit(i32 %217, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %216
  %223 = call i32 (...) @synchronize_sched()
  %224 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %225 = call i32 @freeze_array(%struct.r10conf* %224, i32 0)
  %226 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %227 = call i32 @unfreeze_array(%struct.r10conf* %226)
  %228 = load i32, i32* @Unmerged, align 4
  %229 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %230 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %229, i32 0, i32 4
  %231 = call i32 @clear_bit(i32 %228, i32* %230)
  br label %232

232:                                              ; preds = %222, %216, %213
  %233 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %234 = load %struct.mddev*, %struct.mddev** %4, align 8
  %235 = call i32 @md_integrity_add_rdev(%struct.md_rdev* %233, %struct.mddev* %234)
  %236 = load %struct.mddev*, %struct.mddev** %4, align 8
  %237 = getelementptr inbounds %struct.mddev, %struct.mddev* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %253

240:                                              ; preds = %232
  %241 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %242 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = call %struct.request_queue* @bdev_get_queue(i32 %243)
  %245 = call i64 @blk_queue_discard(%struct.request_queue* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %240
  %248 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %249 = load %struct.mddev*, %struct.mddev** %4, align 8
  %250 = getelementptr inbounds %struct.mddev, %struct.mddev* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @queue_flag_set_unlocked(i32 %248, i64 %251)
  br label %253

253:                                              ; preds = %247, %240, %232
  %254 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %255 = call i32 @print_conf(%struct.r10conf* %254)
  %256 = load i32, i32* %7, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %253, %44, %32
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @_enough(%struct.r10conf*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @disk_stack_limits(i64, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.TYPE_4__*, %struct.md_rdev*) #1

declare dso_local i32 @synchronize_sched(...) #1

declare dso_local i32 @freeze_array(%struct.r10conf*, i32) #1

declare dso_local i32 @unfreeze_array(%struct.r10conf*) #1

declare dso_local i32 @md_integrity_add_rdev(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i64 @blk_queue_discard(%struct.request_queue*) #1

declare dso_local i32 @queue_flag_set_unlocked(i32, i64) #1

declare dso_local i32 @print_conf(%struct.r10conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
