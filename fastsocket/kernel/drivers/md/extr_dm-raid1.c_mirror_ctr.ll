; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, i32, %struct.mirror_set* }
%struct.mirror_set = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_dirty_log*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@DM_KCOPYD_MAX_REGIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid number of mirrors\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Too few mirror arguments\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"kmirrord\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"couldn't start kmirrord\00", align 1
@do_mirror = common dso_local global i32 0, align 4
@trigger_event = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Too many mirror arguments\00", align 1
@dm_kcopyd_throttle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @mirror_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mirror_set*, align 8
  %13 = alloca %struct.dm_dirty_log*, align 8
  %14 = alloca i8, align 1
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %15 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i8**, i8*** %7, align 8
  %18 = call %struct.dm_dirty_log* @create_dirty_log(%struct.dm_target* %15, i32 %16, i8** %17, i32* %11)
  store %struct.dm_dirty_log* %18, %struct.dm_dirty_log** %13, align 8
  %19 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %20 = icmp ne %struct.dm_dirty_log* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %214

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  %26 = load i8**, i8*** %7, align 8
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  store i8** %28, i8*** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %24
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %9, i8* %14)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @DM_KCOPYD_MAX_REGIONS, align 4
  %46 = add nsw i32 %45, 1
  %47 = icmp ugt i32 %44, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43, %40, %34, %24
  %49 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %50 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %52 = call i32 @dm_dirty_log_destroy(%struct.dm_dirty_log* %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %214

55:                                               ; preds = %43
  %56 = load i8**, i8*** %7, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul i32 %61, 2
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %66 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %66, align 8
  %67 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %68 = call i32 @dm_dirty_log_destroy(%struct.dm_dirty_log* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %214

71:                                               ; preds = %55
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %74 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (%struct.dm_dirty_log*)*, i32 (%struct.dm_dirty_log*)** %76, align 8
  %78 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %79 = call i32 %77(%struct.dm_dirty_log* %78)
  %80 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %81 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %82 = call %struct.mirror_set* @alloc_context(i32 %72, i32 %79, %struct.dm_target* %80, %struct.dm_dirty_log* %81)
  store %struct.mirror_set* %82, %struct.mirror_set** %12, align 8
  %83 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %84 = icmp ne %struct.mirror_set* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %71
  %86 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %87 = call i32 @dm_dirty_log_destroy(%struct.dm_dirty_log* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %214

90:                                               ; preds = %71
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %114, %90
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %97 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i8**, i8*** %7, align 8
  %100 = call i32 @get_mirror(%struct.mirror_set* %96, %struct.dm_target* %97, i32 %98, i8** %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %105 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @free_context(%struct.mirror_set* %104, %struct.dm_target* %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %214

109:                                              ; preds = %95
  %110 = load i8**, i8*** %7, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  store i8** %111, i8*** %7, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sub i32 %112, 2
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %10, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %91

117:                                              ; preds = %91
  %118 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %119 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %120 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %119, i32 0, i32 4
  store %struct.mirror_set* %118, %struct.mirror_set** %120, align 8
  %121 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %122 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %123 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @dm_rh_get_region_size(i32 %124)
  %126 = call i32 @dm_set_target_max_io_len(%struct.dm_target* %121, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  br label %206

130:                                              ; preds = %117
  %131 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %132 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %131, i32 0, i32 1
  store i32 1, i32* %132, align 8
  %133 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %134 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %133, i32 0, i32 2
  store i32 1, i32* %134, align 4
  %135 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %136 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %135, i32 0, i32 3
  store i32 1, i32* %136, align 8
  %137 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %138 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %139 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %141 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %130
  %145 = call i32 @DMERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %8, align 4
  br label %206

148:                                              ; preds = %130
  %149 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %150 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %149, i32 0, i32 6
  %151 = load i32, i32* @do_mirror, align 4
  %152 = call i32 @INIT_WORK(i32* %150, i32 %151)
  %153 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %154 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %153, i32 0, i32 5
  %155 = call i32 @init_timer(i32* %154)
  %156 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %157 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %156, i32 0, i32 4
  store i64 0, i64* %157, align 8
  %158 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %159 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %158, i32 0, i32 3
  %160 = load i32, i32* @trigger_event, align 4
  %161 = call i32 @INIT_WORK(i32* %159, i32 %160)
  %162 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %163 = load i32, i32* %6, align 4
  %164 = load i8**, i8*** %7, align 8
  %165 = call i32 @parse_features(%struct.mirror_set* %162, i32 %163, i8** %164, i32* %11)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %148
  br label %201

169:                                              ; preds = %148
  %170 = load i32, i32* %11, align 4
  %171 = load i8**, i8*** %7, align 8
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds i8*, i8** %171, i64 %172
  store i8** %173, i8*** %7, align 8
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %6, align 4
  %176 = sub i32 %175, %174
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %169
  %180 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %181 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %180, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %181, align 8
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %8, align 4
  br label %201

184:                                              ; preds = %169
  %185 = call i32 @dm_kcopyd_client_create(i32* @dm_kcopyd_throttle)
  %186 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %187 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %189 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i64 @IS_ERR(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %184
  %194 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %195 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @PTR_ERR(i32 %196)
  store i32 %197, i32* %8, align 4
  br label %201

198:                                              ; preds = %184
  %199 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %200 = call i32 @wakeup_mirrord(%struct.mirror_set* %199)
  store i32 0, i32* %4, align 4
  br label %214

201:                                              ; preds = %193, %179, %168
  %202 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %203 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @destroy_workqueue(i32 %204)
  br label %206

206:                                              ; preds = %201, %144, %129
  %207 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %208 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %209 = load %struct.mirror_set*, %struct.mirror_set** %12, align 8
  %210 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @free_context(%struct.mirror_set* %207, %struct.dm_target* %208, i32 %211)
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %206, %198, %103, %85, %64, %48, %21
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local %struct.dm_dirty_log* @create_dirty_log(%struct.dm_target*, i32, i8**, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @dm_dirty_log_destroy(%struct.dm_dirty_log*) #1

declare dso_local %struct.mirror_set* @alloc_context(i32, i32, %struct.dm_target*, %struct.dm_dirty_log*) #1

declare dso_local i32 @get_mirror(%struct.mirror_set*, %struct.dm_target*, i32, i8**) #1

declare dso_local i32 @free_context(%struct.mirror_set*, %struct.dm_target*, i32) #1

declare dso_local i32 @dm_set_target_max_io_len(%struct.dm_target*, i32) #1

declare dso_local i32 @dm_rh_get_region_size(i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @parse_features(%struct.mirror_set*, i32, i8**, i32*) #1

declare dso_local i32 @dm_kcopyd_client_create(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wakeup_mirrord(%struct.mirror_set*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
