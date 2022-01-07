; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_queue_if_no_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_queue_if_no_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i32, i32, i32, i32, i64 }

@kmultipathd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.multipath*, i32, i32)* @queue_if_no_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_if_no_path(%struct.multipath* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.multipath*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.multipath* %0, %struct.multipath** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.multipath*, %struct.multipath** %4, align 8
  %9 = getelementptr inbounds %struct.multipath, %struct.multipath* %8, i32 0, i32 2
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.multipath*, %struct.multipath** %4, align 8
  %16 = getelementptr inbounds %struct.multipath, %struct.multipath* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.multipath*, %struct.multipath** %4, align 8
  %19 = getelementptr inbounds %struct.multipath, %struct.multipath* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.multipath*, %struct.multipath** %4, align 8
  %23 = getelementptr inbounds %struct.multipath, %struct.multipath* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %14
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.multipath*, %struct.multipath** %4, align 8
  %27 = getelementptr inbounds %struct.multipath, %struct.multipath* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.multipath*, %struct.multipath** %4, align 8
  %29 = getelementptr inbounds %struct.multipath, %struct.multipath* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %24
  %33 = load %struct.multipath*, %struct.multipath** %4, align 8
  %34 = getelementptr inbounds %struct.multipath, %struct.multipath* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @kmultipathd, align 4
  %39 = load %struct.multipath*, %struct.multipath** %4, align 8
  %40 = getelementptr inbounds %struct.multipath, %struct.multipath* %39, i32 0, i32 3
  %41 = call i32 @queue_work(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %32, %24
  %43 = load %struct.multipath*, %struct.multipath** %4, align 8
  %44 = getelementptr inbounds %struct.multipath, %struct.multipath* %43, i32 0, i32 2
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
