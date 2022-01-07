; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c_schizo_pcierr_intr_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c_schizo_pcierr_intr_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SCHIZO_PCI_CTRL = common dso_local global i64 0, align 8
@SCHIZO_PCICTRL_BUS_UNUS = common dso_local global i64 0, align 8
@SCHIZO_PCICTRL_TTO_ERR = common dso_local global i64 0, align 8
@SCHIZO_PCICTRL_RTRY_ERR = common dso_local global i64 0, align 8
@SCHIZO_PCICTRL_DTO_ERR = common dso_local global i64 0, align 8
@SCHIZO_PCICTRL_SBH_ERR = common dso_local global i64 0, align 8
@SCHIZO_PCICTRL_SERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: Bus unusable error asserted.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: PCI TRDY# timeout error asserted.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: PCI excessive retry error asserted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: PCI discard timeout error asserted.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%s: PCI streaming byte hole error asserted.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: PCI SERR signal asserted.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@PCI_STATUS_SIG_TARGET_ABORT = common dso_local global i32 0, align 4
@PCI_STATUS_REC_TARGET_ABORT = common dso_local global i32 0, align 4
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@PCI_STATUS_SIG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"%s: PCI bus error, PCI_STATUS[%04x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_pbm_info*)* @schizo_pcierr_intr_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_pcierr_intr_other(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca %struct.pci_pbm_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %2, align 8
  %8 = load i32, i32* @IRQ_NONE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %10 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SCHIZO_PCI_CTRL, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @upa_readq(i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @SCHIZO_PCICTRL_BUS_UNUS, align 8
  %18 = load i64, i64* @SCHIZO_PCICTRL_TTO_ERR, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @SCHIZO_PCICTRL_RTRY_ERR, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @SCHIZO_PCICTRL_DTO_ERR, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @SCHIZO_PCICTRL_SBH_ERR, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @SCHIZO_PCICTRL_SERR, align 8
  %27 = or i64 %25, %26
  %28 = and i64 %16, %27
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %96

31:                                               ; preds = %1
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @upa_writeq(i64 %32, i64 %33)
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @SCHIZO_PCICTRL_BUS_UNUS, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %41 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %31
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @SCHIZO_PCICTRL_TTO_ERR, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %51 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @SCHIZO_PCICTRL_RTRY_ERR, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %61 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @SCHIZO_PCICTRL_DTO_ERR, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %71 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @SCHIZO_PCICTRL_SBH_ERR, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %81 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @SCHIZO_PCICTRL_SERR, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %91 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %1
  %97 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %98 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PCI_STATUS, align 4
  %103 = call i32 @pci_read_config_word(i32 %101, i32 %102, i32* %7)
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %106 = load i32, i32* @PCI_STATUS_SIG_TARGET_ABORT, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @PCI_STATUS_SIG_SYSTEM_ERROR, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %104, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %96
  %117 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %118 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %123 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @PCI_STATUS, align 4
  %128 = call i32 @pci_write_config_word(i32 %126, i32 %127, i32 65535)
  %129 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %116, %96
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i64 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
