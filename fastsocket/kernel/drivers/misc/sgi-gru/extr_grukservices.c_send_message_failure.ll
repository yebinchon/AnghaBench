; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_send_message_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_send_message_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_message_queue_desc = type { i32 }

@mesq_send_unexpected_error = common dso_local global i32 0, align 4
@MQE_UNEXPECTED_CB_ERR = common dso_local global i32 0, align 4
@mesq_send_lb_overflow = common dso_local global i32 0, align 4
@MQE_CONGESTION = common dso_local global i32 0, align 4
@mesq_send_qlimit_reached = common dso_local global i32 0, align 4
@mesq_send_amo_nacked = common dso_local global i32 0, align 4
@mesq_send_put_nacked = common dso_local global i32 0, align 4
@mesq_page_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.gru_message_queue_desc*, i8*, i32)* @send_message_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_message_failure(i8* %0, %struct.gru_message_queue_desc* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gru_message_queue_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.gru_message_queue_desc* %1, %struct.gru_message_queue_desc** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @gru_get_cb_message_queue_substatus(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %45 [
    i32 131, label %14
    i32 132, label %18
    i32 128, label %22
    i32 133, label %30
    i32 129, label %34
    i32 130, label %42
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @mesq_send_unexpected_error, align 4
  %16 = call i32 @STAT(i32 %15)
  %17 = load i32, i32* @MQE_UNEXPECTED_CB_ERR, align 4
  store i32 %17, i32* %10, align 4
  br label %47

18:                                               ; preds = %4
  %19 = load i32, i32* @mesq_send_lb_overflow, align 4
  %20 = call i32 @STAT(i32 %19)
  %21 = load i32, i32* @MQE_CONGESTION, align 4
  store i32 %21, i32* %10, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load i32, i32* @mesq_send_qlimit_reached, align 4
  %24 = call i32 @STAT(i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @send_message_queue_full(i8* %25, %struct.gru_message_queue_desc* %26, i8* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  br label %47

30:                                               ; preds = %4
  %31 = load i32, i32* @mesq_send_amo_nacked, align 4
  %32 = call i32 @STAT(i32 %31)
  %33 = load i32, i32* @MQE_CONGESTION, align 4
  store i32 %33, i32* %10, align 4
  br label %47

34:                                               ; preds = %4
  %35 = load i32, i32* @mesq_send_put_nacked, align 4
  %36 = call i32 @STAT(i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @send_message_put_nacked(i8* %37, %struct.gru_message_queue_desc* %38, i8* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  br label %47

42:                                               ; preds = %4
  %43 = load i32, i32* @mesq_page_overflow, align 4
  %44 = call i32 @STAT(i32 %43)
  br label %45

45:                                               ; preds = %4, %42
  %46 = call i32 (...) @BUG()
  br label %47

47:                                               ; preds = %45, %34, %30, %22, %18, %14
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @gru_get_cb_message_queue_substatus(i8*) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @send_message_queue_full(i8*, %struct.gru_message_queue_desc*, i8*, i32) #1

declare dso_local i32 @send_message_put_nacked(i8*, %struct.gru_message_queue_desc*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
