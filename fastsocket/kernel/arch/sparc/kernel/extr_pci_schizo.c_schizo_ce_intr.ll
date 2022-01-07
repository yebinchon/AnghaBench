; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c_schizo_ce_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c_schizo_ce_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i32 }

@SCHIZO_CE_AFSR = common dso_local global i64 0, align 8
@SCHIZO_CE_AFAR = common dso_local global i64 0, align 8
@SCHIZO_UEAFSR_ERRPNDG = common dso_local global i64 0, align 8
@SCHIZO_CEAFSR_PPIO = common dso_local global i64 0, align 8
@SCHIZO_CEAFSR_PDRD = common dso_local global i64 0, align 8
@SCHIZO_CEAFSR_PDWR = common dso_local global i64 0, align 8
@SCHIZO_CEAFSR_SPIO = common dso_local global i64 0, align 8
@SCHIZO_CEAFSR_SDMA = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: Correctable Error, primary error type[%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DMA Read\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DMA Write\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"%s: bytemask[%04lx] qword_offset[%lx] SAFARI_AID[%02lx]\0A\00", align 1
@SCHIZO_UEAFSR_BMSK = common dso_local global i64 0, align 8
@SCHIZO_UEAFSR_QOFF = common dso_local global i64 0, align 8
@SCHIZO_UEAFSR_AID = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [69 x i8] c"%s: partial[%d] owned_in[%d] mtag[%lx] mtag_synd[%lx] ecc_sync[%lx]\0A\00", align 1
@SCHIZO_UEAFSR_PARTIAL = common dso_local global i64 0, align 8
@SCHIZO_UEAFSR_OWNEDIN = common dso_local global i64 0, align 8
@SCHIZO_UEAFSR_MTAG = common dso_local global i64 0, align 8
@SCHIZO_UEAFSR_MTAGSYND = common dso_local global i64 0, align 8
@SCHIZO_UEAFSR_ECCSYND = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"%s: CE AFAR [%016lx]\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: CE Secondary errors [\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"(PIO)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"(DMA)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @schizo_ce_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_ce_intr(i32 %0, i8* %1) #0 {
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
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.pci_pbm_info*
  store %struct.pci_pbm_info* %15, %struct.pci_pbm_info** %6, align 8
  %16 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %17 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SCHIZO_CE_AFSR, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %7, align 8
  %21 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %22 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SCHIZO_CE_AFAR, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @upa_readq(i64 %26)
  store i64 %27, i64* %10, align 8
  store i32 1000, i32* %13, align 4
  br label %28

28:                                               ; preds = %40, %2
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @upa_readq(i64 %29)
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @SCHIZO_UEAFSR_ERRPNDG, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i1 [ false, %31 ], [ %39, %36 ]
  br i1 %41, label %28, label %42

42:                                               ; preds = %40
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @SCHIZO_CEAFSR_PPIO, align 8
  %45 = load i64, i64* @SCHIZO_CEAFSR_PDRD, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @SCHIZO_CEAFSR_PDWR, align 8
  %48 = or i64 %46, %47
  %49 = load i64, i64* @SCHIZO_CEAFSR_SPIO, align 8
  %50 = or i64 %48, %49
  %51 = load i64, i64* @SCHIZO_CEAFSR_SDMA, align 8
  %52 = or i64 %50, %51
  %53 = and i64 %43, %52
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* @IRQ_NONE, align 4
  store i32 %57, i32* %3, align 4
  br label %166

58:                                               ; preds = %42
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @upa_writeq(i64 %59, i64 %60)
  %62 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %63 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @SCHIZO_CEAFSR_PPIO, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %85

70:                                               ; preds = %58
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @SCHIZO_CEAFSR_PDRD, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %83

76:                                               ; preds = %70
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @SCHIZO_CEAFSR_PDWR, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  br label %83

83:                                               ; preds = %76, %75
  %84 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %75 ], [ %82, %76 ]
  br label %85

85:                                               ; preds = %83, %69
  %86 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %69 ], [ %84, %83 ]
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %64, i8* %86)
  %88 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %89 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @SCHIZO_UEAFSR_BMSK, align 8
  %93 = and i64 %91, %92
  %94 = lshr i64 %93, 32
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @SCHIZO_UEAFSR_QOFF, align 8
  %97 = and i64 %95, %96
  %98 = lshr i64 %97, 30
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* @SCHIZO_UEAFSR_AID, align 8
  %101 = and i64 %99, %100
  %102 = lshr i64 %101, 24
  %103 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %90, i64 %94, i64 %98, i64 %102)
  %104 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %105 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* @SCHIZO_UEAFSR_PARTIAL, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* @SCHIZO_UEAFSR_OWNEDIN, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* @SCHIZO_UEAFSR_MTAG, align 8
  %121 = and i64 %119, %120
  %122 = lshr i64 %121, 13
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @SCHIZO_UEAFSR_MTAGSYND, align 8
  %125 = and i64 %123, %124
  %126 = lshr i64 %125, 16
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* @SCHIZO_UEAFSR_ECCSYND, align 8
  %129 = and i64 %127, %128
  %130 = lshr i64 %129, 0
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %106, i32 %112, i32 %118, i64 %122, i64 %126, i64 %130)
  %132 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %133 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %134, i64 %135)
  %137 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %138 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %139)
  store i32 0, i32* %12, align 4
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* @SCHIZO_CEAFSR_SPIO, align 8
  %143 = and i64 %141, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %85
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  %148 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %149

149:                                              ; preds = %145, %85
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* @SCHIZO_CEAFSR_SDMA, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  %157 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %149
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %158
  %164 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %165 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %163, %56
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i64 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
