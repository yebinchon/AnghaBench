; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_raid_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_raid_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i64, i32, %struct.raid_set* }
%struct.raid_set = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.raid_type = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Too few arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unrecognised raid_type\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Cannot understand number of RAID parameters\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Arguments do not agree with counts given\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Cannot understand number of raid devices\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Supplied RAID devices does not match the count given\00", align 1
@super_sync = common dso_local global i32 0, align 4
@do_table_event = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Fail to run raid array\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Array size does not match requested target length\00", align 1
@raid_is_congested = common dso_local global i32 0, align 4
@raid_unplug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @raid_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.raid_type*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.raid_set*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store %struct.raid_set* null, %struct.raid_set** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %17 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %208

20:                                               ; preds = %3
  %21 = load i8**, i8*** %7, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call %struct.raid_type* @get_raid_type(i8* %23)
  store %struct.raid_type* %24, %struct.raid_type** %9, align 8
  %25 = load %struct.raid_type*, %struct.raid_type** %9, align 8
  %26 = icmp ne %struct.raid_type* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %29 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 8
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %208

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %7, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @kstrtoul(i8* %39, i32 10, i64* %10)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %44 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %208

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %6, align 4
  %50 = load i8**, i8*** %7, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %59 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8** %59, align 8
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %208

62:                                               ; preds = %47
  %63 = load i8**, i8*** %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @kstrtoul(i8* %66, i32 10, i64* %11)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @INT_MAX, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69, %62
  %74 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %75 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %75, align 8
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %208

78:                                               ; preds = %69
  %79 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %80 = load %struct.raid_type*, %struct.raid_type** %9, align 8
  %81 = load i64, i64* %11, align 8
  %82 = trunc i64 %81 to i32
  %83 = call %struct.raid_set* @context_alloc(%struct.dm_target* %79, %struct.raid_type* %80, i32 %82)
  store %struct.raid_set* %83, %struct.raid_set** %12, align 8
  %84 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %85 = call i64 @IS_ERR(%struct.raid_set* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %89 = call i32 @PTR_ERR(%struct.raid_set* %88)
  store i32 %89, i32* %4, align 4
  br label %208

90:                                               ; preds = %78
  %91 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %92 = load i8**, i8*** %7, align 8
  %93 = load i64, i64* %10, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @parse_raid_params(%struct.raid_set* %91, i8** %92, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %204

99:                                               ; preds = %90
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, 1
  %104 = load i32, i32* %6, align 4
  %105 = zext i32 %104 to i64
  %106 = sub i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %6, align 4
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, 1
  %110 = load i8**, i8*** %7, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 %109
  store i8** %111, i8*** %7, align 8
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %11, align 8
  %115 = mul i64 %114, 2
  %116 = icmp ne i64 %113, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %99
  %118 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %119 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8** %119, align 8
  br label %204

120:                                              ; preds = %99
  %121 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %122 = load i8**, i8*** %7, align 8
  %123 = call i32 @dev_parms(%struct.raid_set* %121, i8** %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %204

127:                                              ; preds = %120
  %128 = load i32, i32* @super_sync, align 4
  %129 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %130 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  store i32 %128, i32* %131, align 4
  %132 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %133 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %134 = call i32 @analyse_superblocks(%struct.dm_target* %132, %struct.raid_set* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %204

138:                                              ; preds = %127
  %139 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %140 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i32, i32* @do_table_event, align 4
  %143 = call i32 @INIT_WORK(i32* %141, i32 %142)
  %144 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %145 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %146 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %145, i32 0, i32 4
  store %struct.raid_set* %144, %struct.raid_set** %146, align 8
  %147 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %148 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %147, i32 0, i32 1
  store i32 1, i32* %148, align 8
  %149 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %150 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = call i32 @mutex_lock(i32* %151)
  %153 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %154 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %153, i32 0, i32 0
  %155 = call i32 @md_run(%struct.TYPE_5__* %154)
  store i32 %155, i32* %8, align 4
  %156 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %157 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store i64 0, i64* %158, align 8
  %159 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %160 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %138
  %166 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %167 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %166, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8** %167, align 8
  br label %204

168:                                              ; preds = %138
  %169 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %170 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %173 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %171, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %168
  %178 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %179 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %178, i32 0, i32 0
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8** %179, align 8
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %8, align 4
  br label %200

182:                                              ; preds = %168
  %183 = load i32, i32* @raid_is_congested, align 4
  %184 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %185 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* @raid_unplug, align 4
  %188 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %189 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 8
  %191 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %192 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %195 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %194, i32 0, i32 1
  %196 = call i32 @dm_table_add_target_callbacks(i32 %193, %struct.TYPE_6__* %195)
  %197 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %198 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %197, i32 0, i32 0
  %199 = call i32 @mddev_suspend(%struct.TYPE_5__* %198)
  store i32 0, i32* %4, align 4
  br label %208

200:                                              ; preds = %177
  %201 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %202 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %201, i32 0, i32 0
  %203 = call i32 @md_stop(%struct.TYPE_5__* %202)
  br label %204

204:                                              ; preds = %200, %165, %137, %126, %117, %98
  %205 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %206 = call i32 @context_free(%struct.raid_set* %205)
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %204, %182, %87, %73, %57, %42, %27, %15
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local %struct.raid_type* @get_raid_type(i8*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local %struct.raid_set* @context_alloc(%struct.dm_target*, %struct.raid_type*, i32) #1

declare dso_local i64 @IS_ERR(%struct.raid_set*) #1

declare dso_local i32 @PTR_ERR(%struct.raid_set*) #1

declare dso_local i32 @parse_raid_params(%struct.raid_set*, i8**, i32) #1

declare dso_local i32 @dev_parms(%struct.raid_set*, i8**) #1

declare dso_local i32 @analyse_superblocks(%struct.dm_target*, %struct.raid_set*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @md_run(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dm_table_add_target_callbacks(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mddev_suspend(%struct.TYPE_5__*) #1

declare dso_local i32 @md_stop(%struct.TYPE_5__*) #1

declare dso_local i32 @context_free(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
