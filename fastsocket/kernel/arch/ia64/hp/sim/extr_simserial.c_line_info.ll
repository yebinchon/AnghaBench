; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_line_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_line_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }
%struct.serial_state = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%d: uart:%s port:%lX irq:%d\0A\00", align 1
@uart_config = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.serial_state*)* @line_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line_info(%struct.seq_file* %0, %struct.serial_state* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.serial_state*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.serial_state* %1, %struct.serial_state** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %7 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uart_config, align 8
  %10 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %11 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %17 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %20 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %15, i32 %18, i32 %21)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
