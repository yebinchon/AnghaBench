; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de620.c_de620_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de620.c_de620_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@NIC_Cmd = common dso_local global i32 0, align 4
@DS0 = common dso_local global i32 0, align 4
@DS1 = common dso_local global i32 0, align 4
@DATA_PORT = common dso_local global i32 0, align 4
@COMMAND_PORT = common dso_local global i32 0, align 4
@W_DUMMY = common dso_local global i32 0, align 4
@tot_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*, i32, i32)* @de620_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de620_write_block(%struct.net_device* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @NIC_Cmd, align 4
  %12 = load i32, i32* @DS0, align 4
  %13 = load i32, i32* @DS1, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %11, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @NIC_Cmd, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %37, %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* @DATA_PORT, align 4
  %25 = call i32 @outb(i32 %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @COMMAND_PORT, align 4
  %28 = call i32 @outb(i32 %26, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %6, align 8
  %31 = load i32, i32* %29, align 4
  %32 = load i32, i32* @DATA_PORT, align 4
  %33 = call i32 @outb(i32 %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @COMMAND_PORT, align 4
  %36 = call i32 @outb(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 2
  store i32 %39, i32* %7, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load i32, i32* @W_DUMMY, align 4
  %43 = call i32 @de620_send_command(%struct.net_device* %41, i32 %42)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @de620_send_command(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
