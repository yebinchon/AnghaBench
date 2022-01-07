; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_get_pci_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_get_pci_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.qlcnic_pci_info = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.qlcnic_pci_info_le = type { i32, i32, i32, i32, i32, i32, i32 }

@QLCNIC_MAX_PCI_FUNC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_CMD_GET_PCI_INFO = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@QLCNIC_TYPE_NIC = common dso_local global i8* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to get PCI Info%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_get_pci_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_pci_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_pci_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_cmd_args, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_pci_info_le*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_pci_info* %1, %struct.qlcnic_pci_info** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 28, i64* %12, align 8
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* @QLCNIC_MAX_PCI_FUNC, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %13, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %13, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @dma_alloc_coherent(i32* %20, i64 %21, i32* %9, i32 %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %156

29:                                               ; preds = %2
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @memset(i8* %30, i32 0, i64 %31)
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast i8* %33 to %struct.qlcnic_pci_info_le*
  store %struct.qlcnic_pci_info_le* %34, %struct.qlcnic_pci_info_le** %10, align 8
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %36 = load i32, i32* @QLCNIC_CMD_GET_PCI_INFO, align 4
  %37 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @MSD(i32 %38)
  %40 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  store i64 %39, i64* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @LSD(i32 %44)
  %46 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  store i64 %45, i64* %49, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 3
  store i64 %50, i64* %54, align 8
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %56 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %55, %struct.qlcnic_cmd_args* %8)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %136

64:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %128, %64
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @QLCNIC_MAX_PCI_FUNC, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %135

70:                                               ; preds = %65
  %71 = load %struct.qlcnic_pci_info_le*, %struct.qlcnic_pci_info_le** %10, align 8
  %72 = getelementptr inbounds %struct.qlcnic_pci_info_le, %struct.qlcnic_pci_info_le* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @le16_to_cpu(i32 %73)
  %75 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %76 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.qlcnic_pci_info_le*, %struct.qlcnic_pci_info_le** %10, align 8
  %78 = getelementptr inbounds %struct.qlcnic_pci_info_le, %struct.qlcnic_pci_info_le* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @le16_to_cpu(i32 %79)
  %81 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %82 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load %struct.qlcnic_pci_info_le*, %struct.qlcnic_pci_info_le** %10, align 8
  %84 = getelementptr inbounds %struct.qlcnic_pci_info_le, %struct.qlcnic_pci_info_le* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le16_to_cpu(i32 %85)
  %87 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %88 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %90 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** @QLCNIC_TYPE_NIC, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %70
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %94, %70
  %102 = load %struct.qlcnic_pci_info_le*, %struct.qlcnic_pci_info_le** %10, align 8
  %103 = getelementptr inbounds %struct.qlcnic_pci_info_le, %struct.qlcnic_pci_info_le* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @le16_to_cpu(i32 %104)
  %106 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %107 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load %struct.qlcnic_pci_info_le*, %struct.qlcnic_pci_info_le** %10, align 8
  %109 = getelementptr inbounds %struct.qlcnic_pci_info_le, %struct.qlcnic_pci_info_le* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le16_to_cpu(i32 %110)
  %112 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %113 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.qlcnic_pci_info_le*, %struct.qlcnic_pci_info_le** %10, align 8
  %115 = getelementptr inbounds %struct.qlcnic_pci_info_le, %struct.qlcnic_pci_info_le* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le16_to_cpu(i32 %116)
  %118 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %119 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %121 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.qlcnic_pci_info_le*, %struct.qlcnic_pci_info_le** %10, align 8
  %124 = getelementptr inbounds %struct.qlcnic_pci_info_le, %struct.qlcnic_pci_info_le* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ETH_ALEN, align 4
  %127 = call i32 @memcpy(i32 %122, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %101
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  %131 = load %struct.qlcnic_pci_info_le*, %struct.qlcnic_pci_info_le** %10, align 8
  %132 = getelementptr inbounds %struct.qlcnic_pci_info_le, %struct.qlcnic_pci_info_le* %131, i32 1
  store %struct.qlcnic_pci_info_le* %132, %struct.qlcnic_pci_info_le** %10, align 8
  %133 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %5, align 8
  %134 = getelementptr inbounds %struct.qlcnic_pci_info, %struct.qlcnic_pci_info* %133, i32 1
  store %struct.qlcnic_pci_info* %134, %struct.qlcnic_pci_info** %5, align 8
  br label %65

135:                                              ; preds = %65
  br label %145

136:                                              ; preds = %29
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %138 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %136, %135
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %147 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %13, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @dma_free_coherent(i32* %149, i64 %150, i8* %151, i32 %152)
  %154 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %145, %26
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @MSD(i32) #1

declare dso_local i64 @LSD(i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
