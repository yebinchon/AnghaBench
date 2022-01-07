; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_floppy_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_floppy_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (...)*, i32 (i32)* }

@initialising = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"floppy timeout called\0A\00", align 1
@FDCS = common dso_local global %struct.TYPE_4__* null, align 8
@cont = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"no cont in shutdown!\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"floppy shutdown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @floppy_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floppy_shutdown(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @initialising, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @show_floppy()
  br label %8

8:                                                ; preds = %6, %1
  %9 = call i32 (...) @cancel_activity()
  %10 = call i32 (...) @floppy_enable_hlt()
  %11 = call i64 (...) @claim_dma_lock()
  store i64 %11, i64* %3, align 8
  %12 = call i32 (...) @fd_disable_dma()
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @release_dma_lock(i64 %13)
  %15 = load i32, i32* @initialising, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FDCS, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cont, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cont, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = call i32 %27(i32 0)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cont, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = call i32 (...) %31()
  br label %36

33:                                               ; preds = %19
  %34 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 (...) @process_fd_request()
  br label %36

36:                                               ; preds = %33, %24
  %37 = call i32 @is_alive(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @show_floppy(...) #1

declare dso_local i32 @cancel_activity(...) #1

declare dso_local i32 @floppy_enable_hlt(...) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @fd_disable_dma(...) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @process_fd_request(...) #1

declare dso_local i32 @is_alive(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
