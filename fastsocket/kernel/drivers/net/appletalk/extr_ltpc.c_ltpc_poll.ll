; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/appletalk/extr_ltpc.c_ltpc_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/appletalk/extr_ltpc.c_ltpc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32 }

@ltpc_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@debug = common dso_local global i32 0, align 4
@DEBUG_VERBOSE = common dso_local global i32 0, align 4
@ltpc_poll_counter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ltpc poll is alive\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ltpc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltpc_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.net_device*
  store %struct.net_device* %5, %struct.net_device** %3, align 8
  %6 = call i32 @del_timer(%struct.TYPE_4__* @ltpc_timer)
  %7 = load i32, i32* @debug, align 4
  %8 = load i32, i32* @DEBUG_VERBOSE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @ltpc_poll_counter, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  store i32 50, i32* @ltpc_poll_counter, align 4
  %15 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* @ltpc_poll_counter, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @ltpc_poll_counter, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %32

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @idle(%struct.net_device* %24)
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i32, i32* @HZ, align 4
  %28 = sdiv i32 %27, 20
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  store i64 %30, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ltpc_timer, i32 0, i32 0), align 8
  %31 = call i32 @add_timer(%struct.TYPE_4__* @ltpc_timer)
  br label %32

32:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @idle(%struct.net_device*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
