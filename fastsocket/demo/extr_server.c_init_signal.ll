; ModuleID = '/home/carl/AnghaBench/fastsocket/demo/extr_server.c_init_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/demo/extr_server.c_init_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Unable to initialize signal list\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to add SIGALRM signal to signal list\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Unable to add SIGINT signal to signal list\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to change signal mask\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_signal() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @sigemptyset(i32* %1)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @exit_cleanup()
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @SIGALRM, align 4
  %9 = call i32 @sigaddset(i32* %1, i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = call i32 @perror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (...) @exit_cleanup()
  br label %14

14:                                               ; preds = %11, %7
  %15 = load i32, i32* @SIGINT, align 4
  %16 = call i32 @sigaddset(i32* %1, i32 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call i32 @perror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 (...) @exit_cleanup()
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* @SIG_BLOCK, align 4
  %23 = call i64 @pthread_sigmask(i32 %22, i32* %1, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 (...) @exit_cleanup()
  br label %28

28:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @exit_cleanup(...) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @pthread_sigmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
