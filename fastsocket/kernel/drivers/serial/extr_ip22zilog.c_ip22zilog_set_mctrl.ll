; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_ip22zilog_port = type { i8* }
%struct.zilog_channel = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@RTS = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@DTR = common dso_local global i8 0, align 1
@R5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @ip22zilog_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_ip22zilog_port*, align 8
  %6 = alloca %struct.zilog_channel*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = bitcast %struct.uart_port* %9 to %struct.uart_ip22zilog_port*
  store %struct.uart_ip22zilog_port* %10, %struct.uart_ip22zilog_port** %5, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port* %11)
  store %struct.zilog_channel* %12, %struct.zilog_channel** %6, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %7, align 1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TIOCM_RTS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i8, i8* @RTS, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %7, align 1
  br label %31

24:                                               ; preds = %2
  %25 = load i8, i8* @RTS, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %8, align 1
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TIOCM_DTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8, i8* @DTR, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %7, align 1
  br label %50

43:                                               ; preds = %31
  %44 = load i8, i8* @DTR, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %8, align 1
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %54 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* @R5, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, %52
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %57, align 1
  %62 = load i8, i8* %8, align 1
  %63 = zext i8 %62 to i32
  %64 = xor i32 %63, -1
  %65 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %66 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i64, i64* @R5, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, %64
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %69, align 1
  %74 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %75 = load i64, i64* @R5, align 8
  %76 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %77 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* @R5, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @write_zsreg(%struct.zilog_channel* %74, i64 %75, i8 zeroext %81)
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
