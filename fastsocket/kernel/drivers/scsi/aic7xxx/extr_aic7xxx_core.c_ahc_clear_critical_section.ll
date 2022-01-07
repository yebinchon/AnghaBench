; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_clear_critical_section.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_clear_critical_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i64, i32, i32, i32, %struct.cs* }
%struct.cs = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SEQADDR0 = common dso_local global i32 0, align 4
@SEQADDR1 = common dso_local global i32 0, align 4
@AHC_MAX_STEPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: Infinite loop in critical section\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"critical section loop\00", align 1
@SIMODE0 = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@AHC_DT = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4
@SEQCTL = common dso_local global i32 0, align 4
@STEP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i32 0, align 4
@HCNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_clear_critical_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_clear_critical_section(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %176

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %157, %15
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %19 = load i32, i32* @SEQADDR0, align 4
  %20 = call i32 @ahc_inb(%struct.ahc_softc* %18, i32 %19)
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %22 = load i32, i32* @SEQADDR1, align 4
  %23 = call i32 @ahc_inb(%struct.ahc_softc* %21, i32 %22)
  %24 = shl i32 %23, 8
  %25 = or i32 %20, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %17
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 4
  %34 = load %struct.cs*, %struct.cs** %33, align 8
  store %struct.cs* %34, %struct.cs** %7, align 8
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %56, %31
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = load %struct.cs*, %struct.cs** %7, align 8
  %44 = getelementptr inbounds %struct.cs, %struct.cs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.cs*, %struct.cs** %7, align 8
  %50 = getelementptr inbounds %struct.cs, %struct.cs* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %61

55:                                               ; preds = %48, %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load %struct.cs*, %struct.cs** %7, align 8
  %60 = getelementptr inbounds %struct.cs, %struct.cs* %59, i32 1
  store %struct.cs* %60, %struct.cs** %7, align 8
  br label %35

61:                                               ; preds = %54, %35
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %158

69:                                               ; preds = %61
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @AHC_MAX_STEPS, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %75 = call i8* @ahc_name(%struct.ahc_softc* %74)
  %76 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %78 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %77)
  %79 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %73, %69
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %127

86:                                               ; preds = %80
  %87 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %88 = load i32, i32* @SIMODE0, align 4
  %89 = call i32 @ahc_inb(%struct.ahc_softc* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %91 = load i32, i32* @SIMODE0, align 4
  %92 = call i32 @ahc_outb(%struct.ahc_softc* %90, i32 %91, i32 0)
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %94 = load i32, i32* @SIMODE1, align 4
  %95 = call i32 @ahc_inb(%struct.ahc_softc* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %97 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AHC_DT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %86
  %103 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %104 = load i32, i32* @SIMODE1, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @ENBUSFREE, align 4
  %107 = and i32 %105, %106
  %108 = call i32 @ahc_outb(%struct.ahc_softc* %103, i32 %104, i32 %107)
  br label %113

109:                                              ; preds = %86
  %110 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %111 = load i32, i32* @SIMODE1, align 4
  %112 = call i32 @ahc_outb(%struct.ahc_softc* %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %109, %102
  %114 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %115 = load i32, i32* @CLRINT, align 4
  %116 = load i32, i32* @CLRSCSIINT, align 4
  %117 = call i32 @ahc_outb(%struct.ahc_softc* %114, i32 %115, i32 %116)
  %118 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %119 = load i32, i32* @SEQCTL, align 4
  %120 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %121 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @STEP, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @ahc_outb(%struct.ahc_softc* %118, i32 %119, i32 %124)
  %126 = load i32, i32* @TRUE, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %113, %80
  %128 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %129 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @AHC_DT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %136 = load i32, i32* @CLRSINT1, align 4
  %137 = load i32, i32* @CLRBUSFREE, align 4
  %138 = call i32 @ahc_outb(%struct.ahc_softc* %135, i32 %136, i32 %137)
  %139 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %140 = load i32, i32* @CLRINT, align 4
  %141 = load i32, i32* @CLRSCSIINT, align 4
  %142 = call i32 @ahc_outb(%struct.ahc_softc* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %134, %127
  %144 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %145 = load i32, i32* @HCNTRL, align 4
  %146 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %147 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ahc_outb(%struct.ahc_softc* %144, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %155, %143
  %151 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %152 = call i32 @ahc_is_paused(%struct.ahc_softc* %151)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = call i32 @ahc_delay(i32 200)
  br label %150

157:                                              ; preds = %150
  br label %17

158:                                              ; preds = %68
  %159 = load i32, i32* %3, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %163 = load i32, i32* @SIMODE0, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @ahc_outb(%struct.ahc_softc* %162, i32 %163, i32 %164)
  %166 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %167 = load i32, i32* @SIMODE1, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @ahc_outb(%struct.ahc_softc* %166, i32 %167, i32 %168)
  %170 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %171 = load i32, i32* @SEQCTL, align 4
  %172 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %173 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ahc_outb(%struct.ahc_softc* %170, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %14, %161, %158
  ret void
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_dump_card_state(%struct.ahc_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_is_paused(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
