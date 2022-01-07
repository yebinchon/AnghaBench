; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_parse_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_parse_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg = type { i32, i32, i8* }
%struct.dm_arg_set = type { i32 }
%struct.multipath = type { i32, i32, i32, %struct.dm_target* }
%struct.dm_target = type { i8* }

@parse_features._args = internal global [3 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.dm_arg { i32 1, i32 50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0) }, %struct.dm_arg { i32 0, i32 60000, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [31 x i8] c"invalid number of feature args\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"pg_init_retries must be between 1 and 50\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"pg_init_delay_msecs must be between 0 and 60000\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"queue_if_no_path\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"retain_attached_hw_handler\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"pg_init_retries\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"pg_init_delay_msecs\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Unrecognised multipath feature request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_arg_set*, %struct.multipath*)* @parse_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_features(%struct.dm_arg_set* %0, %struct.multipath* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_arg_set*, align 8
  %5 = alloca %struct.multipath*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_target*, align 8
  %9 = alloca i8*, align 8
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %4, align 8
  store %struct.multipath* %1, %struct.multipath** %5, align 8
  %10 = load %struct.multipath*, %struct.multipath** %5, align 8
  %11 = getelementptr inbounds %struct.multipath, %struct.multipath* %10, i32 0, i32 3
  %12 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  store %struct.dm_target* %12, %struct.dm_target** %8, align 8
  %13 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %14 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  %16 = call i32 @dm_read_arg_group(%struct.dm_arg* getelementptr inbounds ([3 x %struct.dm_arg], [3 x %struct.dm_arg]* @parse_features._args, i64 0, i64 0), %struct.dm_arg_set* %13, i32* %7, i8** %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %93

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %93

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %89, %26
  %28 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %29 = call i8* @dm_shift_arg(%struct.dm_arg_set* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, -1
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strcasecmp(i8* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load %struct.multipath*, %struct.multipath** %5, align 8
  %37 = call i32 @queue_if_no_path(%struct.multipath* %36, i32 1, i32 0)
  store i32 %37, i32* %6, align 4
  br label %82

38:                                               ; preds = %27
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @strcasecmp(i8* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load %struct.multipath*, %struct.multipath** %5, align 8
  %44 = getelementptr inbounds %struct.multipath, %struct.multipath* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %82

45:                                               ; preds = %38
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = icmp uge i32 %50, 1
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %54 = load %struct.multipath*, %struct.multipath** %5, align 8
  %55 = getelementptr inbounds %struct.multipath, %struct.multipath* %54, i32 0, i32 2
  %56 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %57 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %56, i32 0, i32 0
  %58 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([3 x %struct.dm_arg], [3 x %struct.dm_arg]* @parse_features._args, i64 0, i64 1), %struct.dm_arg_set* %53, i32* %55, i8** %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %82

61:                                               ; preds = %49, %45
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @strcasecmp(i8* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = icmp uge i32 %66, 1
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.dm_arg_set*, %struct.dm_arg_set** %4, align 8
  %70 = load %struct.multipath*, %struct.multipath** %5, align 8
  %71 = getelementptr inbounds %struct.multipath, %struct.multipath* %70, i32 0, i32 1
  %72 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %73 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %72, i32 0, i32 0
  %74 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([3 x %struct.dm_arg], [3 x %struct.dm_arg]* @parse_features._args, i64 0, i64 2), %struct.dm_arg_set* %69, i32* %71, i8** %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, -1
  store i32 %76, i32* %7, align 4
  br label %82

77:                                               ; preds = %65, %61
  %78 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %79 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8** %79, align 8
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %68, %52, %42, %35
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi i1 [ false, %82 ], [ %88, %85 ]
  br i1 %90, label %27, label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %25, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @dm_read_arg_group(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @queue_if_no_path(%struct.multipath*, i32, i32) #1

declare dso_local i32 @dm_read_arg(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
