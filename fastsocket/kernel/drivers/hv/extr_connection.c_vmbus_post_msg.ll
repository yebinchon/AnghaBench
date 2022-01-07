; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_vmbus_post_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_vmbus_post_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hv_connection_id = type { i64 }
%struct.TYPE_2__ = type { i32 }

@VMBUS_MESSAGE_CONNECTION_ID = common dso_local global i32 0, align 4
@HV_STATUS_INSUFFICIENT_BUFFERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_post_msg(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.hv_connection_id, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = bitcast %union.hv_connection_id* %6 to i64*
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @VMBUS_MESSAGE_CONNECTION_ID, align 4
  %11 = bitcast %union.hv_connection_id* %6 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %union.hv_connection_id, %union.hv_connection_id* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @hv_post_message(i64 %20, i32 1, i8* %17, i64 %18)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @HV_STATUS_INSUFFICIENT_BUFFERS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = call i32 @msleep(i32 100)
  br label %13

31:                                               ; preds = %13
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @hv_post_message(i64, i32, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
