; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_release_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32, i32, i32, i32, i64, i32, i32, i64, i32, i64, i32, i64, i64, i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_adapter*)* @pvscsi_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_release_resources(%struct.pvscsi_adapter* %0) #0 {
  %2 = alloca %struct.pvscsi_adapter*, align 8
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %2, align 8
  %3 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %4 = call i32 @pvscsi_shutdown_intr(%struct.pvscsi_adapter* %3)
  %5 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %5, i32 0, i32 14
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %10, i32 0, i32 14
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @destroy_workqueue(i64 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %15, i32 0, i32 13
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %23, i32 0, i32 13
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pci_iounmap(i32 %22, i64 %25)
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pci_release_regions(i32 %30)
  %32 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %32, i32 0, i32 12
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %38 = call i32 @pvscsi_free_sgls(%struct.pvscsi_adapter* %37)
  %39 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %39, i32 0, i32 12
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @kfree(i64 %41)
  br label %43

43:                                               ; preds = %36, %27
  %44 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %53, i32 0, i32 11
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pci_free_consistent(i32 %51, i32 %52, i64 %55, i32 %58)
  br label %60

60:                                               ; preds = %48, %43
  %61 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pci_free_consistent(i32 %68, i32 %73, i64 %76, i32 %79)
  br label %81

81:                                               ; preds = %65, %60
  %82 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %96 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @pci_free_consistent(i32 %89, i32 %94, i64 %97, i32 %100)
  br label %102

102:                                              ; preds = %86, %81
  %103 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  %108 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %112 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @pci_free_consistent(i32 %110, i32 %115, i64 %118, i32 %121)
  br label %123

123:                                              ; preds = %107, %102
  ret void
}

declare dso_local i32 @pvscsi_shutdown_intr(%struct.pvscsi_adapter*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @pci_iounmap(i32, i64) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pvscsi_free_sgls(%struct.pvscsi_adapter*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
