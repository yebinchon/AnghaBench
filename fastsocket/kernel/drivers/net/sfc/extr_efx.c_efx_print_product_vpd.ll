; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_print_product_vpd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_print_product_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@SFC_VPD_LEN = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unable to read VPD\0A\00", align 1
@PCI_VPD_LRDT_RO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"VPD Read-only not found\0A\00", align 1
@PCI_VPD_LRDT_TAG_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"PN\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Part number not found\0A\00", align 1
@PCI_VPD_INFO_FLD_HDR_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Incomplete part number\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Part Number : %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_print_product_vpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_print_product_vpd(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %3, align 8
  %13 = load i32, i32* @SFC_VPD_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = trunc i64 %14 to i32
  %19 = call i32 @pci_read_vpd(%struct.pci_dev* %17, i32 0, i32 %18, i8* %16)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = load i32, i32* @drv, align 4
  %25 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @netif_err(%struct.efx_nic* %23, i32 %24, i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %107

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PCI_VPD_LRDT_RO_DATA, align 4
  %32 = call i32 @pci_vpd_find_tag(i8* %16, i32 0, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %37 = load i32, i32* @drv, align 4
  %38 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netif_err(%struct.efx_nic* %36, i32 %37, i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %107

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %16, i64 %44
  %46 = call i32 @pci_vpd_lrdt_size(i8* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i64, i64* @PCI_VPD_LRDT_TAG_SIZE, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %42
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @pci_vpd_find_info_keyword(i8* %16, i32 %62, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %69 = load i32, i32* @drv, align 4
  %70 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %71 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @netif_err(%struct.efx_nic* %68, i32 %69, i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %107

74:                                               ; preds = %61
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %16, i64 %76
  %78 = call i32 @pci_vpd_info_field_size(i8* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i64, i64* @PCI_VPD_INFO_FLD_HDR_SIZE, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %74
  %90 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %91 = load i32, i32* @drv, align 4
  %92 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %93 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @netif_err(%struct.efx_nic* %90, i32 %91, i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %107

96:                                               ; preds = %74
  %97 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %98 = load i32, i32* @drv, align 4
  %99 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %100 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %16, i64 %104
  %106 = call i32 @netif_info(%struct.efx_nic* %97, i32 %98, i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %102, i8* %105)
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %96, %89, %67, %35, %22
  %108 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %9, align 4
  switch i32 %109, label %111 [
    i32 0, label %110
    i32 1, label %110
  ]

110:                                              ; preds = %107, %107
  ret void

111:                                              ; preds = %107
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pci_read_vpd(%struct.pci_dev*, i32, i32, i8*) #2

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #2

declare dso_local i32 @pci_vpd_find_tag(i8*, i32, i32, i32) #2

declare dso_local i32 @pci_vpd_lrdt_size(i8*) #2

declare dso_local i32 @pci_vpd_find_info_keyword(i8*, i32, i32, i8*) #2

declare dso_local i32 @pci_vpd_info_field_size(i8*) #2

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
