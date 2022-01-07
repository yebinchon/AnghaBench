; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_kobject_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_kobject_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DM_COOKIE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s=%u\00", align 1
@DM_COOKIE_ENV_VAR_NAME = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_kobject_uevent(%struct.mapped_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mapped_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @DM_COOKIE_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  store i8* null, i8** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %22 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_2__* @disk_to_dev(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @kobject_uevent(i32* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %41

28:                                               ; preds = %3
  %29 = load i32, i32* @DM_COOKIE_LENGTH, align 4
  %30 = load i8*, i8** @DM_COOKIE_ENV_VAR_NAME, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @snprintf(i8* %15, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %34 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_2__* @disk_to_dev(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %6, align 4
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %40 = call i32 @kobject_uevent_env(i32* %37, i32 %38, i8** %39)
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %28, %20
  %42 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kobject_uevent(i32*, i32) #2

declare dso_local %struct.TYPE_2__* @disk_to_dev(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
