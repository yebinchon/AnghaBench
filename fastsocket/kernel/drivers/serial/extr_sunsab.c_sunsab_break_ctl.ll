; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_break_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_sunsab_port = type { i8, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SAB82532_DAFO_XBRK = common dso_local global i8 0, align 1
@SAB82532_REGS_PENDING = common dso_local global i32 0, align 4
@SAB82532_XPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sunsab_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsab_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_sunsab_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = bitcast %struct.uart_port* %8 to %struct.uart_sunsab_port*
  store %struct.uart_sunsab_port* %9, %struct.uart_sunsab_port** %5, align 8
  %10 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 4
  store i8 %17, i8* %7, align 1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i8, i8* @SAB82532_DAFO_XBRK, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %7, align 1
  br label %35

27:                                               ; preds = %2
  %28 = load i8, i8* @SAB82532_DAFO_XBRK, align 1
  %29 = zext i8 %28 to i32
  %30 = xor i32 %29, -1
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, %30
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %7, align 1
  br label %35

35:                                               ; preds = %27, %20
  %36 = load i8, i8* %7, align 1
  %37 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %38 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %37, i32 0, i32 0
  store i8 %36, i8* %38, align 4
  %39 = load i32, i32* @SAB82532_REGS_PENDING, align 4
  %40 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %41 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %40, i32 0, i32 2
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load i32, i32* @SAB82532_XPR, align 4
  %44 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %45 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %44, i32 0, i32 2
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %50 = call i32 @sunsab_tx_idle(%struct.uart_sunsab_port* %49)
  br label %51

51:                                               ; preds = %48, %35
  %52 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %53 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sunsab_tx_idle(%struct.uart_sunsab_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
