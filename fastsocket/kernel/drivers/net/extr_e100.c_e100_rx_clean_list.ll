; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_rx_clean_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_rx_clean_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32*, i32, %struct.rx*, i32, i32, %struct.TYPE_4__ }
%struct.rx = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RU_UNINITIALIZED = common dso_local global i32 0, align 4
@RFD_BUF_LEN = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nic*)* @e100_rx_clean_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_rx_clean_list(%struct.nic* %0) #0 {
  %2 = alloca %struct.nic*, align 8
  %3 = alloca %struct.rx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %2, align 8
  %6 = load %struct.nic*, %struct.nic** %2, align 8
  %7 = getelementptr inbounds %struct.nic, %struct.nic* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @RU_UNINITIALIZED, align 4
  %12 = load %struct.nic*, %struct.nic** %2, align 8
  %13 = getelementptr inbounds %struct.nic, %struct.nic* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.nic*, %struct.nic** %2, align 8
  %15 = getelementptr inbounds %struct.nic, %struct.nic* %14, i32 0, i32 2
  %16 = load %struct.rx*, %struct.rx** %15, align 8
  %17 = icmp ne %struct.rx* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %1
  %19 = load %struct.nic*, %struct.nic** %2, align 8
  %20 = getelementptr inbounds %struct.nic, %struct.nic* %19, i32 0, i32 2
  %21 = load %struct.rx*, %struct.rx** %20, align 8
  store %struct.rx* %21, %struct.rx** %3, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %46, %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load %struct.rx*, %struct.rx** %3, align 8
  %28 = getelementptr inbounds %struct.rx, %struct.rx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.nic*, %struct.nic** %2, align 8
  %33 = getelementptr inbounds %struct.nic, %struct.nic* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rx*, %struct.rx** %3, align 8
  %36 = getelementptr inbounds %struct.rx, %struct.rx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RFD_BUF_LEN, align 4
  %39 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %40 = call i32 @pci_unmap_single(i32 %34, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.rx*, %struct.rx** %3, align 8
  %42 = getelementptr inbounds %struct.rx, %struct.rx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dev_kfree_skb(i64 %43)
  br label %45

45:                                               ; preds = %31, %26
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.rx*, %struct.rx** %3, align 8
  %48 = getelementptr inbounds %struct.rx, %struct.rx* %47, i32 1
  store %struct.rx* %48, %struct.rx** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load %struct.nic*, %struct.nic** %2, align 8
  %53 = getelementptr inbounds %struct.nic, %struct.nic* %52, i32 0, i32 2
  %54 = load %struct.rx*, %struct.rx** %53, align 8
  %55 = call i32 @kfree(%struct.rx* %54)
  %56 = load %struct.nic*, %struct.nic** %2, align 8
  %57 = getelementptr inbounds %struct.nic, %struct.nic* %56, i32 0, i32 2
  store %struct.rx* null, %struct.rx** %57, align 8
  br label %58

58:                                               ; preds = %51, %1
  %59 = load %struct.nic*, %struct.nic** %2, align 8
  %60 = getelementptr inbounds %struct.nic, %struct.nic* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  %61 = load %struct.nic*, %struct.nic** %2, align 8
  %62 = getelementptr inbounds %struct.nic, %struct.nic* %61, i32 0, i32 1
  store i32 0, i32* %62, align 8
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @kfree(%struct.rx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
