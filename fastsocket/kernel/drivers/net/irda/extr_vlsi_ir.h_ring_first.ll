; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.h_ring_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.h_ring_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_descr = type { i32 }
%struct.vlsi_ring = type { i32, %struct.ring_descr*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_descr* (%struct.vlsi_ring*)* @ring_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_descr* @ring_first(%struct.vlsi_ring* %0) #0 {
  %2 = alloca %struct.vlsi_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.vlsi_ring* %0, %struct.vlsi_ring** %2, align 8
  %4 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %5 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %4, i32 0, i32 3
  %6 = call i32 @atomic_read(i32* %5)
  %7 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %8 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %13 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %12, i32 0, i32 2
  %14 = call i32 @atomic_read(i32* %13)
  %15 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %16 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %14, %17
  %19 = icmp eq i32 %11, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %23 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %22, i32 0, i32 1
  %24 = load %struct.ring_descr*, %struct.ring_descr** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ring_descr, %struct.ring_descr* %24, i64 %26
  br label %28

28:                                               ; preds = %21, %20
  %29 = phi %struct.ring_descr* [ null, %20 ], [ %27, %21 ]
  ret %struct.ring_descr* %29
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
