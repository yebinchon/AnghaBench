; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_psycho.c_psycho_ue_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_psycho.c_psycho_ue_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, %struct.pci_pbm_info*, i32 }

@PSYCHO_UE_AFSR = common dso_local global i64 0, align 8
@PSYCHO_UE_AFAR = common dso_local global i64 0, align 8
@PSYCHO_UEAFSR_PPIO = common dso_local global i64 0, align 8
@PSYCHO_UEAFSR_PDRD = common dso_local global i64 0, align 8
@PSYCHO_UEAFSR_PDWR = common dso_local global i64 0, align 8
@PSYCHO_UEAFSR_SPIO = common dso_local global i64 0, align 8
@PSYCHO_UEAFSR_SDRD = common dso_local global i64 0, align 8
@PSYCHO_UEAFSR_SDWR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Uncorrectable Error, primary error type[%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DMA Read\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DMA Write\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"%s: bytemask[%04lx] dword_offset[%lx] UPA_MID[%02lx] was_block(%d)\0A\00", align 1
@PSYCHO_UEAFSR_BMSK = common dso_local global i64 0, align 8
@PSYCHO_UEAFSR_DOFF = common dso_local global i64 0, align 8
@PSYCHO_UEAFSR_MID = common dso_local global i64 0, align 8
@PSYCHO_UEAFSR_BLK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: UE AFAR [%016lx]\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: UE Secondary errors [\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"(PIO)\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"(DMA Read)\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"(DMA Write)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@UE_ERR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @psycho_ue_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psycho_ue_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_pbm_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.pci_pbm_info*
  store %struct.pci_pbm_info* %14, %struct.pci_pbm_info** %6, align 8
  %15 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %16 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PSYCHO_UE_AFSR, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %21 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PSYCHO_UE_AFAR, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @upa_readq(i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @upa_readq(i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @PSYCHO_UEAFSR_PPIO, align 8
  %31 = load i64, i64* @PSYCHO_UEAFSR_PDRD, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @PSYCHO_UEAFSR_PDWR, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* @PSYCHO_UEAFSR_SPIO, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* @PSYCHO_UEAFSR_SDRD, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* @PSYCHO_UEAFSR_SDWR, align 8
  %40 = or i64 %38, %39
  %41 = and i64 %29, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %3, align 4
  br label %159

46:                                               ; preds = %2
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @upa_writeq(i64 %47, i64 %48)
  %50 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %51 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @PSYCHO_UEAFSR_PPIO, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %73

58:                                               ; preds = %46
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @PSYCHO_UEAFSR_PDRD, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %71

64:                                               ; preds = %58
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @PSYCHO_UEAFSR_PDWR, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  br label %71

71:                                               ; preds = %64, %63
  %72 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %63 ], [ %70, %64 ]
  br label %73

73:                                               ; preds = %71, %57
  %74 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %57 ], [ %72, %71 ]
  %75 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %74)
  %76 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %77 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @PSYCHO_UEAFSR_BMSK, align 8
  %81 = and i64 %79, %80
  %82 = lshr i64 %81, 32
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @PSYCHO_UEAFSR_DOFF, align 8
  %85 = and i64 %83, %84
  %86 = lshr i64 %85, 29
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @PSYCHO_UEAFSR_MID, align 8
  %89 = and i64 %87, %88
  %90 = lshr i64 %89, 24
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @PSYCHO_UEAFSR_BLK, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %78, i64 %82, i64 %86, i64 %90, i32 %96)
  %98 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %99 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %100, i64 %101)
  %103 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %104 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  store i32 0, i32* %12, align 4
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* @PSYCHO_UEAFSR_SPIO, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %73
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  %114 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %73
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @PSYCHO_UEAFSR_SDRD, align 8
  %118 = and i64 %116, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  %123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* @PSYCHO_UEAFSR_SDWR, align 8
  %127 = and i64 %125, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %124
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %133
  %139 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %140 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load i32, i32* @UE_ERR, align 4
  %144 = call i32 @psycho_check_iommu_error(%struct.pci_pbm_info* %140, i64 %141, i64 %142, i32 %143)
  %145 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %146 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %145, i32 0, i32 1
  %147 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %146, align 8
  %148 = icmp ne %struct.pci_pbm_info* %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %138
  %150 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %151 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %150, i32 0, i32 1
  %152 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %151, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %10, align 8
  %155 = load i32, i32* @UE_ERR, align 4
  %156 = call i32 @psycho_check_iommu_error(%struct.pci_pbm_info* %152, i64 %153, i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %149, %138
  %158 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %44
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @psycho_check_iommu_error(%struct.pci_pbm_info*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
