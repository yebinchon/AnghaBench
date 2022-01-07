; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_dtlk.c_dtlk_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_dtlk.c_dtlk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"(dtlk_open\00", align 1
@dtlk_busy = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dtlk_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtlk_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = call i32 @TRACE_TEXT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @cycle_kernel_lock()
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call i32 @nonseekable_open(%struct.inode* %8, %struct.file* %9)
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @iminor(%struct.inode* %11)
  switch i32 %12, label %23 [
    i32 128, label %13
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @dtlk_busy, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %13
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = call i32 @nonseekable_open(%struct.inode* %20, %struct.file* %21)
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %19, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @TRACE_TEXT(i8*) #1

declare dso_local i32 @cycle_kernel_lock(...) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
