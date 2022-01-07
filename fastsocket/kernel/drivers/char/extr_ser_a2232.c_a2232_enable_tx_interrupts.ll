; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_enable_tx_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_enable_tx_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2232_port = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.a2232status = type { i64 }

@GS_TX_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @a2232_enable_tx_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a2232_enable_tx_interrupts(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.a2232_port*, align 8
  %4 = alloca %struct.a2232status*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.a2232_port*
  store %struct.a2232_port* %7, %struct.a2232_port** %3, align 8
  %8 = load %struct.a2232_port*, %struct.a2232_port** %3, align 8
  %9 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.a2232_port*, %struct.a2232_port** %3, align 8
  %12 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.a2232status* @a2232stat(i32 %10, i32 %13)
  store %struct.a2232status* %14, %struct.a2232status** %4, align 8
  %15 = load %struct.a2232status*, %struct.a2232status** %4, align 8
  %16 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %15, i32 0, i32 0
  store volatile i64 0, i64* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = load i32, i32* @GS_TX_INTEN, align 4
  %20 = load %struct.a2232_port*, %struct.a2232_port** %3, align 8
  %21 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %19
  store i32 %25, i32* %23, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  ret void
}

declare dso_local %struct.a2232status* @a2232stat(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
