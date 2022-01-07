; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_maybe_update_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_maybe_update_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32, i32 }

@PMACZILOG_FLAG_REGS_HELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"pmz: maybe_update_regs: updating\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*)* @pmz_maybe_update_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_maybe_update_regs(%struct.uart_pmac_port* %0) #0 {
  %2 = alloca %struct.uart_pmac_port*, align 8
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %2, align 8
  %3 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %4 = call i32 @ZS_REGS_HELD(%struct.uart_pmac_port* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %8 = call i64 @ZS_TX_ACTIVE(%struct.uart_pmac_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* @PMACZILOG_FLAG_REGS_HELD, align 4
  %12 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %23

16:                                               ; preds = %6
  %17 = call i32 @pmz_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %19 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pmz_load_zsregs(%struct.uart_pmac_port* %18, i32 %21)
  br label %23

23:                                               ; preds = %16, %10
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @ZS_REGS_HELD(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_TX_ACTIVE(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_debug(i8*) #1

declare dso_local i32 @pmz_load_zsregs(%struct.uart_pmac_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
