; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_sys_rawhide.c_rawhide_mask_and_ack_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_sys_rawhide.c_rawhide_mask_and_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hose_irq_masks = common dso_local global i32* null, align 8
@rawhide_irq_lock = common dso_local global i32 0, align 4
@cached_irq_masks = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rawhide_mask_and_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rawhide_mask_and_ack_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sub i32 %6, 16
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = udiv i32 %8, 24
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @hose_exists(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %51

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = mul i32 %15, 24
  %17 = load i32, i32* %2, align 4
  %18 = sub i32 %17, %16
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = xor i32 %21, -1
  %23 = load i32*, i32** @hose_irq_masks, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %22, %27
  store i32 %28, i32* %3, align 4
  %29 = call i32 @spin_lock(i32* @rawhide_irq_lock)
  %30 = load i32*, i32** @cached_irq_masks, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32*, i32** @cached_irq_masks, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @rawhide_update_irq_hw(i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @MCPCIA_HOSE2MID(i32 %46)
  %48 = call i64 @MCPCIA_INT_REQ(i32 %47)
  %49 = inttoptr i64 %48 to i32*
  store i32 %45, i32* %49, align 4
  %50 = call i32 @spin_unlock(i32* @rawhide_irq_lock)
  br label %51

51:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @hose_exists(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rawhide_update_irq_hw(i32, i32) #1

declare dso_local i64 @MCPCIA_INT_REQ(i32) #1

declare dso_local i32 @MCPCIA_HOSE2MID(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
