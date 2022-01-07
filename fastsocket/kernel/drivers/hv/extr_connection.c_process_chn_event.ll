; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_process_chn_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_process_chn_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i32, i32, i32 (i8*)*, i8* }

@.str = private unnamed_addr constant [34 x i8] c"channel not found for relid - %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"no channel callback for relid - %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @process_chn_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_chn_event(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = call %struct.vmbus_channel* @relid2channel(i64 %8)
  store %struct.vmbus_channel* %9, %struct.vmbus_channel** %3, align 8
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %11 = icmp ne %struct.vmbus_channel* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %17 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %16, i32 0, i32 1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %21 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %20, i32 0, i32 3
  %22 = load i32 (i8*)*, i32 (i8*)** %21, align 8
  %23 = icmp ne i32 (i8*)* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %15
  %25 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %26 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %29 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %49, %24
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %33 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %32, i32 0, i32 2
  %34 = call i32 @hv_begin_read(i32* %33)
  %35 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %36 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %35, i32 0, i32 3
  %37 = load i32 (i8*)*, i32 (i8*)** %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 %37(i8* %38)
  %40 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %41 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %40, i32 0, i32 2
  %42 = call i64 @hv_end_read(i32* %41)
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  br i1 %50, label %31, label %51

51:                                               ; preds = %49
  br label %55

52:                                               ; preds = %15
  %53 = load i64, i64* %2, align 8
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %52, %51
  %56 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %57 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %56, i32 0, i32 1
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %12
  ret void
}

declare dso_local %struct.vmbus_channel* @relid2channel(i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hv_begin_read(i32*) #1

declare dso_local i64 @hv_end_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
