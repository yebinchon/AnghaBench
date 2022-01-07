; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c_schizo_safarierr_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c_schizo_safarierr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32, i64 }

@SCHIZO_SAFARI_ERRLOG = common dso_local global i64 0, align 8
@SAFARI_ERRLOG_ERROUT = common dso_local global i32 0, align 4
@BUS_ERROR_UNMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%s: Unexpected Safari/JBUS error interrupt, errlog[%016llx]\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"%s: Safari/JBUS interrupt, UNMAPPED error, interrogating IOMMUs.\0A\00", align 1
@SAFARI_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @schizo_safarierr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_safarierr_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_pbm_info*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.pci_pbm_info*
  store %struct.pci_pbm_info* %9, %struct.pci_pbm_info** %6, align 8
  %10 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %11 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SCHIZO_SAFARI_ERRLOG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @upa_readq(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SAFARI_ERRLOG_ERROUT, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %21 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SCHIZO_SAFARI_ERRLOG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @upa_writeq(i32 %19, i64 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BUS_ERROR_UNMAP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %32 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %2
  %38 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %39 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %43 = load i32, i32* @SAFARI_ERR, align 4
  %44 = call i32 @schizo_check_iommu_error(%struct.pci_pbm_info* %42, i32 %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i32, i64) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @schizo_check_iommu_error(%struct.pci_pbm_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
