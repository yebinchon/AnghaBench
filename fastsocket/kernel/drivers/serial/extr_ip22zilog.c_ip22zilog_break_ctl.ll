; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_break_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_ip22zilog_port = type { i8* }
%struct.zilog_channel = type { i32 }

@SND_BRK = common dso_local global i8 0, align 1
@R5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @ip22zilog_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_ip22zilog_port*, align 8
  %6 = alloca %struct.zilog_channel*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = bitcast %struct.uart_port* %11 to %struct.uart_ip22zilog_port*
  store %struct.uart_ip22zilog_port* %12, %struct.uart_ip22zilog_port** %5, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port* %13)
  store %struct.zilog_channel* %14, %struct.zilog_channel** %6, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %7, align 1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i8, i8* @SND_BRK, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %7, align 1
  br label %31

24:                                               ; preds = %2
  %25 = load i8, i8* @SND_BRK, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %8, align 1
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %37 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* @R5, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %42, %44
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %9, align 1
  %51 = load i8, i8* %9, align 1
  %52 = zext i8 %51 to i32
  %53 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %54 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* @R5, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %52, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %31
  %62 = load i8, i8* %9, align 1
  %63 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %64 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* @R5, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 %62, i8* %67, align 1
  %68 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %69 = load i64, i64* @R5, align 8
  %70 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %71 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* @R5, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @write_zsreg(%struct.zilog_channel* %68, i64 %69, i8 zeroext %75)
  br label %77

77:                                               ; preds = %61, %31
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 0
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  ret void
}

declare dso_local %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_zsreg(%struct.zilog_channel*, i64, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
