; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/watchdog/src/extr_watchdog-test.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/watchdog/src/extr_watchdog-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/dev/watchdog\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Watchdog device not enabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@WDIOC_SETOPTIONS = common dso_local global i32 0, align 4
@WDIOS_DISABLECARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Watchdog card disabled.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@WDIOS_ENABLECARD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Watchdog card enabled.\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"-d to disable, -e to enable.\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"run by itself to tick the card.\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Watchdog Ticking Away!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @O_WRONLY, align 4
  %7 = call i32 @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 %7, i32* @fd, align 4
  %8 = load i32, i32* @fd, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fflush(i32 %13)
  %15 = call i32 @exit(i32 -1) #3
  unreachable

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %59

19:                                               ; preds = %16
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strncasecmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @fd, align 4
  %27 = load i32, i32* @WDIOC_SETOPTIONS, align 4
  %28 = load i32, i32* @WDIOS_DISABLECARD, align 4
  %29 = call i32 @ioctl(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fflush(i32 %32)
  %34 = call i32 @exit(i32 0) #3
  unreachable

35:                                               ; preds = %19
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strncasecmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @fd, align 4
  %43 = load i32, i32* @WDIOC_SETOPTIONS, align 4
  %44 = load i32, i32* @WDIOS_ENABLECARD, align 4
  %45 = call i32 @ioctl(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fflush(i32 %48)
  %50 = call i32 @exit(i32 0) #3
  unreachable

51:                                               ; preds = %35
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fflush(i32 %56)
  %58 = call i32 @exit(i32 0) #3
  unreachable

59:                                               ; preds = %16
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 @fflush(i32 %62)
  br label %64

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %65
  %66 = call i32 (...) @keep_alive()
  %67 = call i32 @sleep(i32 1)
  br label %65
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @keep_alive(...) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
