; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_request_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, i64, i32, %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue*, %struct.vmxnet3_intr, %struct.TYPE_4__* }
%struct.vmxnet3_rx_queue = type { i8*, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vmxnet3_intr = type { i64, i8*, i32, i32, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@vmxnet3_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to request irq (intr type:%d), error %d\0A\00", align 1
@UPT1_IML_ADAPTIVE = common dso_local global i32 0, align 4
@VMXNET3_IT_MSIX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"intr type %u, mode %u, %u vectors allocated\0A\00", align 1
@VMXNET3_INTR_BUDDYSHARE = common dso_local global i64 0, align 8
@VMXNET3_INTR_TXSHARE = common dso_local global i64 0, align 8
@VMXNET3_IT_MSI = common dso_local global i64 0, align 8
@vmxnet3_msix_event = common dso_local global i32 0, align 4
@vmxnet3_msix_rx = common dso_local global i32 0, align 4
@vmxnet3_msix_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_adapter*)* @vmxnet3_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_request_irqs(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca %struct.vmxnet3_adapter*, align 8
  %3 = alloca %struct.vmxnet3_intr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmxnet3_rx_queue*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %2, align 8
  %8 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %8, i32 0, i32 6
  store %struct.vmxnet3_intr* %9, %struct.vmxnet3_intr** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %10, i32 0, i32 2
  store i32 1, i32* %11, align 8
  %12 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %12, i32 0, i32 7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @vmxnet3_intr, align 4
  %18 = load i32, i32* @IRQF_SHARED, align 4
  %19 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %19, i32 0, i32 3
  %21 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %20, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %24, i32 0, i32 3
  %26 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %25, align 8
  %27 = call i32 @request_irq(i32 %16, i32 %17, i32 %18, i8* %23, %struct.vmxnet3_rx_queue* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %35, i32 0, i32 3
  %37 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %36, align 8
  %38 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @netdev_err(%struct.vmxnet3_rx_queue* %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %41)
  br label %138

43:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %51, i32 0, i32 4
  %53 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %53, i64 %55
  store %struct.vmxnet3_rx_queue* %56, %struct.vmxnet3_rx_queue** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %7, align 8
  %59 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %60, %63
  %65 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %7, align 8
  %66 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %44

70:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %74 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load i32, i32* @UPT1_IML_ADAPTIVE, align 4
  %79 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %80 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %71

88:                                               ; preds = %71
  %89 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VMXNET3_IT_MSIX, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %88
  %96 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %114, %95
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %107 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %106, i32 0, i32 5
  %108 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %108, i64 %110
  %112 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %99

117:                                              ; preds = %99
  %118 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %119 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %118, i32 0, i32 4
  %120 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %119, align 8
  %121 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %120, i64 0
  %122 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  br label %124

124:                                              ; preds = %117, %88
  %125 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %126 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %125, i32 0, i32 3
  %127 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %126, align 8
  %128 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %129 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %132 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.vmxnet3_intr*, %struct.vmxnet3_intr** %3, align 8
  %135 = getelementptr inbounds %struct.vmxnet3_intr, %struct.vmxnet3_intr* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @netdev_info(%struct.vmxnet3_rx_queue* %127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %130, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %124, %34
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.vmxnet3_rx_queue*) #1

declare dso_local i32 @netdev_err(%struct.vmxnet3_rx_queue*, i8*, i64, i32) #1

declare dso_local i32 @netdev_info(%struct.vmxnet3_rx_queue*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
