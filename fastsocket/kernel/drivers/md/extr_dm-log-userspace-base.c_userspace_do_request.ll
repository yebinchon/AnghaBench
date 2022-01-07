; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-base.c_userspace_do_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-base.c_userspace_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_c = type { i8*, i32 }

@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c" Userspace log server not found.\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Attempting to contact userspace log server...\00", align 1
@DM_ULOG_CTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Reconnected to userspace log server... DM_ULOG_CTR complete\00", align 1
@DM_ULOG_RESUME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Error trying to resume userspace log: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.log_c*, i8*, i32, i8*, i64, i8*, i64*)* @userspace_do_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userspace_do_request(%struct.log_c* %0, i8* %1, i32 %2, i8* %3, i64 %4, i8* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.log_c*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store %struct.log_c* %0, %struct.log_c** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64* %6, i64** %15, align 8
  br label %17

17:                                               ; preds = %72, %7
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.log_c*, %struct.log_c** %9, align 8
  %20 = getelementptr inbounds %struct.log_c, %struct.log_c* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i8*, i8** %14, align 8
  %27 = load i64*, i64** %15, align 8
  %28 = call i32 @dm_consult_userspace(i8* %18, i32 %21, i32 %22, i8* %23, i32 %25, i8* %26, i64* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @ESRCH, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %8, align 4
  br label %78

35:                                               ; preds = %17
  %36 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %61
  %38 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %39 = call i32 @set_current_state(i32 %38)
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 2, %40
  %42 = call i32 @schedule_timeout(i32 %41)
  %43 = call i32 @DMWARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.log_c*, %struct.log_c** %9, align 8
  %46 = getelementptr inbounds %struct.log_c, %struct.log_c* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DM_ULOG_CTR, align 4
  %49 = load %struct.log_c*, %struct.log_c** %9, align 8
  %50 = getelementptr inbounds %struct.log_c, %struct.log_c* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.log_c*, %struct.log_c** %9, align 8
  %53 = getelementptr inbounds %struct.log_c, %struct.log_c* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = add nsw i32 %55, 1
  %57 = call i32 @dm_consult_userspace(i8* %44, i32 %47, i32 %48, i8* %51, i32 %56, i8* null, i64* null)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %37
  br label %62

61:                                               ; preds = %37
  br label %37

62:                                               ; preds = %60
  %63 = call i32 @DMINFO(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.log_c*, %struct.log_c** %9, align 8
  %66 = getelementptr inbounds %struct.log_c, %struct.log_c* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DM_ULOG_RESUME, align 4
  %69 = call i32 @dm_consult_userspace(i8* %64, i32 %67, i32 %68, i8* null, i32 0, i8* null, i64* null)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  br label %17

73:                                               ; preds = %62
  %74 = load i32, i32* %16, align 4
  %75 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ESRCH, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %73, %33
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @dm_consult_userspace(i8*, i32, i32, i8*, i32, i8*, i64*) #1

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DMINFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
