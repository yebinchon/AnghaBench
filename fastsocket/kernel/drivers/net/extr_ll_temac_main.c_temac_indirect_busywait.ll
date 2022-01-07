; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_indirect_busywait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_indirect_busywait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temac_local = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@XTE_RDY0_OFFSET = common dso_local global i32 0, align 4
@XTE_RDY0_HARD_ACS_RDY_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @temac_indirect_busywait(%struct.temac_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.temac_local*, align 8
  %4 = alloca i64, align 8
  store %struct.temac_local* %0, %struct.temac_local** %3, align 8
  %5 = load i32, i32* @jiffies, align 4
  %6 = add nsw i32 %5, 2
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %10 = load i32, i32* @XTE_RDY0_OFFSET, align 4
  %11 = call i32 @temac_ior(%struct.temac_local* %9, i32 %10)
  %12 = load i32, i32* @XTE_RDY0_HARD_ACS_RDY_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %28

16:                                               ; preds = %8
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @jiffies, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %17, %19
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %16
  %27 = call i32 @msleep(i32 1)
  br label %8

28:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @temac_ior(%struct.temac_local*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
