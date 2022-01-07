; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_pci_split_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_pci.c_ahd_pci_split_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@PCIXR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: PCI Split Interrupt - PCI-X status = 0x%x\0A\00", align 1
@DCHSPLTSTAT0 = common dso_local global i32 0, align 4
@DCHSPLTSTAT1 = common dso_local global i32 0, align 4
@SGSPLTSTAT0 = common dso_local global i32 0, align 4
@SGSPLTSTAT1 = common dso_local global i32 0, align 4
@ahd_pci_split_intr.s = internal global i8* null, align 8
@split_status_strings = common dso_local global i8** null, align 8
@split_status_source = common dso_local global i8** null, align 8
@ahd_pci_split_intr.s.1 = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"SG\00", align 1
@CLRINT = common dso_local global i32 0, align 4
@CLRSPLTINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32)* @ahd_pci_split_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_pci_split_intr(%struct.ahd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCIXR_STATUS, align 4
  %17 = call i32 @ahd_pci_read_config(i32 %15, i32 %16, i32 2)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %19 = call i8* @ahd_name(%struct.ahd_softc* %18)
  %20 = load i32, i32* %11, align 4
  %21 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %23 = call i32 @ahd_save_modes(%struct.ahd_softc* %22)
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %88, %2
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ahd_set_modes(%struct.ahd_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %33 = load i32, i32* @DCHSPLTSTAT0, align 4
  %34 = call i32 @ahd_inb(%struct.ahd_softc* %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %39 = load i32, i32* @DCHSPLTSTAT1, align 4
  %40 = call i32 @ahd_inb(%struct.ahd_softc* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %45 = load i32, i32* @DCHSPLTSTAT0, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ahd_outb(%struct.ahd_softc* %44, i32 %45, i32 %49)
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %52 = load i32, i32* @DCHSPLTSTAT1, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ahd_outb(%struct.ahd_softc* %51, i32 %52, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %27
  br label %88

61:                                               ; preds = %27
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %63 = load i32, i32* @SGSPLTSTAT0, align 4
  %64 = call i32 @ahd_inb(%struct.ahd_softc* %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %69 = load i32, i32* @SGSPLTSTAT1, align 4
  %70 = call i32 @ahd_inb(%struct.ahd_softc* %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %75 = load i32, i32* @SGSPLTSTAT0, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ahd_outb(%struct.ahd_softc* %74, i32 %75, i32 %79)
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %82 = load i32, i32* @SGSPLTSTAT1, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ahd_outb(%struct.ahd_softc* %81, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %61, %60
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %24

91:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %151, %91
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %154

95:                                               ; preds = %92
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %147, %95
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 8
  br i1 %98, label %99, label %150

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = shl i32 1, %104
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %99
  %109 = load i8**, i8*** @split_status_strings, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** @ahd_pci_split_intr.s, align 8
  %114 = load i8*, i8** @ahd_pci_split_intr.s, align 8
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %116 = call i8* @ahd_name(%struct.ahd_softc* %115)
  %117 = load i8**, i8*** @split_status_source, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i8*, i8*, ...) @printf(i8* %114, i8* %116, i8* %121)
  br label %123

123:                                              ; preds = %108, %99
  %124 = load i32, i32* %10, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %147

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = shl i32 1, %132
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %127
  %137 = load i8**, i8*** @split_status_strings, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** @ahd_pci_split_intr.s.1, align 8
  %142 = load i8*, i8** @ahd_pci_split_intr.s.1, align 8
  %143 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %144 = call i8* @ahd_name(%struct.ahd_softc* %143)
  %145 = call i32 (i8*, i8*, ...) @printf(i8* %142, i8* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %136, %127
  br label %147

147:                                              ; preds = %146, %126
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %96

150:                                              ; preds = %96
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %92

154:                                              ; preds = %92
  %155 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %156 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @PCIXR_STATUS, align 4
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @ahd_pci_write_config(i32 %157, i32 %158, i32 %159, i32 2)
  %161 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %162 = load i32, i32* @CLRINT, align 4
  %163 = load i32, i32* @CLRSPLTINT, align 4
  %164 = call i32 @ahd_outb(%struct.ahd_softc* %161, i32 %162, i32 %163)
  %165 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @ahd_restore_modes(%struct.ahd_softc* %165, i32 %166)
  ret void
}

declare dso_local i32 @ahd_pci_read_config(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
