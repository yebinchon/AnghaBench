; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.h_ring_last.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.h_ring_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_descr = type { i32 }
%struct.vlsi_ring = type { i32, %struct.ring_descr*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_descr* (%struct.vlsi_ring*)* @ring_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_descr* @ring_last(%struct.vlsi_ring* %0) #0 {
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
  %12 = add nsw i32 %11, 1
  %13 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %14 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %12, %15
  %17 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %18 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %17, i32 0, i32 2
  %19 = call i32 @atomic_read(i32* %18)
  %20 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %21 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = icmp eq i32 %16, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %33

26:                                               ; preds = %1
  %27 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %28 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %27, i32 0, i32 1
  %29 = load %struct.ring_descr*, %struct.ring_descr** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ring_descr, %struct.ring_descr* %29, i64 %31
  br label %33

33:                                               ; preds = %26, %25
  %34 = phi %struct.ring_descr* [ null, %25 ], [ %32, %26 ]
  ret %struct.ring_descr* %34
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
