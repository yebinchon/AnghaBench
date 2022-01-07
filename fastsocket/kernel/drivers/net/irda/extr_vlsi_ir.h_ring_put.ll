; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.h_ring_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.h_ring_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_descr = type { i32 }
%struct.vlsi_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_descr* (%struct.vlsi_ring*)* @ring_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_descr* @ring_put(%struct.vlsi_ring* %0) #0 {
  %2 = alloca %struct.vlsi_ring*, align 8
  store %struct.vlsi_ring* %0, %struct.vlsi_ring** %2, align 8
  %3 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %4 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %3, i32 0, i32 0
  %5 = call i32 @atomic_inc(i32* %4)
  %6 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %7 = call %struct.ring_descr* @ring_last(%struct.vlsi_ring* %6)
  ret %struct.ring_descr* %7
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.ring_descr* @ring_last(%struct.vlsi_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
