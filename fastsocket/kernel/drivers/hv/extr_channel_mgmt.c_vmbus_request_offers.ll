; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_vmbus_request_offers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_vmbus_request_offers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel_message_header = type { i32 }
%struct.vmbus_channel_msginfo = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHANNELMSG_REQUESTOFFERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to request offers - %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_request_offers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vmbus_channel_message_header*, align 8
  %3 = alloca %struct.vmbus_channel_msginfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.vmbus_channel_msginfo* @kmalloc(i32 20, i32 %6)
  store %struct.vmbus_channel_msginfo* %7, %struct.vmbus_channel_msginfo** %3, align 8
  %8 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %9 = icmp ne %struct.vmbus_channel_msginfo* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %47

13:                                               ; preds = %0
  %14 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %15 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %14, i32 0, i32 0
  %16 = call i32 @init_completion(i32* %15)
  %17 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.vmbus_channel_message_header*
  store %struct.vmbus_channel_message_header* %20, %struct.vmbus_channel_message_header** %2, align 8
  %21 = load i32, i32* @CHANNELMSG_REQUESTOFFERS, align 4
  %22 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %2, align 8
  %23 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %2, align 8
  %25 = call i32 @vmbus_post_msg(%struct.vmbus_channel_message_header* %24, i32 4)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %43

31:                                               ; preds = %13
  %32 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %33 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %32, i32 0, i32 0
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 5, %34
  %36 = call i32 @wait_for_completion_timeout(i32* %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %39, %28
  %44 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %45 = call i32 @kfree(%struct.vmbus_channel_msginfo* %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %43, %10
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local %struct.vmbus_channel_msginfo* @kmalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @vmbus_post_msg(%struct.vmbus_channel_message_header*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @kfree(%struct.vmbus_channel_msginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
