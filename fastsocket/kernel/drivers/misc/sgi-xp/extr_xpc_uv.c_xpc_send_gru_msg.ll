; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_gru_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_gru_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_message_queue_desc = type { i32 }

@MQE_OK = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@MQE_QUEUE_FULL = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"gru_send_message_gpa() returned error=MQE_QUEUE_FULL\0A\00", align 1
@MQE_CONGESTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"gru_send_message_gpa() returned error=MQE_CONGESTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"gru_send_message_gpa() returned error=%d\0A\00", align 1
@xpGruSendMqError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gru_message_queue_desc*, i8*, i64)* @xpc_send_gru_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_send_gru_msg(%struct.gru_message_queue_desc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.gru_message_queue_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gru_message_queue_desc* %0, %struct.gru_message_queue_desc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %9

9:                                                ; preds = %3, %40
  %10 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @gru_send_message_gpa(%struct.gru_message_queue_desc* %10, i8* %11, i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @MQE_OK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i32, i32* @xpSuccess, align 4
  store i32 %18, i32* %7, align 4
  br label %41

19:                                               ; preds = %9
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MQE_QUEUE_FULL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @xpc_chan, align 4
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @msleep_interruptible(i32 10)
  br label %40

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MQE_CONGESTION, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @xpc_chan, align 4
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @xpc_chan, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @xpGruSendMqError, align 4
  store i32 %38, i32* %7, align 4
  br label %41

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %23
  br label %9

41:                                               ; preds = %34, %17
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @gru_send_message_gpa(%struct.gru_message_queue_desc*, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
