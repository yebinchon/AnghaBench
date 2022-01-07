; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_seek_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_seek_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 (...)*, i32 (...)* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"seek interrupt:\00", align 1
@inr = common dso_local global i32 0, align 4
@ST0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"seek failed\0A\00", align 1
@NEED_2_RECAL = common dso_local global i64 0, align 8
@DRS = common dso_local global %struct.TYPE_5__* null, align 8
@cont = common dso_local global %struct.TYPE_4__* null, align 8
@ST1 = common dso_local global i64 0, align 8
@blind_seek = common dso_local global i32 0, align 4
@FD_DISK_NEWCHANGE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DP = common dso_local global %struct.TYPE_6__* null, align 8
@FD_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @seek_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seek_interrupt() #0 {
  %1 = call i32 @debugt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @inr, align 4
  %3 = icmp ne i32 %2, 2
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @ST0, align 4
  %6 = and i32 %5, 248
  %7 = icmp ne i32 %6, 32
  br i1 %7, label %8, label %21

8:                                                ; preds = %4, %0
  %9 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i64, i64* @NEED_2_RECAL, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cont, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = call i32 (...) %15()
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cont, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (...)*, i32 (...)** %18, align 8
  %20 = call i32 (...) %19()
  br label %46

21:                                               ; preds = %4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ST1, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* @blind_seek, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @FD_DISK_NEWCHANGE, align 4
  %37 = call i32 @CLEARF(i32 %36)
  %38 = load i32, i32* @jiffies, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %35, %32, %26, %21
  %42 = load i64, i64* @ST1, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = call i32 (...) @floppy_ready()
  br label %46

46:                                               ; preds = %41, %8
  ret void
}

declare dso_local i32 @debugt(i8*) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @CLEARF(i32) #1

declare dso_local i32 @floppy_ready(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
