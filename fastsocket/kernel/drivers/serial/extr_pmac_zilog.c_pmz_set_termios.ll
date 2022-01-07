; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32 }
%struct.uart_pmac_port = type { i32* }

@EXT_INT_ENAB = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@RxINT_MASK = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@INT_ALL_Rx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @pmz_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_pmac_port*, align 8
  %8 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %9)
  store %struct.uart_pmac_port* %10, %struct.uart_pmac_port** %7, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @EXT_INT_ENAB, align 4
  %16 = load i32, i32* @TxINT_ENAB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RxINT_MASK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %22 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @R1, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %20
  store i32 %27, i32* %25, align 4
  %28 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %29 = load i64, i64* @R1, align 8
  %30 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %31 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @R1, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @write_zsreg(%struct.uart_pmac_port* %28, i64 %29, i32 %35)
  %37 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %38 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %39 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %40 = call i32 @__pmz_set_termios(%struct.uart_port* %37, %struct.ktermios* %38, %struct.ktermios* %39)
  %41 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %42 = call i64 @ZS_IS_OPEN(%struct.uart_pmac_port* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %3
  %45 = load i32, i32* @INT_ALL_Rx, align 4
  %46 = load i32, i32* @TxINT_ENAB, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %49 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @R1, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %47
  store i32 %54, i32* %52, align 4
  %55 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %56 = call i32 @ZS_IS_EXTCLK(%struct.uart_pmac_port* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* @EXT_INT_ENAB, align 4
  %60 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %61 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @R1, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %59
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %58, %44
  %68 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %69 = load i64, i64* @R1, align 8
  %70 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %71 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @R1, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @write_zsreg(%struct.uart_pmac_port* %68, i64 %69, i32 %75)
  br label %77

77:                                               ; preds = %67, %3
  %78 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 0
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

declare dso_local i32 @__pmz_set_termios(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*) #1

declare dso_local i64 @ZS_IS_OPEN(%struct.uart_pmac_port*) #1

declare dso_local i32 @ZS_IS_EXTCLK(%struct.uart_pmac_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
