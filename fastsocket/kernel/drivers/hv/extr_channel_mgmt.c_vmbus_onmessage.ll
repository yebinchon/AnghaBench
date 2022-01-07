; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_vmbus_onmessage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_vmbus_onmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.vmbus_channel_message_header*)* }
%struct.vmbus_channel_message_header = type { i64 }
%struct.hv_message = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@CHANNELMSG_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Received invalid channel message type %d size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@channel_message_table = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Unhandled channel message type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_onmessage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hv_message*, align 8
  %4 = alloca %struct.vmbus_channel_message_header*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.hv_message*
  store %struct.hv_message* %7, %struct.hv_message** %3, align 8
  %8 = load %struct.hv_message*, %struct.hv_message** %3, align 8
  %9 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.vmbus_channel_message_header*
  store %struct.vmbus_channel_message_header* %12, %struct.vmbus_channel_message_header** %4, align 8
  %13 = load %struct.hv_message*, %struct.hv_message** %3, align 8
  %14 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHANNELMSG_COUNT, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %24 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %26)
  %28 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %29 = load %struct.hv_message*, %struct.hv_message** %3, align 8
  %30 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %33, i32 %34)
  br label %60

36:                                               ; preds = %1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @channel_message_table, align 8
  %38 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %39 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.vmbus_channel_message_header*)*, i32 (%struct.vmbus_channel_message_header*)** %42, align 8
  %44 = icmp ne i32 (%struct.vmbus_channel_message_header*)* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @channel_message_table, align 8
  %47 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %48 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32 (%struct.vmbus_channel_message_header*)*, i32 (%struct.vmbus_channel_message_header*)** %51, align 8
  %53 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %54 = call i32 %52(%struct.vmbus_channel_message_header* %53)
  br label %60

55:                                               ; preds = %36
  %56 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %4, align 8
  %57 = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %22, %55, %45
  ret void
}

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
