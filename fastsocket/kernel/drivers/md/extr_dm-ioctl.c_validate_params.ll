; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_validate_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_validate_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i8*, i8*, i32 }

@DM_BUFFER_FULL_FLAG = common dso_local global i32 0, align 4
@DM_UEVENT_GENERATED_FLAG = common dso_local global i32 0, align 4
@DM_SECURE_DATA_FLAG = common dso_local global i32 0, align 4
@DM_DATA_OUT_FLAG = common dso_local global i32 0, align 4
@DM_REMOVE_ALL_CMD = common dso_local global i64 0, align 8
@DM_LIST_DEVICES_CMD = common dso_local global i64 0, align 8
@DM_LIST_VERSIONS_CMD = common dso_local global i64 0, align 8
@DM_DEV_CREATE_CMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"name not supplied when creating device\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"only supply one of name or uuid, cmd(%u)\00", align 1
@DM_NAME_LEN = common dso_local global i32 0, align 4
@DM_UUID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.dm_ioctl*)* @validate_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_params(i64 %0, %struct.dm_ioctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.dm_ioctl*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %5, align 8
  %6 = load i32, i32* @DM_BUFFER_FULL_FLAG, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %9 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load i32, i32* @DM_UEVENT_GENERATED_FLAG, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %15 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @DM_SECURE_DATA_FLAG, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %21 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @DM_DATA_OUT_FLAG, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %27 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @DM_REMOVE_ALL_CMD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %2
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @DM_LIST_DEVICES_CMD, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @DM_LIST_VERSIONS_CMD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33, %2
  store i32 0, i32* %3, align 4
  br label %92

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @DM_DEV_CREATE_CMD, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %48 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %92

56:                                               ; preds = %46
  br label %77

57:                                               ; preds = %42
  %58 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %59 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %66 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i64, i64* %4, align 8
  %73 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %92

76:                                               ; preds = %64, %57
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %79 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @DM_NAME_LEN, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %86 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @DM_UUID_LEN, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 0, i8* %91, align 1
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %77, %71, %52, %41
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @DMWARN(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
