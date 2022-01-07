; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_set_pool_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_set_pool_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { %struct.TYPE_5__, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.pool_c* }
%struct.pool_c = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"%s: unable to switch pool to write mode until repaired.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@process_bio_fail = common dso_local global i8* null, align 8
@process_prepared_mapping_fail = common dso_local global i8* null, align 8
@process_prepared_discard_fail = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@process_bio_read_only = common dso_local global i8* null, align 8
@process_bio_success = common dso_local global i8* null, align 8
@process_prepared_discard_passdown = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"out-of-data-space\00", align 1
@process_discard = common dso_local global i8* null, align 8
@process_prepared_mapping = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@process_bio = common dso_local global i8* null, align 8
@process_prepared_discard = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*, i32)* @set_pool_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pool_mode(%struct.pool* %0, i32 %1) #0 {
  %3 = alloca %struct.pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pool_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pool* %0, %struct.pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pool*, %struct.pool** %3, align 8
  %9 = getelementptr inbounds %struct.pool, %struct.pool* %8, i32 0, i32 7
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.pool_c*, %struct.pool_c** %11, align 8
  store %struct.pool_c* %12, %struct.pool_c** %5, align 8
  %13 = load %struct.pool*, %struct.pool** %3, align 8
  %14 = getelementptr inbounds %struct.pool, %struct.pool* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dm_pool_metadata_needs_check(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.pool*, %struct.pool** %3, align 8
  %18 = call i32 @get_pool_mode(%struct.pool* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.pool*, %struct.pool** %3, align 8
  %26 = getelementptr inbounds %struct.pool, %struct.pool* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dm_device_name(i32 %27)
  %29 = call i32 @DMERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %24
  store i32 129, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %33
  br label %37

37:                                               ; preds = %36, %21, %2
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 131
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %4, align 4
  switch i32 %43, label %140 [
    i32 131, label %44
    i32 129, label %70
    i32 130, label %96
    i32 128, label %116
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.pool*, %struct.pool** %3, align 8
  %50 = call i32 @notify_of_pool_mode_change(%struct.pool* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.pool*, %struct.pool** %3, align 8
  %53 = getelementptr inbounds %struct.pool, %struct.pool* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dm_pool_metadata_read_only(i32 %54)
  %56 = load i8*, i8** @process_bio_fail, align 8
  %57 = load %struct.pool*, %struct.pool** %3, align 8
  %58 = getelementptr inbounds %struct.pool, %struct.pool* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @process_bio_fail, align 8
  %60 = load %struct.pool*, %struct.pool** %3, align 8
  %61 = getelementptr inbounds %struct.pool, %struct.pool* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @process_prepared_mapping_fail, align 8
  %63 = load %struct.pool*, %struct.pool** %3, align 8
  %64 = getelementptr inbounds %struct.pool, %struct.pool* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @process_prepared_discard_fail, align 8
  %66 = load %struct.pool*, %struct.pool** %3, align 8
  %67 = getelementptr inbounds %struct.pool, %struct.pool* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.pool*, %struct.pool** %3, align 8
  %69 = call i32 @error_retry_list(%struct.pool* %68)
  br label %140

70:                                               ; preds = %42
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.pool*, %struct.pool** %3, align 8
  %76 = call i32 @notify_of_pool_mode_change(%struct.pool* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %70
  %78 = load %struct.pool*, %struct.pool** %3, align 8
  %79 = getelementptr inbounds %struct.pool, %struct.pool* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dm_pool_metadata_read_only(i32 %80)
  %82 = load i8*, i8** @process_bio_read_only, align 8
  %83 = load %struct.pool*, %struct.pool** %3, align 8
  %84 = getelementptr inbounds %struct.pool, %struct.pool* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @process_bio_success, align 8
  %86 = load %struct.pool*, %struct.pool** %3, align 8
  %87 = getelementptr inbounds %struct.pool, %struct.pool* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @process_prepared_mapping_fail, align 8
  %89 = load %struct.pool*, %struct.pool** %3, align 8
  %90 = getelementptr inbounds %struct.pool, %struct.pool* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @process_prepared_discard_passdown, align 8
  %92 = load %struct.pool*, %struct.pool** %3, align 8
  %93 = getelementptr inbounds %struct.pool, %struct.pool* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.pool*, %struct.pool** %3, align 8
  %95 = call i32 @error_retry_list(%struct.pool* %94)
  br label %140

96:                                               ; preds = %42
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.pool*, %struct.pool** %3, align 8
  %102 = call i32 @notify_of_pool_mode_change(%struct.pool* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i8*, i8** @process_bio_read_only, align 8
  %105 = load %struct.pool*, %struct.pool** %3, align 8
  %106 = getelementptr inbounds %struct.pool, %struct.pool* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @process_discard, align 8
  %108 = load %struct.pool*, %struct.pool** %3, align 8
  %109 = getelementptr inbounds %struct.pool, %struct.pool* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @process_prepared_mapping, align 8
  %111 = load %struct.pool*, %struct.pool** %3, align 8
  %112 = getelementptr inbounds %struct.pool, %struct.pool* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** @process_prepared_discard_passdown, align 8
  %114 = load %struct.pool*, %struct.pool** %3, align 8
  %115 = getelementptr inbounds %struct.pool, %struct.pool* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  br label %140

116:                                              ; preds = %42
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.pool*, %struct.pool** %3, align 8
  %122 = call i32 @notify_of_pool_mode_change(%struct.pool* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %116
  %124 = load %struct.pool*, %struct.pool** %3, align 8
  %125 = getelementptr inbounds %struct.pool, %struct.pool* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dm_pool_metadata_read_write(i32 %126)
  %128 = load i8*, i8** @process_bio, align 8
  %129 = load %struct.pool*, %struct.pool** %3, align 8
  %130 = getelementptr inbounds %struct.pool, %struct.pool* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** @process_discard, align 8
  %132 = load %struct.pool*, %struct.pool** %3, align 8
  %133 = getelementptr inbounds %struct.pool, %struct.pool* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** @process_prepared_mapping, align 8
  %135 = load %struct.pool*, %struct.pool** %3, align 8
  %136 = getelementptr inbounds %struct.pool, %struct.pool* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @process_prepared_discard, align 8
  %138 = load %struct.pool*, %struct.pool** %3, align 8
  %139 = getelementptr inbounds %struct.pool, %struct.pool* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %42, %123, %103, %77, %51
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.pool*, %struct.pool** %3, align 8
  %143 = getelementptr inbounds %struct.pool, %struct.pool* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %147 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 4
  ret void
}

declare dso_local i32 @dm_pool_metadata_needs_check(i32) #1

declare dso_local i32 @get_pool_mode(%struct.pool*) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @dm_device_name(i32) #1

declare dso_local i32 @notify_of_pool_mode_change(%struct.pool*, i8*) #1

declare dso_local i32 @dm_pool_metadata_read_only(i32) #1

declare dso_local i32 @error_retry_list(%struct.pool*) #1

declare dso_local i32 @dm_pool_metadata_read_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
