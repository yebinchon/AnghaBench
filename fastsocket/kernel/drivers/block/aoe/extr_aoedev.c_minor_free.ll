; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_minor_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_minor_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AOE_PARTITIONS = common dso_local global i32 0, align 4
@N_DEVS = common dso_local global i32 0, align 4
@used_minors_lock = common dso_local global i32 0, align 4
@used_minors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @minor_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minor_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @AOE_PARTITIONS, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sdiv i32 %5, %4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @N_DEVS, align 4
  %9 = icmp sge i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @spin_lock_irqsave(i32* @used_minors_lock, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @used_minors, align 4
  %16 = call i32 @test_bit(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @used_minors, align 4
  %23 = call i32 @clear_bit(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @spin_unlock_irqrestore(i32* @used_minors_lock, i32 %24)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
