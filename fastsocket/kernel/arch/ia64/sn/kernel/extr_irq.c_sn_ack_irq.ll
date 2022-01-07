; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_ack_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SH_EVENT_OCCURRED = common dso_local global i32 0, align 4
@SH_ALL_INT_MASK = common dso_local global i32 0, align 4
@SH_EVENT_OCCURRED_ALIAS = common dso_local global i32 0, align 4
@pda = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sn_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sn_ack_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 255
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @SH_EVENT_OCCURRED, align 4
  %8 = call i64 @LOCAL_MMR_ADDR(i32 %7)
  %9 = inttoptr i64 %8 to i32*
  %10 = call i32 @HUB_L(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SH_ALL_INT_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @SH_EVENT_OCCURRED_ALIAS, align 4
  %15 = call i64 @LOCAL_MMR_ADDR(i32 %14)
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @HUB_S(i32* %16, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @__set_bit(i32 %19, i8* %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @move_native_irq(i32 %25)
  ret void
}

declare dso_local i32 @HUB_L(i32*) #1

declare dso_local i64 @LOCAL_MMR_ADDR(i32) #1

declare dso_local i32 @HUB_S(i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i8*) #1

declare dso_local i32 @move_native_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
