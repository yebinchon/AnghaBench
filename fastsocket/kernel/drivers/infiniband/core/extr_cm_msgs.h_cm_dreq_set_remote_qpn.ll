; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm_msgs.h_cm_dreq_set_remote_qpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm_msgs.h_cm_dreq_set_remote_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_dreq_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_dreq_msg*, i32)* @cm_dreq_set_remote_qpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_dreq_set_remote_qpn(%struct.cm_dreq_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.cm_dreq_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.cm_dreq_msg* %0, %struct.cm_dreq_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @be32_to_cpu(i32 %5)
  %7 = shl i32 %6, 8
  %8 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %3, align 8
  %9 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @be32_to_cpu(i32 %10)
  %12 = and i32 %11, 255
  %13 = or i32 %7, %12
  %14 = call i32 @cpu_to_be32(i32 %13)
  %15 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %3, align 8
  %16 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
