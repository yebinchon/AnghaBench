; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_sunsab_port = type { i32, i32, i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@SAB82532_MODE_FRTS = common dso_local global i32 0, align 4
@SAB82532_MODE_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@SAB82532_REGS_PENDING = common dso_local global i32 0, align 4
@SAB82532_XPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sunsab_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsab_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_sunsab_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.uart_sunsab_port*
  store %struct.uart_sunsab_port* %7, %struct.uart_sunsab_port** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @TIOCM_RTS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* @SAB82532_MODE_FRTS, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @SAB82532_MODE_RTS, align 4
  %20 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %21 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load i32, i32* @SAB82532_MODE_FRTS, align 4
  %26 = load i32, i32* @SAB82532_MODE_RTS, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %29 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %12
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @TIOCM_DTR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %39 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %43 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %54

46:                                               ; preds = %32
  %47 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %48 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %51 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %37
  %55 = load i32, i32* @SAB82532_REGS_PENDING, align 4
  %56 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %57 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %56, i32 0, i32 1
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load i32, i32* @SAB82532_XPR, align 4
  %60 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %61 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %60, i32 0, i32 1
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %5, align 8
  %66 = call i32 @sunsab_tx_idle(%struct.uart_sunsab_port* %65)
  br label %67

67:                                               ; preds = %64, %54
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sunsab_tx_idle(%struct.uart_sunsab_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
