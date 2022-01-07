; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_random_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_random_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.file = type { i32 }

@random_read_wait = common dso_local global i32 0, align 4
@random_write_wait = common dso_local global i32 0, align 4
@input_pool = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@random_read_wakeup_thresh = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@random_write_wakeup_thresh = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @random_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @random_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @poll_wait(%struct.file* %6, i32* @random_read_wait, i32* %7)
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @poll_wait(%struct.file* %9, i32* @random_write_wait, i32* %10)
  store i32 0, i32* %5, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input_pool, i32 0, i32 0), align 8
  %13 = load i64, i64* @random_read_wakeup_thresh, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @POLLIN, align 4
  %17 = load i32, i32* @POLLRDNORM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input_pool, i32 0, i32 0), align 8
  %23 = load i64, i64* @random_write_wakeup_thresh, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @POLLOUT, align 4
  %27 = load i32, i32* @POLLWRNORM, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
