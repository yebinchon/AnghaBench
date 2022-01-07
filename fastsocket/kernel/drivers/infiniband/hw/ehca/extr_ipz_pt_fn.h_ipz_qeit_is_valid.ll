; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.h_ipz_qeit_is_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.h_ipz_qeit_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipz_queue = type { i32 }
%struct.ehca_cqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipz_queue*)* @ipz_qeit_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipz_qeit_is_valid(%struct.ipz_queue* %0) #0 {
  %2 = alloca %struct.ipz_queue*, align 8
  %3 = alloca %struct.ehca_cqe*, align 8
  store %struct.ipz_queue* %0, %struct.ipz_queue** %2, align 8
  %4 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %5 = call %struct.ehca_cqe* @ipz_qeit_get(%struct.ipz_queue* %4)
  store %struct.ehca_cqe* %5, %struct.ehca_cqe** %3, align 8
  %6 = load %struct.ehca_cqe*, %struct.ehca_cqe** %3, align 8
  %7 = getelementptr inbounds %struct.ehca_cqe, %struct.ehca_cqe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 7
  %10 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %11 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %9, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local %struct.ehca_cqe* @ipz_qeit_get(%struct.ipz_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
