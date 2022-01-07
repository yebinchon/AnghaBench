; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_pci_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.bfa_pcidev }
%struct.bfa_pcidev = type { i32, i32 }

@BFI_PORT_MODE_FC = common dso_local global i8* null, align 8
@BFI_ASIC_MODE_FC = common dso_local global i8* null, align 8
@BFI_ASIC_GEN_CT = common dso_local global i64 0, align 8
@BFI_PORT_MODE_ETH = common dso_local global i8* null, align 8
@BFI_ASIC_MODE_ETH = common dso_local global i8* null, align 8
@BFA_MODE_CNA = common dso_local global i8* null, align 8
@BFA_CM_CNA = common dso_local global i8* null, align 8
@BFI_ASIC_GEN_CT2 = common dso_local global i64 0, align 8
@BFI_PCIFN_CLASS_FC = common dso_local global i32 0, align 4
@BFA_PCI_CT2_SSID_FC = common dso_local global i32 0, align 4
@BFI_ASIC_MODE_FC16 = common dso_local global i8* null, align 8
@BFA_MODE_HBA = common dso_local global i8* null, align 8
@BFA_CM_HBA = common dso_local global i8* null, align 8
@BFA_PCI_CT2_SSID_FCoE = common dso_local global i32 0, align 4
@BFA_MODE_NIC = common dso_local global i8* null, align 8
@BFA_CM_NIC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_ioc_pci_init(%struct.bfa_ioc* %0, %struct.bfa_pcidev* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_ioc*, align 8
  %5 = alloca %struct.bfa_pcidev*, align 8
  %6 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %4, align 8
  store %struct.bfa_pcidev* %1, %struct.bfa_pcidev** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %10, i32 0, i32 9
  %12 = load %struct.bfa_pcidev*, %struct.bfa_pcidev** %5, align 8
  %13 = bitcast %struct.bfa_pcidev* %11 to i8*
  %14 = bitcast %struct.bfa_pcidev* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = load i8*, i8** @BFI_PORT_MODE_FC, align 8
  %16 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %16, i32 0, i32 7
  store i8* %15, i8** %17, align 8
  %18 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %19 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %18, i32 0, i32 8
  store i8* %15, i8** %19, align 8
  %20 = load i8*, i8** @BFI_ASIC_MODE_FC, align 8
  %21 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load %struct.bfa_pcidev*, %struct.bfa_pcidev** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_pcidev, %struct.bfa_pcidev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %107 [
    i32 128, label %26
    i32 129, label %46
  ]

26:                                               ; preds = %3
  %27 = load i64, i64* @BFI_ASIC_GEN_CT, align 8
  %28 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** @BFI_PORT_MODE_ETH, align 8
  %31 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %32 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %33, i32 0, i32 8
  store i8* %30, i8** %34, align 8
  %35 = load i8*, i8** @BFI_ASIC_MODE_ETH, align 8
  %36 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @BFA_MODE_CNA, align 8
  %39 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %40 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %42 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %41, i32 0, i32 5
  store i8* %38, i8** %42, align 8
  %43 = load i8*, i8** @BFA_CM_CNA, align 8
  %44 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %45 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  br label %109

46:                                               ; preds = %3
  %47 = load i64, i64* @BFI_ASIC_GEN_CT2, align 8
  %48 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %49 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @BFI_PCIFN_CLASS_FC, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %46
  %54 = load %struct.bfa_pcidev*, %struct.bfa_pcidev** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_pcidev, %struct.bfa_pcidev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BFA_PCI_CT2_SSID_FC, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load i8*, i8** @BFI_ASIC_MODE_FC16, align 8
  %61 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %62 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %64 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load i8*, i8** @BFA_MODE_HBA, align 8
  %66 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %67 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %69 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %68, i32 0, i32 5
  store i8* %65, i8** %69, align 8
  %70 = load i8*, i8** @BFA_CM_HBA, align 8
  %71 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %72 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  br label %106

73:                                               ; preds = %53, %46
  %74 = load i8*, i8** @BFI_PORT_MODE_ETH, align 8
  %75 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %76 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  %77 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %78 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %77, i32 0, i32 8
  store i8* %74, i8** %78, align 8
  %79 = load i8*, i8** @BFI_ASIC_MODE_ETH, align 8
  %80 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %81 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load %struct.bfa_pcidev*, %struct.bfa_pcidev** %5, align 8
  %83 = getelementptr inbounds %struct.bfa_pcidev, %struct.bfa_pcidev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BFA_PCI_CT2_SSID_FCoE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %73
  %88 = load i8*, i8** @BFA_MODE_CNA, align 8
  %89 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %90 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %92 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %91, i32 0, i32 5
  store i8* %88, i8** %92, align 8
  %93 = load i8*, i8** @BFA_CM_CNA, align 8
  %94 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %95 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  br label %105

96:                                               ; preds = %73
  %97 = load i8*, i8** @BFA_MODE_NIC, align 8
  %98 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %99 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %101 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %100, i32 0, i32 5
  store i8* %97, i8** %101, align 8
  %102 = load i8*, i8** @BFA_CM_NIC, align 8
  %103 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %104 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %96, %87
  br label %106

106:                                              ; preds = %105, %59
  br label %109

107:                                              ; preds = %3
  %108 = call i32 @BUG_ON(i32 1)
  br label %109

109:                                              ; preds = %107, %106, %26
  %110 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %111 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BFI_ASIC_GEN_CT, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %117 = call i32 @bfa_nw_ioc_set_ct_hwif(%struct.bfa_ioc* %116)
  br label %130

118:                                              ; preds = %109
  %119 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %120 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @BFI_ASIC_GEN_CT2, align 8
  %123 = icmp ne i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @WARN_ON(i32 %124)
  %126 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %127 = call i32 @bfa_nw_ioc_set_ct2_hwif(%struct.bfa_ioc* %126)
  %128 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %129 = call i32 @bfa_nw_ioc_ct2_poweron(%struct.bfa_ioc* %128)
  br label %130

130:                                              ; preds = %118, %115
  %131 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %132 = call i32 @bfa_ioc_map_port(%struct.bfa_ioc* %131)
  %133 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %134 = call i32 @bfa_ioc_reg_init(%struct.bfa_ioc* %133)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @bfa_nw_ioc_set_ct_hwif(%struct.bfa_ioc*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @bfa_nw_ioc_set_ct2_hwif(%struct.bfa_ioc*) #2

declare dso_local i32 @bfa_nw_ioc_ct2_poweron(%struct.bfa_ioc*) #2

declare dso_local i32 @bfa_ioc_map_port(%struct.bfa_ioc*) #2

declare dso_local i32 @bfa_ioc_reg_init(%struct.bfa_ioc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
