; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_alloc_hw_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_alloc_hw_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.pci_dev*, %struct.qlcnic_host_tx_ring*, %struct.qlcnic_recv_context* }
%struct.pci_dev = type { i32 }
%struct.qlcnic_host_tx_ring = type { i8*, i32, i32*, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_sds_ring = type { i8*, i32 }
%struct.qlcnic_host_rds_ring = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate tx consumer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate tx desc ring\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to allocate rds ring [%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to allocate sds ring [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_alloc_hw_resources(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_recv_context*, align 8
  %8 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %9 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %10 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %12, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 5
  %18 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %17, align 8
  store %struct.qlcnic_recv_context* %18, %struct.qlcnic_recv_context** %7, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %71, %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %19
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 4
  %28 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %28, i64 %30
  store %struct.qlcnic_host_tx_ring* %31, %struct.qlcnic_host_tx_ring** %10, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %35 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %34, i32 0, i32 3
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @dma_alloc_coherent(i32* %33, i32 4, i32* %35, i32 %36)
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %25
  %42 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %159

47:                                               ; preds = %25
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %50 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %54 = call i32 @TX_DESC_RINGSIZE(%struct.qlcnic_host_tx_ring* %53)
  %55 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %56 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %55, i32 0, i32 1
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @dma_alloc_coherent(i32* %52, i32 %54, i32* %56, i32 %57)
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %155

67:                                               ; preds = %47
  %68 = load i8*, i8** %4, align 8
  %69 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %10, align 8
  %70 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %19

74:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %111, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %114

81:                                               ; preds = %75
  %82 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %7, align 8
  %83 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %82, i32 0, i32 1
  %84 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %84, i64 %86
  store %struct.qlcnic_host_rds_ring* %87, %struct.qlcnic_host_rds_ring** %8, align 8
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %88, i32 0, i32 3
  %90 = load %struct.pci_dev*, %struct.pci_dev** %89, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %8, align 8
  %93 = call i32 @RCV_DESC_RINGSIZE(%struct.qlcnic_host_rds_ring* %92)
  %94 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %8, align 8
  %95 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %94, i32 0, i32 1
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8* @dma_alloc_coherent(i32* %91, i32 %93, i32* %95, i32 %96)
  store i8* %97, i8** %4, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %81
  %101 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %155

107:                                              ; preds = %81
  %108 = load i8*, i8** %4, align 8
  %109 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %8, align 8
  %110 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %75

114:                                              ; preds = %75
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %151, %114
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %154

121:                                              ; preds = %115
  %122 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %7, align 8
  %123 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %122, i32 0, i32 0
  %124 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %124, i64 %126
  store %struct.qlcnic_host_sds_ring* %127, %struct.qlcnic_host_sds_ring** %9, align 8
  %128 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %128, i32 0, i32 3
  %130 = load %struct.pci_dev*, %struct.pci_dev** %129, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 0
  %132 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %133 = call i32 @STATUS_DESC_RINGSIZE(%struct.qlcnic_host_sds_ring* %132)
  %134 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %135 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %134, i32 0, i32 1
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @dma_alloc_coherent(i32* %131, i32 %133, i32* %135, i32 %136)
  store i8* %137, i8** %4, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %121
  %141 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %155

147:                                              ; preds = %121
  %148 = load i8*, i8** %4, align 8
  %149 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %150 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %115

154:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %159

155:                                              ; preds = %140, %100, %61
  %156 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %157 = call i32 @qlcnic_free_hw_resources(%struct.qlcnic_adapter* %156)
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %155, %154, %41
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @TX_DESC_RINGSIZE(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @RCV_DESC_RINGSIZE(%struct.qlcnic_host_rds_ring*) #1

declare dso_local i32 @STATUS_DESC_RINGSIZE(%struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @qlcnic_free_hw_resources(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
