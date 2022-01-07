; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, %struct.dasd_block* }

@do_dasd_request = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"deadline\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*)* @dasd_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_alloc_queue(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %5 = load i32, i32* @do_dasd_request, align 4
  %6 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %6, i32 0, i32 1
  %8 = call %struct.TYPE_4__* @blk_init_queue(i32 %5, i32* %7)
  %9 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %9, i32 0, i32 0
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %10, align 8
  %11 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %20 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store %struct.dasd_block* %19, %struct.dasd_block** %23, align 8
  %24 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %25 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @elevator_exit(i32* %28)
  %30 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %31 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %35 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @elevator_init(%struct.TYPE_4__* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %18
  %41 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %42 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @blk_cleanup_queue(%struct.TYPE_4__* %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %40, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_4__* @blk_init_queue(i32, i32*) #1

declare dso_local i32 @elevator_exit(i32*) #1

declare dso_local i32 @elevator_init(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
