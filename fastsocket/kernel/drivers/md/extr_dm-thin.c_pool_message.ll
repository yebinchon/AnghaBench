; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { %struct.pool* }
%struct.pool = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"create_thin\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"create_snap\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"set_transaction_id\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"reserve_metadata_snap\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"release_metadata_snap\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Unrecognised thin pool target message received: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @pool_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_message(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pool_c*, align 8
  %9 = alloca %struct.pool*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 0
  %14 = load %struct.pool_c*, %struct.pool_c** %13, align 8
  store %struct.pool_c* %14, %struct.pool_c** %8, align 8
  %15 = load %struct.pool_c*, %struct.pool_c** %8, align 8
  %16 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %15, i32 0, i32 0
  %17 = load %struct.pool*, %struct.pool** %16, align 8
  store %struct.pool* %17, %struct.pool** %9, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = load %struct.pool*, %struct.pool** %9, align 8
  %27 = call i32 @process_create_thin_mesg(i32 %24, i8** %25, %struct.pool* %26)
  store i32 %27, i32* %7, align 4
  br label %93

28:                                               ; preds = %3
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load i8**, i8*** %6, align 8
  %37 = load %struct.pool*, %struct.pool** %9, align 8
  %38 = call i32 @process_create_snap_mesg(i32 %35, i8** %36, %struct.pool* %37)
  store i32 %38, i32* %7, align 4
  br label %92

39:                                               ; preds = %28
  %40 = load i8**, i8*** %6, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = load i8**, i8*** %6, align 8
  %48 = load %struct.pool*, %struct.pool** %9, align 8
  %49 = call i32 @process_delete_mesg(i32 %46, i8** %47, %struct.pool* %48)
  store i32 %49, i32* %7, align 4
  br label %91

50:                                               ; preds = %39
  %51 = load i8**, i8*** %6, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = load i8**, i8*** %6, align 8
  %59 = load %struct.pool*, %struct.pool** %9, align 8
  %60 = call i32 @process_set_transaction_id_mesg(i32 %57, i8** %58, %struct.pool* %59)
  store i32 %60, i32* %7, align 4
  br label %90

61:                                               ; preds = %50
  %62 = load i8**, i8*** %6, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcasecmp(i8* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = load i8**, i8*** %6, align 8
  %70 = load %struct.pool*, %struct.pool** %9, align 8
  %71 = call i32 @process_reserve_metadata_snap_mesg(i32 %68, i8** %69, %struct.pool* %70)
  store i32 %71, i32* %7, align 4
  br label %89

72:                                               ; preds = %61
  %73 = load i8**, i8*** %6, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcasecmp(i8* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = load i8**, i8*** %6, align 8
  %81 = load %struct.pool*, %struct.pool** %9, align 8
  %82 = call i32 @process_release_metadata_snap_mesg(i32 %79, i8** %80, %struct.pool* %81)
  store i32 %82, i32* %7, align 4
  br label %88

83:                                               ; preds = %72
  %84 = load i8**, i8*** %6, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @DMWARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %83, %78
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %56
  br label %91

91:                                               ; preds = %90, %45
  br label %92

92:                                               ; preds = %91, %34
  br label %93

93:                                               ; preds = %92, %23
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load %struct.pool*, %struct.pool** %9, align 8
  %98 = call i32 @commit(%struct.pool* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @process_create_thin_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @process_create_snap_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @process_delete_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @process_set_transaction_id_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @process_reserve_metadata_snap_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @process_release_metadata_snap_mesg(i32, i8**, %struct.pool*) #1

declare dso_local i32 @DMWARN(i8*, i8*) #1

declare dso_local i32 @commit(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
