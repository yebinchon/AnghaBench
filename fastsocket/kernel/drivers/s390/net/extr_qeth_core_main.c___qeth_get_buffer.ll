; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c___qeth_get_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c___qeth_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_cmd_buffer = type { i64, i32 }
%struct.qeth_channel = type { i64, %struct.qeth_cmd_buffer* }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"getbuff\00", align 1
@BUF_STATE_FREE = common dso_local global i64 0, align 8
@BUF_STATE_LOCKED = common dso_local global i64 0, align 8
@QETH_CMD_BUFFER_NO = common dso_local global i32 0, align 4
@QETH_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qeth_cmd_buffer* (%struct.qeth_channel*)* @__qeth_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qeth_cmd_buffer* @__qeth_get_buffer(%struct.qeth_channel* %0) #0 {
  %2 = alloca %struct.qeth_cmd_buffer*, align 8
  %3 = alloca %struct.qeth_channel*, align 8
  %4 = alloca i64, align 8
  store %struct.qeth_channel* %0, %struct.qeth_channel** %3, align 8
  %5 = load i32, i32* @TRACE, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %8 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %57, %1
  %11 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %12 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %11, i32 0, i32 1
  %13 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %13, i64 %14
  %16 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BUF_STATE_FREE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %10
  %21 = load i64, i64* @BUF_STATE_LOCKED, align 8
  %22 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %23 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %22, i32 0, i32 1
  %24 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %24, i64 %25
  %27 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %26, i32 0, i32 0
  store i64 %21, i64* %27, align 8
  %28 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %29 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  %32 = load i32, i32* @QETH_CMD_BUFFER_NO, align 4
  %33 = sext i32 %32 to i64
  %34 = urem i64 %31, %33
  %35 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %36 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %38 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %37, i32 0, i32 1
  %39 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %39, i64 %40
  %42 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @QETH_BUFSIZE, align 4
  %45 = call i32 @memset(i32 %43, i32 0, i32 %44)
  %46 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %47 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %46, i32 0, i32 1
  %48 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %48, i64 %49
  store %struct.qeth_cmd_buffer* %50, %struct.qeth_cmd_buffer** %2, align 8
  br label %64

51:                                               ; preds = %10
  %52 = load i64, i64* %4, align 8
  %53 = add i64 %52, 1
  %54 = load i32, i32* @QETH_CMD_BUFFER_NO, align 4
  %55 = sext i32 %54 to i64
  %56 = urem i64 %53, %55
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %60 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %10, label %63

63:                                               ; preds = %57
  store %struct.qeth_cmd_buffer* null, %struct.qeth_cmd_buffer** %2, align 8
  br label %64

64:                                               ; preds = %63, %20
  %65 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %2, align 8
  ret %struct.qeth_cmd_buffer* %65
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
