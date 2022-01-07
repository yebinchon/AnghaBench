; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_poll_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_ehea_poll_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_eqe = type { i32 }
%struct.ehea_eq = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ehea_eqe* @ehea_poll_eq(%struct.ehea_eq* %0) #0 {
  %2 = alloca %struct.ehea_eq*, align 8
  %3 = alloca %struct.ehea_eqe*, align 8
  %4 = alloca i64, align 8
  store %struct.ehea_eq* %0, %struct.ehea_eq** %2, align 8
  %5 = load %struct.ehea_eq*, %struct.ehea_eq** %2, align 8
  %6 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.ehea_eq*, %struct.ehea_eq** %2, align 8
  %10 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %9, i32 0, i32 1
  %11 = call i64 @hw_eqit_eq_get_inc_valid(i32* %10)
  %12 = inttoptr i64 %11 to %struct.ehea_eqe*
  store %struct.ehea_eqe* %12, %struct.ehea_eqe** %3, align 8
  %13 = load %struct.ehea_eq*, %struct.ehea_eq** %2, align 8
  %14 = getelementptr inbounds %struct.ehea_eq, %struct.ehea_eq* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load %struct.ehea_eqe*, %struct.ehea_eqe** %3, align 8
  ret %struct.ehea_eqe* %17
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @hw_eqit_eq_get_inc_valid(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
