; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_queue_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_queue_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { %struct.adb_request*, i64, i64, i64 }

@macii_queue_poll.req = internal global %struct.adb_request zeroinitializer, align 8
@autopoll_devs = common dso_local global i32 0, align 4
@command_byte = common dso_local global i32 0, align 4
@ADBREQ_NOSEND = common dso_local global i32 0, align 4
@current_req = common dso_local global %struct.adb_request* null, align 8
@last_req = common dso_local global %struct.adb_request* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @macii_queue_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macii_queue_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @autopoll_devs, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %41

6:                                                ; preds = %0
  %7 = load i32, i32* @command_byte, align 4
  %8 = and i32 %7, 240
  %9 = ashr i32 %8, 4
  %10 = add nsw i32 %9, 1
  %11 = shl i32 1, %10
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @autopoll_devs, align 4
  %14 = load i32, i32* %1, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %6
  %19 = load i32, i32* @autopoll_devs, align 4
  %20 = load i32, i32* %1, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @ffs(i32 %22)
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %6
  %26 = load i32, i32* @autopoll_devs, align 4
  %27 = call i32 @ffs(i32 %26)
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = call i32 @request_is_queued(%struct.adb_request* @macii_queue_poll.req)
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* @ADBREQ_NOSEND, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @ADB_READREG(i32 %33, i32 0)
  %35 = call i32 @adb_request(%struct.adb_request* @macii_queue_poll.req, i32* null, i32 %32, i32 1, i32 %34)
  store i64 0, i64* getelementptr inbounds (%struct.adb_request, %struct.adb_request* @macii_queue_poll.req, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.adb_request, %struct.adb_request* @macii_queue_poll.req, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.adb_request, %struct.adb_request* @macii_queue_poll.req, i32 0, i32 1), align 8
  %36 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %36, %struct.adb_request** getelementptr inbounds (%struct.adb_request, %struct.adb_request* @macii_queue_poll.req, i32 0, i32 0), align 8
  %37 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  %38 = icmp ne %struct.adb_request* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store %struct.adb_request* @macii_queue_poll.req, %struct.adb_request** @current_req, align 8
  br label %41

40:                                               ; preds = %29
  store %struct.adb_request* @macii_queue_poll.req, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* @macii_queue_poll.req, %struct.adb_request** @last_req, align 8
  br label %41

41:                                               ; preds = %5, %40, %39
  ret void
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @request_is_queued(%struct.adb_request*) #1

declare dso_local i32 @adb_request(%struct.adb_request*, i32*, i32, i32, i32) #1

declare dso_local i32 @ADB_READREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
