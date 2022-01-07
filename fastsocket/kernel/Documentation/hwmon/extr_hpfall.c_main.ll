; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/hwmon/extr_hpfall.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/hwmon/extr_hpfall.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/sda\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"usage: %s <device> (default: /dev/sda)\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/dev/freefall\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@ignore_me = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sched_param, align 4
  %9 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @set_unload_heads_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @set_unload_heads_path(i8* %20)
  store i32 %21, i32* %7, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = call i32 (...) @valid_disk()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %29
  %40 = load i32, i32* @O_RDONLY, align 4
  %41 = call i32 @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %46, i32* %3, align 4
  br label %86

47:                                               ; preds = %39
  %48 = call i32 @daemon(i32 0, i32 0)
  %49 = load i32, i32* @SCHED_FIFO, align 4
  %50 = call i32 @sched_get_priority_max(i32 %49)
  %51 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %8, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @SCHED_FIFO, align 4
  %53 = call i32 @sched_setscheduler(i32 0, i32 %52, %struct.sched_param* %8)
  %54 = load i32, i32* @MCL_CURRENT, align 4
  %55 = load i32, i32* @MCL_FUTURE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @mlockall(i32 %56)
  %58 = load i32, i32* @SIGALRM, align 4
  %59 = load i32, i32* @ignore_me, align 4
  %60 = call i32 @signal(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %78, %71, %47
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @read(i32 %62, i8* %9, i32 1)
  store i32 %63, i32* %7, align 4
  %64 = call i32 @alarm(i32 0)
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @EINTR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %61

72:                                               ; preds = %67, %61
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %82

78:                                               ; preds = %72
  %79 = call i32 @protect(i32 21)
  %80 = call i32 @set_led(i32 1)
  %81 = call i32 @alarm(i32 2)
  br label %61

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %44
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @set_unload_heads_path(i8*) #1

declare dso_local i32 @valid_disk(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @sched_get_priority_max(i32) #1

declare dso_local i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #1

declare dso_local i32 @mlockall(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @protect(i32) #1

declare dso_local i32 @set_led(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
