; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_probe_ext_scbram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_pci.c_ahc_probe_ext_scbram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEQCTL = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRPARERR = common dso_local global i32 0, align 4
@CLRBRKADRINT = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@BRKADRINT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@MPARERR = common dso_local global i32 0, align 4
@AHC_LARGE_SCBS = common dso_local global i32 0, align 4
@AHC_SCB_BTT = common dso_local global i32 0, align 4
@PERRORDIS = common dso_local global i32 0, align 4
@FAILDIS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"%s: External SRAM, %s access%s, %dbytes/SCB\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c", parity checking enabled\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_probe_ext_scbram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_probe_ext_scbram(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %3, align 4
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %14 = call i64 @ahc_ext_scbram_present(%struct.ahc_softc* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %134

17:                                               ; preds = %1
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ahc_scbram_config(%struct.ahc_softc* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %25 = call i32 @ahc_probe_scbs(%struct.ahc_softc* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %134

29:                                               ; preds = %17
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %32 = load i32, i32* @SEQCTL, align 4
  %33 = call i32 @ahc_outb(%struct.ahc_softc* %31, i32 %32, i32 0)
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %35 = load i32, i32* @CLRINT, align 4
  %36 = load i32, i32* @CLRPARERR, align 4
  %37 = call i32 @ahc_outb(%struct.ahc_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %39 = load i32, i32* @CLRINT, align 4
  %40 = load i32, i32* @CLRBRKADRINT, align 4
  %41 = call i32 @ahc_outb(%struct.ahc_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ahc_scbram_config(%struct.ahc_softc* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %49 = call i32 @ahc_probe_scbs(%struct.ahc_softc* %48)
  store i32 %49, i32* %3, align 4
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %51 = load i32, i32* @INTSTAT, align 4
  %52 = call i32 @ahc_inb(%struct.ahc_softc* %50, i32 %51)
  %53 = load i32, i32* @BRKADRINT, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %29
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %58 = load i32, i32* @ERROR, align 4
  %59 = call i32 @ahc_inb(%struct.ahc_softc* %57, i32 %58)
  %60 = load i32, i32* @MPARERR, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56, %29
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %56
  %66 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %67 = load i32, i32* @CLRINT, align 4
  %68 = load i32, i32* @CLRPARERR, align 4
  %69 = call i32 @ahc_outb(%struct.ahc_softc* %66, i32 %67, i32 %68)
  %70 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %71 = load i32, i32* @CLRINT, align 4
  %72 = load i32, i32* @CLRBRKADRINT, align 4
  %73 = call i32 @ahc_outb(%struct.ahc_softc* %70, i32 %71, i32 %72)
  %74 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ahc_scbram_config(%struct.ahc_softc* %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %81 = call i32 @ahc_probe_scbs(%struct.ahc_softc* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %65
  %86 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %87 = load i32, i32* @INTSTAT, align 4
  %88 = call i32 @ahc_inb(%struct.ahc_softc* %86, i32 %87)
  %89 = load i32, i32* @BRKADRINT, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %94 = load i32, i32* @ERROR, align 4
  %95 = call i32 @ahc_inb(%struct.ahc_softc* %93, i32 %94)
  %96 = load i32, i32* @MPARERR, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92, %85
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %99, %92, %65
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %103 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AHC_LARGE_SCBS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %101
  %109 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i32 @ahc_scbram_config(%struct.ahc_softc* %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %116 = call i32 @ahc_probe_scbs(%struct.ahc_softc* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %3, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %108
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* %3, align 4
  %124 = icmp sge i32 %123, 64
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32, i32* @AHC_SCB_BTT, align 4
  %127 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %128 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %120
  br label %132

132:                                              ; preds = %131, %108
  br label %133

133:                                              ; preds = %132, %101
  br label %134

134:                                              ; preds = %133, %28, %16
  %135 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %136 = load i32, i32* @SEQCTL, align 4
  %137 = load i32, i32* @PERRORDIS, align 4
  %138 = load i32, i32* @FAILDIS, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @ahc_outb(%struct.ahc_softc* %135, i32 %136, i32 %139)
  %141 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %142 = load i32, i32* @CLRINT, align 4
  %143 = load i32, i32* @CLRPARERR, align 4
  %144 = call i32 @ahc_outb(%struct.ahc_softc* %141, i32 %142, i32 %143)
  %145 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %146 = load i32, i32* @CLRINT, align 4
  %147 = load i32, i32* @CLRBRKADRINT, align 4
  %148 = call i32 @ahc_outb(%struct.ahc_softc* %145, i32 %146, i32 %147)
  %149 = load i64, i64* @bootverbose, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %134
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %156 = call i8* @ahc_name(%struct.ahc_softc* %155)
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 64, i32 32
  %169 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %156, i8* %160, i8* %164, i32 %168)
  br label %170

170:                                              ; preds = %154, %151, %134
  %171 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @ahc_scbram_config(%struct.ahc_softc* %171, i32 %172, i32 %173, i32 %174, i32 %175)
  ret void
}

declare dso_local i64 @ahc_ext_scbram_present(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_scbram_config(%struct.ahc_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_probe_scbs(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
