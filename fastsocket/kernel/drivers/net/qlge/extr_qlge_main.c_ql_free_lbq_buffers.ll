; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_free_lbq_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_free_lbq_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.rx_ring = type { i64, i64, i64, %struct.bq_desc* }
%struct.bq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*)* @ql_free_lbq_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_lbq_buffers(%struct.ql_adapter* %0, %struct.rx_ring* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca %struct.bq_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %4, align 8
  %8 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %12 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %65, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %14
  %19 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %20 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %19, i32 0, i32 3
  %21 = load %struct.bq_desc*, %struct.bq_desc** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %21, i64 %22
  store %struct.bq_desc* %23, %struct.bq_desc** %5, align 8
  %24 = load %struct.bq_desc*, %struct.bq_desc** %5, align 8
  %25 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %18
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bq_desc*, %struct.bq_desc** %5, align 8
  %35 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %40 = call i32 @ql_lbq_block_size(%struct.ql_adapter* %39)
  %41 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %42 = call i32 @pci_unmap_page(i32 %33, i32 %38, i32 %40, i32 %41)
  %43 = load %struct.bq_desc*, %struct.bq_desc** %5, align 8
  %44 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %30, %18
  %48 = load %struct.bq_desc*, %struct.bq_desc** %5, align 8
  %49 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @put_page(i32* %52)
  %54 = load %struct.bq_desc*, %struct.bq_desc** %5, align 8
  %55 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  %60 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %61 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  store i64 0, i64* %6, align 8
  br label %65

65:                                               ; preds = %64, %47
  br label %14

66:                                               ; preds = %14
  ret void
}

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @ql_lbq_block_size(%struct.ql_adapter*) #1

declare dso_local i32 @put_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
