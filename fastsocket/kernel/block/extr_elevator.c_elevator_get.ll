; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elevator_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elevator_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_type = type { i32 }

@elv_list_lock = common dso_local global i32 0, align 4
@ELV_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"-iosched\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"anticipatory\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"as-iosched\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s-iosched\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elevator_type* (i8*)* @elevator_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elevator_type* @elevator_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.elevator_type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i32 @spin_lock(i32* @elv_list_lock)
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.elevator_type* @elevator_find(i8* %7)
  store %struct.elevator_type* %8, %struct.elevator_type** %3, align 8
  %9 = load %struct.elevator_type*, %struct.elevator_type** %3, align 8
  %10 = icmp ne %struct.elevator_type* %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ELV_NAME_MAX, align 4
  %13 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = add nsw i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = call i32 @spin_unlock(i32* @elv_list_lock)
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %27

24:                                               ; preds = %11
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %22
  %28 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  %29 = call i32 @spin_lock(i32* @elv_list_lock)
  %30 = load i8*, i8** %2, align 8
  %31 = call %struct.elevator_type* @elevator_find(i8* %30)
  store %struct.elevator_type* %31, %struct.elevator_type** %3, align 8
  %32 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %32)
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.elevator_type*, %struct.elevator_type** %3, align 8
  %35 = icmp ne %struct.elevator_type* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.elevator_type*, %struct.elevator_type** %3, align 8
  %38 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @try_module_get(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store %struct.elevator_type* null, %struct.elevator_type** %3, align 8
  br label %43

43:                                               ; preds = %42, %36, %33
  %44 = call i32 @spin_unlock(i32* @elv_list_lock)
  %45 = load %struct.elevator_type*, %struct.elevator_type** %3, align 8
  ret %struct.elevator_type* %45
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.elevator_type* @elevator_find(i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @request_module(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
