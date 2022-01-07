; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_pfifo.c_pfifo_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_pfifo.c_pfifo_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pfifo_lock = common dso_local global i32 0, align 4
@pfifo_used = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NETX_PFIFO_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfifo_request(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 @mutex_lock(i32* @pfifo_lock)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @pfifo_used, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @pfifo_used, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @pfifo_used, align 4
  %17 = load i32, i32* @NETX_PFIFO_RESET, align 4
  %18 = call i32 @readl(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NETX_PFIFO_RESET, align 4
  %23 = call i32 @writel(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @NETX_PFIFO_RESET, align 4
  %26 = call i32 @writel(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %13, %10
  %28 = call i32 @mutex_unlock(i32* @pfifo_lock)
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
