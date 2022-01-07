; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_put_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_put_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.as_io_context = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.as_io_context* }

@AS_TASK_IORUNNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @as_put_io_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_put_io_context(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.as_io_context*, align 8
  %4 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = call %struct.TYPE_3__* @RQ_IOC(%struct.request* %5)
  %7 = icmp ne %struct.TYPE_3__* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.request*, %struct.request** %2, align 8
  %15 = call %struct.TYPE_3__* @RQ_IOC(%struct.request* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.as_io_context*, %struct.as_io_context** %16, align 8
  store %struct.as_io_context* %17, %struct.as_io_context** %3, align 8
  %18 = load %struct.request*, %struct.request** %2, align 8
  %19 = call i64 @rq_is_sync(%struct.request* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %13
  %22 = load %struct.as_io_context*, %struct.as_io_context** %3, align 8
  %23 = icmp ne %struct.as_io_context* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.as_io_context*, %struct.as_io_context** %3, align 8
  %26 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i32, i32* @AS_TASK_IORUNNING, align 4
  %30 = load %struct.as_io_context*, %struct.as_io_context** %3, align 8
  %31 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %30, i32 0, i32 2
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load i32, i32* @jiffies, align 4
  %34 = load %struct.as_io_context*, %struct.as_io_context** %3, align 8
  %35 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.as_io_context*, %struct.as_io_context** %3, align 8
  %37 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %36, i32 0, i32 0
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %24, %21, %13
  %41 = load %struct.request*, %struct.request** %2, align 8
  %42 = call %struct.TYPE_3__* @RQ_IOC(%struct.request* %41)
  %43 = call i32 @put_io_context(%struct.TYPE_3__* %42)
  br label %44

44:                                               ; preds = %40, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_3__* @RQ_IOC(%struct.request*) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_io_context(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
