; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_cna_fwimg.c_cna_get_firmware_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_cna_fwimg.c_cna_get_firmware_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }

@BFA_PCI_DEVICE_ID_CT2 = common dso_local global i64 0, align 8
@bfi_image_ct2_cna_size = common dso_local global i64 0, align 8
@bfi_image_ct2_cna = common dso_local global i32* null, align 8
@CNA_FW_FILE_CT2 = common dso_local global i32 0, align 4
@bfi_image_ct_cna_size = common dso_local global i64 0, align 8
@bfi_image_ct_cna = common dso_local global i32* null, align 8
@CNA_FW_FILE_CT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cna_get_firmware_buf(%struct.pci_dev* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BFA_PCI_DEVICE_ID_CT2, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i64, i64* @bfi_image_ct2_cna_size, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load i32, i32* @CNA_FW_FILE_CT2, align 4
  %15 = call i32 @cna_read_firmware(%struct.pci_dev* %13, i32** @bfi_image_ct2_cna, i64* @bfi_image_ct2_cna_size, i32 %14)
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32*, i32** @bfi_image_ct2_cna, align 8
  store i32* %17, i32** %2, align 8
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @bfa_asic_id_ct(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i64, i64* @bfi_image_ct_cna_size, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load i32, i32* @CNA_FW_FILE_CT, align 4
  %30 = call i32 @cna_read_firmware(%struct.pci_dev* %28, i32** @bfi_image_ct_cna, i64* @bfi_image_ct_cna_size, i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32*, i32** @bfi_image_ct_cna, align 8
  store i32* %32, i32** %2, align 8
  br label %35

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  store i32* null, i32** %2, align 8
  br label %35

35:                                               ; preds = %34, %31, %16
  %36 = load i32*, i32** %2, align 8
  ret i32* %36
}

declare dso_local i32 @cna_read_firmware(%struct.pci_dev*, i32**, i64*, i32) #1

declare dso_local i64 @bfa_asic_id_ct(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
