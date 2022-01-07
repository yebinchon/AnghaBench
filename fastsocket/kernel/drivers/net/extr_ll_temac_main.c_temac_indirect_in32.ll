; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_indirect_in32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_indirect_in32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temac_local = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@XTE_CTL0_OFFSET = common dso_local global i32 0, align 4
@XTE_LSW0_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @temac_indirect_in32(%struct.temac_local* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.temac_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.temac_local* %0, %struct.temac_local** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %8 = call i64 @temac_indirect_busywait(%struct.temac_local* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ETIMEDOUT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %15 = load i32, i32* @XTE_CTL0_OFFSET, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @temac_iow(%struct.temac_local* %14, i32 %15, i32 %16)
  %18 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %19 = call i64 @temac_indirect_busywait(%struct.temac_local* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %13
  %25 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %26 = load i32, i32* @XTE_LSW0_OFFSET, align 4
  %27 = call i32 @temac_ior(%struct.temac_local* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %21, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @temac_indirect_busywait(%struct.temac_local*) #1

declare dso_local i32 @temac_iow(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @temac_ior(%struct.temac_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
