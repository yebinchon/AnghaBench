; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/firmware/extr_create_fw.c_set_binary_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/firmware/extr_create_fw.c_set_binary_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_orom = type { %struct.sci_oem_params*, %struct.TYPE_5__ }
%struct.sci_oem_params = type { %struct.TYPE_8__, %struct.sci_phy_oem_params*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.sci_phy_oem_params = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@sig = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@num_elements = common dso_local global i32 0, align 4
@mode_type = common dso_local global i32 0, align 4
@max_num_concurrent_dev_spin_up = common dso_local global i32 0, align 4
@enable_ssc = common dso_local global i32 0, align 4
@SCI_MAX_PORTS = common dso_local global i32 0, align 4
@phy_mask = common dso_local global i32** null, align 8
@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@cable_selection = common dso_local global i32** null, align 8
@sas_addr = common dso_local global i32** null, align 8
@afe_tx_amp_control0 = common dso_local global i32 0, align 4
@afe_tx_amp_control1 = common dso_local global i32 0, align 4
@afe_tx_amp_control2 = common dso_local global i32 0, align 4
@afe_tx_amp_control3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_binary_values(%struct.isci_orom* %0) #0 {
  %2 = alloca %struct.isci_orom*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sci_oem_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sci_phy_oem_params*, align 8
  %9 = alloca i32, align 4
  store %struct.isci_orom* %0, %struct.isci_orom** %2, align 8
  %10 = load %struct.isci_orom*, %struct.isci_orom** %2, align 8
  %11 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @sig, align 4
  %15 = load i32, i32* @sig, align 4
  %16 = call i32 @strlen(i32 %15)
  %17 = call i32 @strncpy(i32 %13, i32 %14, i32 %16)
  %18 = load i32, i32* @version, align 4
  %19 = load %struct.isci_orom*, %struct.isci_orom** %2, align 8
  %20 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load %struct.isci_orom*, %struct.isci_orom** %2, align 8
  %23 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 32, i32* %24, align 8
  %25 = load %struct.isci_orom*, %struct.isci_orom** %2, align 8
  %26 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 4, i32* %27, align 4
  %28 = load i32, i32* @num_elements, align 4
  %29 = load %struct.isci_orom*, %struct.isci_orom** %2, align 8
  %30 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %157, %1
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %160

35:                                               ; preds = %32
  %36 = load %struct.isci_orom*, %struct.isci_orom** %2, align 8
  %37 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %36, i32 0, i32 0
  %38 = load %struct.sci_oem_params*, %struct.sci_oem_params** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %38, i64 %40
  store %struct.sci_oem_params* %41, %struct.sci_oem_params** %6, align 8
  store i32 0, i32* %7, align 4
  %42 = load i32, i32* @mode_type, align 4
  %43 = load %struct.sci_oem_params*, %struct.sci_oem_params** %6, align 8
  %44 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @max_num_concurrent_dev_spin_up, align 4
  %47 = load %struct.sci_oem_params*, %struct.sci_oem_params** %6, align 8
  %48 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @enable_ssc, align 4
  %51 = load %struct.sci_oem_params*, %struct.sci_oem_params** %6, align 8
  %52 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %75, %35
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SCI_MAX_PORTS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load i32**, i32*** @phy_mask, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sci_oem_params*, %struct.sci_oem_params** %6, align 8
  %69 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %54

78:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %149, %78
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @SCI_MAX_PHYS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %152

83:                                               ; preds = %79
  %84 = load %struct.sci_oem_params*, %struct.sci_oem_params** %6, align 8
  %85 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %84, i32 0, i32 1
  %86 = load %struct.sci_phy_oem_params*, %struct.sci_phy_oem_params** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.sci_phy_oem_params, %struct.sci_phy_oem_params* %86, i64 %88
  store %struct.sci_phy_oem_params* %89, %struct.sci_phy_oem_params** %8, align 8
  %90 = load i32**, i32*** @cable_selection, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  %99 = load i32**, i32*** @sas_addr, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 32
  %109 = load %struct.sci_phy_oem_params*, %struct.sci_phy_oem_params** %8, align 8
  %110 = getelementptr inbounds %struct.sci_phy_oem_params, %struct.sci_phy_oem_params* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load i32**, i32*** @sas_addr, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sci_phy_oem_params*, %struct.sci_phy_oem_params** %8, align 8
  %122 = getelementptr inbounds %struct.sci_phy_oem_params, %struct.sci_phy_oem_params* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @afe_tx_amp_control0, align 4
  %125 = load %struct.sci_phy_oem_params*, %struct.sci_phy_oem_params** %8, align 8
  %126 = getelementptr inbounds %struct.sci_phy_oem_params, %struct.sci_phy_oem_params* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @afe_tx_amp_control1, align 4
  %128 = load %struct.sci_phy_oem_params*, %struct.sci_phy_oem_params** %8, align 8
  %129 = getelementptr inbounds %struct.sci_phy_oem_params, %struct.sci_phy_oem_params* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @afe_tx_amp_control2, align 4
  %131 = load %struct.sci_phy_oem_params*, %struct.sci_phy_oem_params** %8, align 8
  %132 = getelementptr inbounds %struct.sci_phy_oem_params, %struct.sci_phy_oem_params* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @afe_tx_amp_control3, align 4
  %134 = load %struct.sci_phy_oem_params*, %struct.sci_phy_oem_params** %8, align 8
  %135 = getelementptr inbounds %struct.sci_phy_oem_params, %struct.sci_phy_oem_params* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %9, align 4
  %137 = and i32 %136, 1
  %138 = load i32, i32* %4, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %9, align 4
  %143 = and i32 %142, 2
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 3
  %146 = shl i32 %143, %145
  %147 = load i32, i32* %7, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %83
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %79

152:                                              ; preds = %79
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.sci_oem_params*, %struct.sci_oem_params** %6, align 8
  %155 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  br label %157

157:                                              ; preds = %152
  %158 = load i32, i32* %3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %3, align 4
  br label %32

160:                                              ; preds = %32
  ret void
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
