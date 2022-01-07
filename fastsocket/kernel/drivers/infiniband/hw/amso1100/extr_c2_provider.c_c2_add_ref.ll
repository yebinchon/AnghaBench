; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_provider.c_c2_add_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_provider.c_c2_add_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.c2_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_qp*)* @c2_add_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c2_add_ref(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.c2_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %4 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %5 = icmp ne %struct.ib_qp* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %10 = call %struct.c2_qp* @to_c2qp(%struct.ib_qp* %9)
  store %struct.c2_qp* %10, %struct.c2_qp** %3, align 8
  %11 = load %struct.c2_qp*, %struct.c2_qp** %3, align 8
  %12 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %11, i32 0, i32 0
  %13 = call i32 @atomic_inc(i32* %12)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.c2_qp* @to_c2qp(%struct.ib_qp*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
