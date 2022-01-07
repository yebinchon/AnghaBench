; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_register_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_register_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_thread = type { void (%struct.md_thread*)*, i32, %struct.mddev*, i32, i32 }
%struct.mddev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@md_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.md_thread* @md_register_thread(void (%struct.md_thread*)* %0, %struct.mddev* %1, i8* %2) #0 {
  %4 = alloca %struct.md_thread*, align 8
  %5 = alloca void (%struct.md_thread*)*, align 8
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.md_thread*, align 8
  store void (%struct.md_thread*)* %0, void (%struct.md_thread*)** %5, align 8
  store %struct.mddev* %1, %struct.mddev** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.md_thread* @kzalloc(i32 32, i32 %9)
  store %struct.md_thread* %10, %struct.md_thread** %8, align 8
  %11 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  %12 = icmp ne %struct.md_thread* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.md_thread* null, %struct.md_thread** %4, align 8
  br label %47

14:                                               ; preds = %3
  %15 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  %16 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %15, i32 0, i32 4
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load void (%struct.md_thread*)*, void (%struct.md_thread*)** %5, align 8
  %19 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  %20 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %19, i32 0, i32 0
  store void (%struct.md_thread*)* %18, void (%struct.md_thread*)** %20, align 8
  %21 = load %struct.mddev*, %struct.mddev** %6, align 8
  %22 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  %23 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %22, i32 0, i32 2
  store %struct.mddev* %21, %struct.mddev** %23, align 8
  %24 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %25 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  %26 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @md_thread, align 4
  %28 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  %29 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  %30 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %29, i32 0, i32 2
  %31 = load %struct.mddev*, %struct.mddev** %30, align 8
  %32 = call i32 @mdname(%struct.mddev* %31)
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @kthread_run(i32 %27, %struct.md_thread* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33)
  %35 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  %36 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  %38 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %14
  %43 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  %44 = call i32 @kfree(%struct.md_thread* %43)
  store %struct.md_thread* null, %struct.md_thread** %4, align 8
  br label %47

45:                                               ; preds = %14
  %46 = load %struct.md_thread*, %struct.md_thread** %8, align 8
  store %struct.md_thread* %46, %struct.md_thread** %4, align 8
  br label %47

47:                                               ; preds = %45, %42, %13
  %48 = load %struct.md_thread*, %struct.md_thread** %4, align 8
  ret %struct.md_thread* %48
}

declare dso_local %struct.md_thread* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kthread_run(i32, %struct.md_thread*, i8*, i32, i8*) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.md_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
