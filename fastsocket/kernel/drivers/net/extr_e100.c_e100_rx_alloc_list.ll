; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_rx_alloc_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_rx_alloc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, %struct.rx*, %struct.rx*, %struct.rx*, i32, %struct.TYPE_5__ }
%struct.rx = type { i32, %struct.TYPE_6__*, %struct.rx*, %struct.rx* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rfd = type { i64, i32 }

@RU_UNINITIALIZED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cb_el = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@RU_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_rx_alloc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_rx_alloc_list(%struct.nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nic*, align 8
  %4 = alloca %struct.rx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfd*, align 8
  store %struct.nic* %0, %struct.nic** %3, align 8
  %8 = load %struct.nic*, %struct.nic** %3, align 8
  %9 = getelementptr inbounds %struct.nic, %struct.nic* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.nic*, %struct.nic** %3, align 8
  %14 = getelementptr inbounds %struct.nic, %struct.nic* %13, i32 0, i32 2
  store %struct.rx* null, %struct.rx** %14, align 8
  %15 = load %struct.nic*, %struct.nic** %3, align 8
  %16 = getelementptr inbounds %struct.nic, %struct.nic* %15, i32 0, i32 3
  store %struct.rx* null, %struct.rx** %16, align 8
  %17 = load i32, i32* @RU_UNINITIALIZED, align 4
  %18 = load %struct.nic*, %struct.nic** %3, align 8
  %19 = getelementptr inbounds %struct.nic, %struct.nic* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.rx* @kcalloc(i32 %20, i32 32, i32 %21)
  %23 = load %struct.nic*, %struct.nic** %3, align 8
  %24 = getelementptr inbounds %struct.nic, %struct.nic* %23, i32 0, i32 1
  store %struct.rx* %22, %struct.rx** %24, align 8
  %25 = icmp ne %struct.rx* %22, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %125

29:                                               ; preds = %1
  %30 = load %struct.nic*, %struct.nic** %3, align 8
  %31 = getelementptr inbounds %struct.nic, %struct.nic* %30, i32 0, i32 1
  %32 = load %struct.rx*, %struct.rx** %31, align 8
  store %struct.rx* %32, %struct.rx** %4, align 8
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %80, %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  %40 = load i32, i32* %6, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.rx*, %struct.rx** %4, align 8
  %44 = getelementptr inbounds %struct.rx, %struct.rx* %43, i64 1
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.nic*, %struct.nic** %3, align 8
  %47 = getelementptr inbounds %struct.nic, %struct.nic* %46, i32 0, i32 1
  %48 = load %struct.rx*, %struct.rx** %47, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi %struct.rx* [ %44, %42 ], [ %48, %45 ]
  %51 = load %struct.rx*, %struct.rx** %4, align 8
  %52 = getelementptr inbounds %struct.rx, %struct.rx* %51, i32 0, i32 3
  store %struct.rx* %50, %struct.rx** %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.nic*, %struct.nic** %3, align 8
  %57 = getelementptr inbounds %struct.nic, %struct.nic* %56, i32 0, i32 1
  %58 = load %struct.rx*, %struct.rx** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.rx, %struct.rx* %58, i64 %60
  %62 = getelementptr inbounds %struct.rx, %struct.rx* %61, i64 -1
  br label %66

63:                                               ; preds = %49
  %64 = load %struct.rx*, %struct.rx** %4, align 8
  %65 = getelementptr inbounds %struct.rx, %struct.rx* %64, i64 -1
  br label %66

66:                                               ; preds = %63, %55
  %67 = phi %struct.rx* [ %62, %55 ], [ %65, %63 ]
  %68 = load %struct.rx*, %struct.rx** %4, align 8
  %69 = getelementptr inbounds %struct.rx, %struct.rx* %68, i32 0, i32 2
  store %struct.rx* %67, %struct.rx** %69, align 8
  %70 = load %struct.nic*, %struct.nic** %3, align 8
  %71 = load %struct.rx*, %struct.rx** %4, align 8
  %72 = call i64 @e100_rx_alloc_skb(%struct.nic* %70, %struct.rx* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.nic*, %struct.nic** %3, align 8
  %76 = call i32 @e100_rx_clean_list(%struct.nic* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %125

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.rx*, %struct.rx** %4, align 8
  %82 = getelementptr inbounds %struct.rx, %struct.rx* %81, i32 1
  store %struct.rx* %82, %struct.rx** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %33

85:                                               ; preds = %33
  %86 = load %struct.nic*, %struct.nic** %3, align 8
  %87 = getelementptr inbounds %struct.nic, %struct.nic* %86, i32 0, i32 1
  %88 = load %struct.rx*, %struct.rx** %87, align 8
  %89 = getelementptr inbounds %struct.rx, %struct.rx* %88, i32 0, i32 2
  %90 = load %struct.rx*, %struct.rx** %89, align 8
  %91 = getelementptr inbounds %struct.rx, %struct.rx* %90, i32 0, i32 2
  %92 = load %struct.rx*, %struct.rx** %91, align 8
  store %struct.rx* %92, %struct.rx** %4, align 8
  %93 = load %struct.rx*, %struct.rx** %4, align 8
  %94 = getelementptr inbounds %struct.rx, %struct.rx* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.rfd*
  store %struct.rfd* %98, %struct.rfd** %7, align 8
  %99 = load i32, i32* @cb_el, align 4
  %100 = call i32 @cpu_to_le16(i32 %99)
  %101 = load %struct.rfd*, %struct.rfd** %7, align 8
  %102 = getelementptr inbounds %struct.rfd, %struct.rfd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.rfd*, %struct.rfd** %7, align 8
  %106 = getelementptr inbounds %struct.rfd, %struct.rfd* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.nic*, %struct.nic** %3, align 8
  %108 = getelementptr inbounds %struct.nic, %struct.nic* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.rx*, %struct.rx** %4, align 8
  %111 = getelementptr inbounds %struct.rx, %struct.rx* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %114 = call i32 @pci_dma_sync_single_for_device(i32 %109, i32 %112, i32 16, i32 %113)
  %115 = load %struct.nic*, %struct.nic** %3, align 8
  %116 = getelementptr inbounds %struct.nic, %struct.nic* %115, i32 0, i32 1
  %117 = load %struct.rx*, %struct.rx** %116, align 8
  %118 = load %struct.nic*, %struct.nic** %3, align 8
  %119 = getelementptr inbounds %struct.nic, %struct.nic* %118, i32 0, i32 2
  store %struct.rx* %117, %struct.rx** %119, align 8
  %120 = load %struct.nic*, %struct.nic** %3, align 8
  %121 = getelementptr inbounds %struct.nic, %struct.nic* %120, i32 0, i32 3
  store %struct.rx* %117, %struct.rx** %121, align 8
  %122 = load i32, i32* @RU_SUSPENDED, align 4
  %123 = load %struct.nic*, %struct.nic** %3, align 8
  %124 = getelementptr inbounds %struct.nic, %struct.nic* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %85, %74, %26
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.rx* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @e100_rx_alloc_skb(%struct.nic*, %struct.rx*) #1

declare dso_local i32 @e100_rx_clean_list(%struct.nic*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
