; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.c_vlsi_free_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_vlsi_ir.c_vlsi_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlsi_ring = type { i32, i32, i32, i32, %struct.ring_descr* }
%struct.ring_descr = type { %struct.vlsi_ring*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlsi_ring*)* @vlsi_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlsi_free_ring(%struct.vlsi_ring* %0) #0 {
  %2 = alloca %struct.vlsi_ring*, align 8
  %3 = alloca %struct.ring_descr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.vlsi_ring* %0, %struct.vlsi_ring** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %52, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %9 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %6
  %13 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %14 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %13, i32 0, i32 4
  %15 = load %struct.ring_descr*, %struct.ring_descr** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ring_descr, %struct.ring_descr* %15, i64 %17
  store %struct.ring_descr* %18, %struct.ring_descr** %3, align 8
  %19 = load %struct.ring_descr*, %struct.ring_descr** %3, align 8
  %20 = getelementptr inbounds %struct.ring_descr, %struct.ring_descr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.ring_descr*, %struct.ring_descr** %3, align 8
  %25 = getelementptr inbounds %struct.ring_descr, %struct.ring_descr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dev_kfree_skb_any(i64 %26)
  br label %28

28:                                               ; preds = %23, %12
  %29 = load %struct.ring_descr*, %struct.ring_descr** %3, align 8
  %30 = call i64 @rd_get_addr(%struct.ring_descr* %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.ring_descr*, %struct.ring_descr** %3, align 8
  %32 = call i32 @rd_set_addr_status(%struct.ring_descr* %31, i32 0, i32 0)
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %37 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %41 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %44 = getelementptr inbounds %struct.vlsi_ring, %struct.vlsi_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_unmap_single(i32 %38, i64 %39, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %35, %28
  %48 = load %struct.ring_descr*, %struct.ring_descr** %3, align 8
  %49 = getelementptr inbounds %struct.ring_descr, %struct.ring_descr* %48, i32 0, i32 0
  %50 = load %struct.vlsi_ring*, %struct.vlsi_ring** %49, align 8
  %51 = call i32 @kfree(%struct.vlsi_ring* %50)
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %6

55:                                               ; preds = %6
  %56 = load %struct.vlsi_ring*, %struct.vlsi_ring** %2, align 8
  %57 = call i32 @kfree(%struct.vlsi_ring* %56)
  ret i32 0
}

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i64 @rd_get_addr(%struct.ring_descr*) #1

declare dso_local i32 @rd_set_addr_status(%struct.ring_descr*, i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.vlsi_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
