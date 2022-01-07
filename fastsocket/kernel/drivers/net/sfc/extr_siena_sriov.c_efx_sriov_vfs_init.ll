; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_vfs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_vfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.efx_vf*, %struct.pci_dev* }
%struct.efx_vf = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_EXT_CAP_ID_SRIOV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PCI_SRIOV_VF_OFFSET = common dso_local global i64 0, align 8
@PCI_SRIOV_VF_STRIDE = common dso_local global i64 0, align 8
@EFX_VF_BUFTBL_PER_VI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%04x:%02x:%02x.%d\00", align 1
@EFX_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_sriov_vfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_sriov_vfs_init(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.efx_vf*, align 8
  %12 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %4, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* @PCI_EXT_CAP_ID_SRIOV, align 4
  %18 = call i32 @pci_find_ext_capability(%struct.pci_dev* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %107

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @PCI_SRIOV_VF_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %25, i64 %29, i32* %9)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* @PCI_SRIOV_VF_STRIDE, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @pci_read_config_word(%struct.pci_dev* %31, i64 %35, i32* %10)
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %42, %43
  store i32 %44, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %99, %24
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %48 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %102

51:                                               ; preds = %45
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 2
  %54 = load %struct.efx_vf*, %struct.efx_vf** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %54, i64 %56
  store %struct.efx_vf* %57, %struct.efx_vf** %11, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.efx_vf*, %struct.efx_vf** %11, align 8
  %60 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @EFX_VF_BUFTBL_PER_VI, align 4
  %62 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %63 = call i32 @efx_vf_size(%struct.efx_nic* %62)
  %64 = mul i32 %61, %63
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.efx_vf*, %struct.efx_vf** %11, align 8
  %69 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.efx_vf*, %struct.efx_vf** %11, align 8
  %71 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = call i32 @pci_domain_nr(%struct.TYPE_2__* %75)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @PCI_SLOT(i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @PCI_FUNC(i32 %84)
  %86 = call i32 @snprintf(i32 %72, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %81, i32 %83, i32 %85)
  %87 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %88 = load %struct.efx_vf*, %struct.efx_vf** %11, align 8
  %89 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %88, i32 0, i32 2
  %90 = load i32, i32* @EFX_PAGE_SIZE, align 4
  %91 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %87, i32* %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %51
  br label %103

95:                                               ; preds = %51
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %6, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %5, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %45

102:                                              ; preds = %45
  store i32 0, i32* %2, align 4
  br label %107

103:                                              ; preds = %94
  %104 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %105 = call i32 @efx_sriov_vfs_fini(%struct.efx_nic* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %102, %21
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @efx_vf_size(%struct.efx_nic*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_2__*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @efx_sriov_vfs_fini(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
