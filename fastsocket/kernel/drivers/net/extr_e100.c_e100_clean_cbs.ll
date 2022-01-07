; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_clean_cbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_clean_cbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i64, %struct.cb*, %struct.cb*, %struct.cb*, %struct.cb*, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.cb = type { %struct.cb*, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@cuc_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nic*)* @e100_clean_cbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_clean_cbs(%struct.nic* %0) #0 {
  %2 = alloca %struct.nic*, align 8
  %3 = alloca %struct.cb*, align 8
  store %struct.nic* %0, %struct.nic** %2, align 8
  %4 = load %struct.nic*, %struct.nic** %2, align 8
  %5 = getelementptr inbounds %struct.nic, %struct.nic* %4, i32 0, i32 1
  %6 = load %struct.cb*, %struct.cb** %5, align 8
  %7 = icmp ne %struct.cb* %6, null
  br i1 %7, label %8, label %78

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %51, %8
  %10 = load %struct.nic*, %struct.nic** %2, align 8
  %11 = getelementptr inbounds %struct.nic, %struct.nic* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nic*, %struct.nic** %2, align 8
  %14 = getelementptr inbounds %struct.nic, %struct.nic* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %12, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %9
  %20 = load %struct.nic*, %struct.nic** %2, align 8
  %21 = getelementptr inbounds %struct.nic, %struct.nic* %20, i32 0, i32 2
  %22 = load %struct.cb*, %struct.cb** %21, align 8
  store %struct.cb* %22, %struct.cb** %3, align 8
  %23 = load %struct.cb*, %struct.cb** %3, align 8
  %24 = getelementptr inbounds %struct.cb, %struct.cb* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %19
  %28 = load %struct.nic*, %struct.nic** %2, align 8
  %29 = getelementptr inbounds %struct.nic, %struct.nic* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cb*, %struct.cb** %3, align 8
  %32 = getelementptr inbounds %struct.cb, %struct.cb* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load %struct.cb*, %struct.cb** %3, align 8
  %39 = getelementptr inbounds %struct.cb, %struct.cb* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %46 = call i32 @pci_unmap_single(i32 %30, i32 %37, i32 %44, i32 %45)
  %47 = load %struct.cb*, %struct.cb** %3, align 8
  %48 = getelementptr inbounds %struct.cb, %struct.cb* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dev_kfree_skb(i64 %49)
  br label %51

51:                                               ; preds = %27, %19
  %52 = load %struct.nic*, %struct.nic** %2, align 8
  %53 = getelementptr inbounds %struct.nic, %struct.nic* %52, i32 0, i32 2
  %54 = load %struct.cb*, %struct.cb** %53, align 8
  %55 = getelementptr inbounds %struct.cb, %struct.cb* %54, i32 0, i32 0
  %56 = load %struct.cb*, %struct.cb** %55, align 8
  %57 = load %struct.nic*, %struct.nic** %2, align 8
  %58 = getelementptr inbounds %struct.nic, %struct.nic* %57, i32 0, i32 2
  store %struct.cb* %56, %struct.cb** %58, align 8
  %59 = load %struct.nic*, %struct.nic** %2, align 8
  %60 = getelementptr inbounds %struct.nic, %struct.nic* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  br label %9

63:                                               ; preds = %9
  %64 = load %struct.nic*, %struct.nic** %2, align 8
  %65 = getelementptr inbounds %struct.nic, %struct.nic* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nic*, %struct.nic** %2, align 8
  %68 = getelementptr inbounds %struct.nic, %struct.nic* %67, i32 0, i32 1
  %69 = load %struct.cb*, %struct.cb** %68, align 8
  %70 = load %struct.nic*, %struct.nic** %2, align 8
  %71 = getelementptr inbounds %struct.nic, %struct.nic* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pci_pool_free(i32 %66, %struct.cb* %69, i32 %72)
  %74 = load %struct.nic*, %struct.nic** %2, align 8
  %75 = getelementptr inbounds %struct.nic, %struct.nic* %74, i32 0, i32 1
  store %struct.cb* null, %struct.cb** %75, align 8
  %76 = load %struct.nic*, %struct.nic** %2, align 8
  %77 = getelementptr inbounds %struct.nic, %struct.nic* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %63, %1
  %79 = load i32, i32* @cuc_start, align 4
  %80 = load %struct.nic*, %struct.nic** %2, align 8
  %81 = getelementptr inbounds %struct.nic, %struct.nic* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.nic*, %struct.nic** %2, align 8
  %83 = getelementptr inbounds %struct.nic, %struct.nic* %82, i32 0, i32 1
  %84 = load %struct.cb*, %struct.cb** %83, align 8
  %85 = load %struct.nic*, %struct.nic** %2, align 8
  %86 = getelementptr inbounds %struct.nic, %struct.nic* %85, i32 0, i32 2
  store %struct.cb* %84, %struct.cb** %86, align 8
  %87 = load %struct.nic*, %struct.nic** %2, align 8
  %88 = getelementptr inbounds %struct.nic, %struct.nic* %87, i32 0, i32 3
  store %struct.cb* %84, %struct.cb** %88, align 8
  %89 = load %struct.nic*, %struct.nic** %2, align 8
  %90 = getelementptr inbounds %struct.nic, %struct.nic* %89, i32 0, i32 4
  store %struct.cb* %84, %struct.cb** %90, align 8
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @pci_pool_free(i32, %struct.cb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
