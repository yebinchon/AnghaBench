; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_local_activate_IRQ_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_send_local_activate_IRQ_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.amo = type { i32 }

@xpc_vars_sn2 = common dso_local global %struct.TYPE_2__* null, align 8
@XPC_ACTIVATE_IRQ_AMOS_SN2 = common dso_local global i32 0, align 4
@FETCHOP_OR = common dso_local global i32 0, align 4
@xpc_activate_IRQ_rcvd_lock = common dso_local global i32 0, align 4
@xpc_activate_IRQ_rcvd = common dso_local global i32 0, align 4
@xpc_activate_IRQ_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xpc_send_local_activate_IRQ_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_send_local_activate_IRQ_sn2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.amo*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xpc_vars_sn2, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* @XPC_ACTIVATE_IRQ_AMOS_SN2, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %7, %10
  %12 = call i64 @__va(i64 %11)
  %13 = inttoptr i64 %12 to %struct.amo*
  store %struct.amo* %13, %struct.amo** %4, align 8
  %14 = load %struct.amo*, %struct.amo** %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sdiv i32 %15, 2
  %17 = call i64 @BIT_WORD(i32 %16)
  %18 = getelementptr inbounds %struct.amo, %struct.amo* %14, i64 %17
  %19 = getelementptr inbounds %struct.amo, %struct.amo* %18, i32 0, i32 0
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @TO_AMO(i32 %20)
  %22 = load i32, i32* @FETCHOP_OR, align 4
  %23 = load i32, i32* %2, align 4
  %24 = sdiv i32 %23, 2
  %25 = call i32 @BIT_MASK(i32 %24)
  %26 = call i32 @FETCHOP_STORE_OP(i32 %21, i32 %22, i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @xpc_activate_IRQ_rcvd_lock, i64 %27)
  %29 = load i32, i32* @xpc_activate_IRQ_rcvd, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @xpc_activate_IRQ_rcvd, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @xpc_activate_IRQ_rcvd_lock, i64 %31)
  %33 = call i32 @wake_up_interruptible(i32* @xpc_activate_IRQ_wq)
  ret void
}

declare dso_local i64 @__va(i64) #1

declare dso_local i32 @FETCHOP_STORE_OP(i32, i32, i32) #1

declare dso_local i32 @TO_AMO(i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
