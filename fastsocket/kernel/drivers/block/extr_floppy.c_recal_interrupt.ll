; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_recal_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_recal_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (...)*, i32 (...)* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"recal interrupt:\00", align 1
@inr = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_6__* null, align 8
@ST0 = common dso_local global i32 0, align 4
@ST0_ECE = common dso_local global i32 0, align 4
@DRS = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"recal interrupt need 1 recal:\00", align 1
@cont = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"recal interrupt need 2 recal:\00", align 1
@FD_DISK_NEWCHANGE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"recal interrupt default:\00", align 1
@ST1 = common dso_local global i32 0, align 4
@DP = common dso_local global %struct.TYPE_8__* null, align 8
@FD_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @recal_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recal_interrupt() #0 {
  %1 = call i32 @debugt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @inr, align 4
  %3 = icmp ne i32 %2, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  br label %43

7:                                                ; preds = %0
  %8 = load i32, i32* @ST0, align 4
  %9 = load i32, i32* @ST0_ECE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %33 [
    i32 129, label %16
    i32 128, label %26
  ]

16:                                               ; preds = %12
  %17 = call i32 @debugt(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cont, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = call i32 (...) %20()
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cont, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = call i32 (...) %24()
  br label %45

26:                                               ; preds = %12
  %27 = call i32 @debugt(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @FD_DISK_NEWCHANGE, align 4
  %29 = call i32 @CLEARF(i32 %28)
  %30 = load i32, i32* @jiffies, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %12, %26
  %34 = call i32 @debugt(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 129, i32* %36, align 4
  br label %37

37:                                               ; preds = %33
  br label %42

38:                                               ; preds = %7
  %39 = load i32, i32* @ST1, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DRS, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %37
  br label %43

43:                                               ; preds = %42, %4
  %44 = call i32 (...) @floppy_ready()
  br label %45

45:                                               ; preds = %43, %16
  ret void
}

declare dso_local i32 @debugt(i8*) #1

declare dso_local i32 @CLEARF(i32) #1

declare dso_local i32 @floppy_ready(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
