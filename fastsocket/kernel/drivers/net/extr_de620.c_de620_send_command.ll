; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de620.c_de620_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de620.c_de620_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@W_DUMMY = common dso_local global i64 0, align 8
@NIC_Cmd = common dso_local global i64 0, align 8
@COMMAND_PORT = common dso_local global i32 0, align 4
@DATA_PORT = common dso_local global i32 0, align 4
@CS0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @de620_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de620_send_command(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call i32 @de620_ready(%struct.net_device* %5)
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @W_DUMMY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* @NIC_Cmd, align 8
  %12 = load i32, i32* @COMMAND_PORT, align 4
  %13 = call i32 @outb(i64 %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @DATA_PORT, align 4
  %17 = call i32 @outb(i64 %15, i32 %16)
  %18 = load i64, i64* @NIC_Cmd, align 8
  %19 = load i64, i64* @CS0, align 8
  %20 = xor i64 %18, %19
  %21 = load i32, i32* @COMMAND_PORT, align 4
  %22 = call i32 @outb(i64 %20, i32 %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @de620_ready(%struct.net_device* %23)
  %25 = load i64, i64* @NIC_Cmd, align 8
  %26 = load i32, i32* @COMMAND_PORT, align 4
  %27 = call i32 @outb(i64 %25, i32 %26)
  ret void
}

declare dso_local i32 @de620_ready(%struct.net_device*) #1

declare dso_local i32 @outb(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
