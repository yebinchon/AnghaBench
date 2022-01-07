; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_enable_ms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_enable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_ip22zilog_port = type { i8* }
%struct.zilog_channel = type { i32 }

@R15 = common dso_local global i64 0, align 8
@DCDIE = common dso_local global i8 0, align 1
@SYNCIE = common dso_local global i8 0, align 1
@CTSIE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @ip22zilog_enable_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_enable_ms(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_ip22zilog_port*, align 8
  %4 = alloca %struct.zilog_channel*, align 8
  %5 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.uart_ip22zilog_port*
  store %struct.uart_ip22zilog_port* %7, %struct.uart_ip22zilog_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port* %8)
  store %struct.zilog_channel* %9, %struct.zilog_channel** %4, align 8
  %10 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* @R15, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @DCDIE, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @SYNCIE, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = load i8, i8* @CTSIE, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %21, %23
  %25 = or i32 %16, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %5, align 1
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* @R15, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %28, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %1
  %38 = load i8, i8* %5, align 1
  %39 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %40 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* @R15, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 %38, i8* %43, align 1
  %44 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %45 = load i64, i64* @R15, align 8
  %46 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* @R15, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @write_zsreg(%struct.zilog_channel* %44, i64 %45, i8 zeroext %51)
  br label %53

53:                                               ; preds = %37, %1
  ret void
}

declare dso_local %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port*) #1

declare dso_local i32 @write_zsreg(%struct.zilog_channel*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
