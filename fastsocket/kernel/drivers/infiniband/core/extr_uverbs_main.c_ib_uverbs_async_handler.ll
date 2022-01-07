; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_async_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_async_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_file = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.list_head, i64 }
%struct.list_head = type { i32 }
%struct.ib_uverbs_event = type { i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_uverbs_file*, i8*, i8*, %struct.list_head*, i32*)* @ib_uverbs_async_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_uverbs_async_handler(%struct.ib_uverbs_file* %0, i8* %1, i8* %2, %struct.list_head* %3, i32* %4) #0 {
  %6 = alloca %struct.ib_uverbs_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ib_uverbs_event*, align 8
  %12 = alloca i64, align 8
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %14 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i64, i64* %12, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %20 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %27 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  br label %91

32:                                               ; preds = %5
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.ib_uverbs_event* @kmalloc(i32 32, i32 %33)
  store %struct.ib_uverbs_event* %34, %struct.ib_uverbs_event** %11, align 8
  %35 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %36 = icmp ne %struct.ib_uverbs_event* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %39 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %91

44:                                               ; preds = %32
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %47 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* %45, i8** %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %52 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %57 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %59 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %58, i32 0, i32 1
  %60 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %61 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = call i32 @list_add_tail(i32* %59, %struct.list_head* %63)
  %65 = load %struct.list_head*, %struct.list_head** %9, align 8
  %66 = icmp ne %struct.list_head* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %44
  %68 = load %struct.ib_uverbs_event*, %struct.ib_uverbs_event** %11, align 8
  %69 = getelementptr inbounds %struct.ib_uverbs_event, %struct.ib_uverbs_event* %68, i32 0, i32 0
  %70 = load %struct.list_head*, %struct.list_head** %9, align 8
  %71 = call i32 @list_add_tail(i32* %69, %struct.list_head* %70)
  br label %72

72:                                               ; preds = %67, %44
  %73 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %74 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %80 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = call i32 @wake_up_interruptible(i32* %82)
  %84 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %6, align 8
  %85 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* @SIGIO, align 4
  %89 = load i32, i32* @POLL_IN, align 4
  %90 = call i32 @kill_fasync(i32* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %72, %37, %25
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ib_uverbs_event* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
