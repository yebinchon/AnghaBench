; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c___cfq_forced_dispatch_cfqq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c___cfq_forced_dispatch_cfqq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_queue = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfq_queue*)* @__cfq_forced_dispatch_cfqq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cfq_forced_dispatch_cfqq(%struct.cfq_queue* %0) #0 {
  %2 = alloca %struct.cfq_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.cfq_queue* %0, %struct.cfq_queue** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %6 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %11 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %16 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @cfq_dispatch_insert(i32 %14, i64 %17)
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %23 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %22, i32 0, i32 1
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %30 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  %33 = call i32 @__cfq_slice_expired(%struct.TYPE_2__* %31, %struct.cfq_queue* %32, i32 0)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @cfq_dispatch_insert(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__cfq_slice_expired(%struct.TYPE_2__*, %struct.cfq_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
