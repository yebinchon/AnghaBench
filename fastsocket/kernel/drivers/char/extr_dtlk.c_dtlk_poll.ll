; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_dtlk.c_dtlk_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_dtlk.c_dtlk_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c" dtlk_poll\00", align 1
@dtlk_process_list = common dso_local global i32 0, align 4
@dtlk_has_indexing = common dso_local global i64 0, align 8
@dtlk_timer = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dtlk_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtlk_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @TRACE_TEXT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @poll_wait(%struct.file* %8, i32* @dtlk_process_list, i32* %9)
  %11 = load i64, i64* @dtlk_has_indexing, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = call i64 (...) @dtlk_readable()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @del_timer(i32* @dtlk_timer)
  %18 = load i32, i32* @POLLIN, align 4
  %19 = load i32, i32* @POLLRDNORM, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %13, %2
  %22 = call i64 (...) @dtlk_writeable()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = call i32 @del_timer(i32* @dtlk_timer)
  %26 = load i32, i32* @POLLOUT, align 4
  %27 = load i32, i32* @POLLWRNORM, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* @jiffies, align 4
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 3, %33
  %35 = sdiv i32 %34, 100
  %36 = add nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @mod_timer(i32* @dtlk_timer, i64 %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @TRACE_TEXT(i8*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @dtlk_readable(...) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i64 @dtlk_writeable(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
