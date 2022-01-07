; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_break_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.scc_port* }
%struct.scc_port = type { i32 }

@TX_CTRL_REG = common dso_local global i32 0, align 4
@TCR_SEND_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @scc_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_break_ctl(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scc_port*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.scc_port*, %struct.scc_port** %8, align 8
  store %struct.scc_port* %9, %struct.scc_port** %5, align 8
  %10 = load %struct.scc_port*, %struct.scc_port** %5, align 8
  %11 = call i32 @SCC_ACCESS_INIT(%struct.scc_port* %10)
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i32, i32* @TX_CTRL_REG, align 4
  %15 = load i32, i32* @TCR_SEND_BREAK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @TCR_SEND_BREAK, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call i32 @SCCmod(i32 %14, i32 %16, i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @local_irq_restore(i64 %25)
  ret i32 0
}

declare dso_local i32 @SCC_ACCESS_INIT(%struct.scc_port*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @SCCmod(i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
