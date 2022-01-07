; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_multipath_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_multipath_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, i64 }
%struct.dm_dev = type { i32 }
%struct.multipath = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"queue_if_no_path\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fail_if_no_path\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unrecognised multipath message received.\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"disable_group\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"enable_group\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"switch_group\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"reinstate_path\00", align 1
@reinstate_path = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"fail_path\00", align 1
@fail_path = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"message: error getting device %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @multipath_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_message(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_dev*, align 8
  %9 = alloca %struct.multipath*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.multipath*
  store %struct.multipath* %16, %struct.multipath** %9, align 8
  %17 = load %struct.multipath*, %struct.multipath** %9, align 8
  %18 = getelementptr inbounds %struct.multipath, %struct.multipath* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %21 = call i64 @dm_suspended(%struct.dm_target* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %137

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcasecmp(i8* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load %struct.multipath*, %struct.multipath** %9, align 8
  %37 = call i32 @queue_if_no_path(%struct.multipath* %36, i32 1, i32 0)
  store i32 %37, i32* %7, align 4
  br label %137

38:                                               ; preds = %29
  %39 = load i8**, i8*** %6, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcasecmp(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load %struct.multipath*, %struct.multipath** %9, align 8
  %46 = call i32 @queue_if_no_path(%struct.multipath* %45, i32 0, i32 0)
  store i32 %46, i32* %7, align 4
  br label %137

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %137

54:                                               ; preds = %49
  %55 = load i8**, i8*** %6, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcasecmp(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.multipath*, %struct.multipath** %9, align 8
  %62 = load i8**, i8*** %6, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @bypass_pg_num(%struct.multipath* %61, i8* %64, i32 1)
  store i32 %65, i32* %7, align 4
  br label %137

66:                                               ; preds = %54
  %67 = load i8**, i8*** %6, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcasecmp(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.multipath*, %struct.multipath** %9, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @bypass_pg_num(%struct.multipath* %73, i8* %76, i32 0)
  store i32 %77, i32* %7, align 4
  br label %137

78:                                               ; preds = %66
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcasecmp(i8* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.multipath*, %struct.multipath** %9, align 8
  %86 = load i8**, i8*** %6, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @switch_pg_num(%struct.multipath* %85, i8* %88)
  store i32 %89, i32* %7, align 4
  br label %137

90:                                               ; preds = %78
  %91 = load i8**, i8*** %6, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcasecmp(i8* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* @reinstate_path, align 4
  store i32 %97, i32* %10, align 4
  br label %109

98:                                               ; preds = %90
  %99 = load i8**, i8*** %6, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcasecmp(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @fail_path, align 4
  store i32 %105, i32* %10, align 4
  br label %108

106:                                              ; preds = %98
  %107 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %137

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108, %96
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %114 = load i8**, i8*** %6, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %118 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dm_table_get_mode(i32 %119)
  %121 = call i32 @dm_get_device(%struct.dm_target* %113, i8* %116, i32 %120, %struct.dm_dev** %8)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %112
  %125 = load i8**, i8*** %6, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %127)
  br label %137

129:                                              ; preds = %112
  %130 = load %struct.multipath*, %struct.multipath** %9, align 8
  %131 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @action_dev(%struct.multipath* %130, %struct.dm_dev* %131, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %135 = load %struct.dm_dev*, %struct.dm_dev** %8, align 8
  %136 = call i32 @dm_put_device(%struct.dm_target* %134, %struct.dm_dev* %135)
  br label %137

137:                                              ; preds = %129, %124, %106, %84, %72, %60, %52, %44, %35, %23
  %138 = load %struct.multipath*, %struct.multipath** %9, align 8
  %139 = getelementptr inbounds %struct.multipath, %struct.multipath* %138, i32 0, i32 0
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dm_suspended(%struct.dm_target*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @queue_if_no_path(%struct.multipath*, i32, i32) #1

declare dso_local i32 @DMWARN(i8*, ...) #1

declare dso_local i32 @bypass_pg_num(%struct.multipath*, i8*, i32) #1

declare dso_local i32 @switch_pg_num(%struct.multipath*, i8*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, %struct.dm_dev**) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @action_dev(%struct.multipath*, %struct.dm_dev*, i32) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.dm_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
