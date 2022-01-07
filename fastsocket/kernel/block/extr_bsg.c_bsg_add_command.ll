; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_add_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_add_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_device = type { i32, i32, i32 }
%struct.request_queue = type { i32 }
%struct.bsg_command = type { i32, %struct.TYPE_4__, i32, i32, %struct.request* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.request = type { %struct.bsg_command*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@BSG_FLAG_Q_AT_TAIL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: queueing rq %p, bc %p\0A\00", align 1
@bsg_rq_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsg_device*, %struct.request_queue*, %struct.bsg_command*, %struct.request*)* @bsg_add_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsg_add_command(%struct.bsg_device* %0, %struct.request_queue* %1, %struct.bsg_command* %2, %struct.request* %3) #0 {
  %5 = alloca %struct.bsg_device*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.bsg_command*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.bsg_device* %0, %struct.bsg_device** %5, align 8
  store %struct.request_queue* %1, %struct.request_queue** %6, align 8
  store %struct.bsg_command* %2, %struct.bsg_command** %7, align 8
  store %struct.request* %3, %struct.request** %8, align 8
  %10 = load %struct.bsg_command*, %struct.bsg_command** %7, align 8
  %11 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BSG_FLAG_Q_AT_TAIL, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 0, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load %struct.request*, %struct.request** %8, align 8
  %19 = load %struct.bsg_command*, %struct.bsg_command** %7, align 8
  %20 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %19, i32 0, i32 4
  store %struct.request* %18, %struct.request** %20, align 8
  %21 = load %struct.request*, %struct.request** %8, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bsg_command*, %struct.bsg_command** %7, align 8
  %25 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.request*, %struct.request** %8, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.request*, %struct.request** %8, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bsg_command*, %struct.bsg_command** %7, align 8
  %37 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %4
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.bsg_command*, %struct.bsg_command** %7, align 8
  %41 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.bsg_device*, %struct.bsg_device** %5, align 8
  %44 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %43, i32 0, i32 1
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load %struct.bsg_command*, %struct.bsg_command** %7, align 8
  %47 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %46, i32 0, i32 0
  %48 = load %struct.bsg_device*, %struct.bsg_device** %5, align 8
  %49 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %48, i32 0, i32 2
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.bsg_device*, %struct.bsg_device** %5, align 8
  %52 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load %struct.bsg_device*, %struct.bsg_device** %5, align 8
  %55 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.request*, %struct.request** %8, align 8
  %58 = load %struct.bsg_command*, %struct.bsg_command** %7, align 8
  %59 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56, %struct.request* %57, %struct.bsg_command* %58)
  %60 = load %struct.bsg_command*, %struct.bsg_command** %7, align 8
  %61 = load %struct.request*, %struct.request** %8, align 8
  %62 = getelementptr inbounds %struct.request, %struct.request* %61, i32 0, i32 0
  store %struct.bsg_command* %60, %struct.bsg_command** %62, align 8
  %63 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %64 = load %struct.request*, %struct.request** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @bsg_rq_end_io, align 4
  %67 = call i32 @blk_execute_rq_nowait(%struct.request_queue* %63, i32* null, %struct.request* %64, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.request*, %struct.bsg_command*) #1

declare dso_local i32 @blk_execute_rq_nowait(%struct.request_queue*, i32*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
