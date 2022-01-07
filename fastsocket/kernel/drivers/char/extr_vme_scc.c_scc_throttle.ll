; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_throttle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, %struct.scc_port* }
%struct.TYPE_2__ = type { i32 }
%struct.scc_port = type { i32 }

@CRTSCTS = common dso_local global i32 0, align 4
@TX_CTRL_REG = common dso_local global i32 0, align 4
@TCR_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @scc_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_throttle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.scc_port*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.scc_port*, %struct.scc_port** %6, align 8
  store %struct.scc_port* %7, %struct.scc_port** %3, align 8
  %8 = load %struct.scc_port*, %struct.scc_port** %3, align 8
  %9 = call i32 @SCC_ACCESS_INIT(%struct.scc_port* %8)
  %10 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CRTSCTS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = load i32, i32* @TX_CTRL_REG, align 4
  %22 = load i32, i32* @TCR_RTS, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @SCCmod(i32 %21, i32 %23, i32 0)
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @local_irq_restore(i64 %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %29 = call i64 @I_IXOFF(%struct.tty_struct* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %33 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %34 = call i32 @STOP_CHAR(%struct.tty_struct* %33)
  %35 = call i32 @scc_send_xchar(%struct.tty_struct* %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @SCC_ACCESS_INIT(%struct.scc_port*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @SCCmod(i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @scc_send_xchar(%struct.tty_struct*, i32) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
