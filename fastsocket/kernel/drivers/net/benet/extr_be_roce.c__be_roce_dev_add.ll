; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_roce.c__be_roce_dev_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_roce.c__be_roce_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.be_dev_info*)* }
%struct.be_dev_info = type { i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, %struct.pci_dev*, i64, i64 }
%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pci_dev = type { i64 }
%struct.be_adapter = type { i32, i32, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32, %struct.pci_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ocrdma_drv = common dso_local global %struct.TYPE_10__* null, align 8
@OC_DEVICE_ID5 = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@BE_INTERRUPT_MODE_MSIX = common dso_local global i32 0, align 4
@MAX_MSIX_VECTORS = common dso_local global i32 0, align 4
@BE_INTERRUPT_MODE_INTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @_be_roce_dev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_be_roce_dev_add(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_dev_info, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %7, i32 0, i32 9
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ocrdma_drv, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %135

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OC_DEVICE_ID5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %21 = call i64 @msix_enabled(%struct.be_adapter* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %135

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = call i64 @pci_resource_start(%struct.pci_dev* %25, i32 2)
  %27 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 11
  store i64 %26, i64* %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %29 = call i64 @pci_resource_len(%struct.pci_dev* %28, i32 2)
  %30 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 10
  store i64 %29, i64* %30, align 8
  br label %34

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 11
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 10
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 9
  %37 = load %struct.pci_dev*, %struct.pci_dev** %36, align 8
  %38 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 9
  store %struct.pci_dev* %37, %struct.pci_dev** %38, align 8
  %39 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 7
  store i32 %46, i32* %47, align 8
  %48 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 6
  store i32 %51, i32* %52, align 4
  %53 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 5
  store i32 %56, i32* %57, align 8
  %58 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %58, i32 0, i32 6
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 4
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %61, align 8
  %62 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %64, i32 0, i32 6
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = call i32 @memcpy(i32 %63, i32 %68, i32 %69)
  %71 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %76 = call i64 @msix_enabled(%struct.be_adapter* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %34
  %79 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @BE_INTERRUPT_MODE_MSIX, align 4
  %87 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @MAX_MSIX_VECTORS, align 4
  %90 = call i32 @min(i32 %88, i32 %89)
  %91 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %119, %78
  %99 = load i32, i32* %4, align 4
  %100 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %105, i32 0, i32 3
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %119

119:                                              ; preds = %104
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %98

122:                                              ; preds = %98
  br label %128

123:                                              ; preds = %34
  %124 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i32 0, i32* %125, align 8
  %126 = load i32, i32* @BE_INTERRUPT_MODE_INTX, align 4
  %127 = getelementptr inbounds %struct.be_dev_info, %struct.be_dev_info* %3, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  br label %128

128:                                              ; preds = %123, %122
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ocrdma_drv, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32 (%struct.be_dev_info*)*, i32 (%struct.be_dev_info*)** %130, align 8
  %132 = call i32 %131(%struct.be_dev_info* %3)
  %133 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %134 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %128, %23, %12
  ret void
}

declare dso_local i64 @msix_enabled(%struct.be_adapter*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
