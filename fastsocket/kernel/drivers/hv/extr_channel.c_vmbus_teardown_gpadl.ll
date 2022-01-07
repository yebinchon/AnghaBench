; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel.c_vmbus_teardown_gpadl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel.c_vmbus_teardown_gpadl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.vmbus_channel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vmbus_channel_gpadl_teardown = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vmbus_channel_msginfo = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHANNELMSG_GPADL_TEARDOWN = common dso_local global i32 0, align 4
@vmbus_connection = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_teardown_gpadl(%struct.vmbus_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmbus_channel_gpadl_teardown*, align 8
  %7 = alloca %struct.vmbus_channel_msginfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.vmbus_channel_msginfo* @kmalloc(i32 28, i32 %11)
  store %struct.vmbus_channel_msginfo* %12, %struct.vmbus_channel_msginfo** %7, align 8
  %13 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %14 = icmp ne %struct.vmbus_channel_msginfo* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %20 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %19, i32 0, i32 1
  %21 = call i32 @init_completion(i32* %20)
  %22 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %23 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.vmbus_channel_gpadl_teardown*
  store %struct.vmbus_channel_gpadl_teardown* %25, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %26 = load i32, i32* @CHANNELMSG_GPADL_TEARDOWN, align 4
  %27 = load %struct.vmbus_channel_gpadl_teardown*, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %28 = getelementptr inbounds %struct.vmbus_channel_gpadl_teardown, %struct.vmbus_channel_gpadl_teardown* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %31 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vmbus_channel_gpadl_teardown*, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %35 = getelementptr inbounds %struct.vmbus_channel_gpadl_teardown, %struct.vmbus_channel_gpadl_teardown* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.vmbus_channel_gpadl_teardown*, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %38 = getelementptr inbounds %struct.vmbus_channel_gpadl_teardown, %struct.vmbus_channel_gpadl_teardown* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), i64 %39)
  %41 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %42 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail(i32* %42, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 1))
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), i64 %44)
  %46 = load %struct.vmbus_channel_gpadl_teardown*, %struct.vmbus_channel_gpadl_teardown** %6, align 8
  %47 = call i32 @vmbus_post_msg(%struct.vmbus_channel_gpadl_teardown* %46, i32 12)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %53 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %52, i32 0, i32 1
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 5, %54
  %56 = call i32 @wait_for_completion_timeout(i32* %53, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), i64 %61)
  %63 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %64 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %63, i32 0, i32 0
  %65 = call i32 @list_del(i32* %64)
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vmbus_connection, i32 0, i32 0), i64 %66)
  %68 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %7, align 8
  %69 = call i32 @kfree(%struct.vmbus_channel_msginfo* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %18, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.vmbus_channel_msginfo* @kmalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vmbus_post_msg(%struct.vmbus_channel_gpadl_teardown*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.vmbus_channel_msginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
