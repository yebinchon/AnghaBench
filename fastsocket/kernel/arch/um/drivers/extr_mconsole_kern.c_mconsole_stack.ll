; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_mconsole_kern.c_mconsole_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_mconsole_kern.c_mconsole_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Please specify a pid\00", align 1
@init_pid_ns = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Couldn't find that pid\00", align 1
@stack_proc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mconsole_stack(%struct.mc_request* %0) #0 {
  %2 = alloca %struct.mc_request*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store %struct.mc_request* %0, %struct.mc_request** %2, align 8
  %6 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %7 = getelementptr inbounds %struct.mc_request, %struct.mc_request* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  store i32 -1, i32* %4, align 4
  store %struct.task_struct* null, %struct.task_struct** %5, align 8
  %10 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %3, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @skip_spaces(i8* %14)
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %21 = call i32 @mconsole_reply(%struct.mc_request* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 0)
  br label %38

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.task_struct* @find_task_by_pid_ns(i32 %23, i32* @init_pid_ns)
  store %struct.task_struct* %24, %struct.task_struct** %5, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = icmp eq %struct.task_struct* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %22
  %31 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %32 = call i32 @mconsole_reply(%struct.mc_request* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 0)
  br label %38

33:                                               ; preds = %27
  %34 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %35 = load i32, i32* @stack_proc, align 4
  %36 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %37 = call i32 @with_console(%struct.mc_request* %34, i32 %35, %struct.task_struct* %36)
  br label %38

38:                                               ; preds = %33, %30, %19
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i64 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @mconsole_reply(%struct.mc_request*, i8*, i32, i32) #1

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32, i32*) #1

declare dso_local i32 @with_console(%struct.mc_request*, i32, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
