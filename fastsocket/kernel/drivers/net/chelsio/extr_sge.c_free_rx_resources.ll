; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_free_rx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_free_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.freelQ*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.freelQ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@SGE_FREELQ_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge*)* @free_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rx_resources(%struct.sge* %0) #0 {
  %2 = alloca %struct.sge*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.freelQ*, align 8
  store %struct.sge* %0, %struct.sge** %2, align 8
  %7 = load %struct.sge*, %struct.sge** %2, align 8
  %8 = getelementptr inbounds %struct.sge, %struct.sge* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %3, align 8
  %12 = load %struct.sge*, %struct.sge** %2, align 8
  %13 = getelementptr inbounds %struct.sge, %struct.sge* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load %struct.sge*, %struct.sge** %2, align 8
  %19 = getelementptr inbounds %struct.sge, %struct.sge* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.sge*, %struct.sge** %2, align 8
  %28 = getelementptr inbounds %struct.sge, %struct.sge* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sge*, %struct.sge** %2, align 8
  %32 = getelementptr inbounds %struct.sge, %struct.sge* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pci_free_consistent(%struct.pci_dev* %25, i32 %26, i64 %30, i32 %34)
  br label %36

36:                                               ; preds = %17, %1
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %82, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SGE_FREELQ_N, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = load %struct.sge*, %struct.sge** %2, align 8
  %43 = getelementptr inbounds %struct.sge, %struct.sge* %42, i32 0, i32 0
  %44 = load %struct.freelQ*, %struct.freelQ** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %44, i64 %46
  store %struct.freelQ* %47, %struct.freelQ** %6, align 8
  %48 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %49 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %55 = call i32 @free_freelQ_buffers(%struct.pci_dev* %53, %struct.freelQ* %54)
  %56 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %57 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @kfree(i64 %58)
  br label %60

60:                                               ; preds = %52, %41
  %61 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %62 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %67 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %75 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.freelQ*, %struct.freelQ** %6, align 8
  %78 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pci_free_consistent(%struct.pci_dev* %72, i32 %73, i64 %76, i32 %79)
  br label %81

81:                                               ; preds = %65, %60
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %37

85:                                               ; preds = %37
  ret void
}

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i32 @free_freelQ_buffers(%struct.pci_dev*, %struct.freelQ*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
