; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_indirect_out32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_indirect_out32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temac_local = type { i32 }

@XTE_LSW0_OFFSET = common dso_local global i32 0, align 4
@XTE_CTL0_OFFSET = common dso_local global i32 0, align 4
@CNTLREG_WRITE_ENABLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @temac_indirect_out32(%struct.temac_local* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.temac_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.temac_local* %0, %struct.temac_local** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %8 = call i64 @temac_indirect_busywait(%struct.temac_local* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %22

11:                                               ; preds = %3
  %12 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %13 = load i32, i32* @XTE_LSW0_OFFSET, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @temac_iow(%struct.temac_local* %12, i32 %13, i32 %14)
  %16 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %17 = load i32, i32* @XTE_CTL0_OFFSET, align 4
  %18 = load i32, i32* @CNTLREG_WRITE_ENABLE_MASK, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @temac_iow(%struct.temac_local* %16, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @temac_indirect_busywait(%struct.temac_local*) #1

declare dso_local i32 @temac_iow(%struct.temac_local*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
