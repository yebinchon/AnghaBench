; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_set_local_comm_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cm.c_set_local_comm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad = type { i32 }
%struct.cm_generic_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad*, i32)* @set_local_comm_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_local_comm_id(%struct.ib_mad* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm_generic_msg*, align 8
  store %struct.ib_mad* %0, %struct.ib_mad** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ib_mad*, %struct.ib_mad** %3, align 8
  %7 = bitcast %struct.ib_mad* %6 to %struct.cm_generic_msg*
  store %struct.cm_generic_msg* %7, %struct.cm_generic_msg** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @cpu_to_be32(i32 %8)
  %10 = load %struct.cm_generic_msg*, %struct.cm_generic_msg** %5, align 8
  %11 = getelementptr inbounds %struct.cm_generic_msg, %struct.cm_generic_msg* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
