; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_set_must_fifo_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_set_must_fifo_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxser_port = type { i64, i64, i64, i64 }

@UART_LCR = common dso_local global i64 0, align 8
@MOXA_MUST_ENTER_ENCHANCE = common dso_local global i32 0, align 4
@MOXA_MUST_EFR_REGISTER = common dso_local global i64 0, align 8
@MOXA_MUST_EFR_BANK_MASK = common dso_local global i32 0, align 4
@MOXA_MUST_EFR_BANK1 = common dso_local global i32 0, align 4
@MOXA_MUST_RBRTH_REGISTER = common dso_local global i64 0, align 8
@MOXA_MUST_RBRTI_REGISTER = common dso_local global i64 0, align 8
@MOXA_MUST_RBRTL_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxser_port*)* @mxser_set_must_fifo_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxser_set_must_fifo_value(%struct.mxser_port* %0) #0 {
  %2 = alloca %struct.mxser_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mxser_port* %0, %struct.mxser_port** %2, align 8
  %5 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %6 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @UART_LCR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @inb(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @MOXA_MUST_ENTER_ENCHANCE, align 4
  %12 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %13 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @UART_LCR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outb(i32 %11, i64 %16)
  %18 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %19 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MOXA_MUST_EFR_REGISTER, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inb(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @MOXA_MUST_EFR_BANK_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @MOXA_MUST_EFR_BANK1, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %33 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MOXA_MUST_EFR_REGISTER, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i32 %31, i64 %36)
  %38 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %39 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %43 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MOXA_MUST_RBRTH_REGISTER, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i32 %41, i64 %46)
  %48 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %49 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %53 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MOXA_MUST_RBRTI_REGISTER, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 %51, i64 %56)
  %58 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %59 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %63 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MOXA_MUST_RBRTL_REGISTER, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outb(i32 %61, i64 %66)
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.mxser_port*, %struct.mxser_port** %2, align 8
  %70 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UART_LCR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb(i32 %68, i64 %73)
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
