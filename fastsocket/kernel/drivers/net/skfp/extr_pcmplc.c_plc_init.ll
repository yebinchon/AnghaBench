; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_plc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_plc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.s_smc = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@PL_CNTRL_B = common dso_local global i64 0, align 8
@PL_PCM_STOP = common dso_local global i32 0, align 4
@PL_CNTRL_A = common dso_local global i64 0, align 8
@PL_STATUS_A = common dso_local global i64 0, align 8
@PLC_REV_MASK = common dso_local global i32 0, align 4
@PLC_REVISION_A = common dso_local global i32 0, align 4
@PL_CNTRL_C = common dso_local global i64 0, align 8
@PLCS_CONTROL_C_S = common dso_local global i32 0, align 4
@PLCS_CONTROL_C_U = common dso_local global i32 0, align 4
@pltm = common dso_local global %struct.TYPE_6__* null, align 8
@PL_INTR_EVENT = common dso_local global i64 0, align 8
@PL_INTR_MASK = common dso_local global i64 0, align 8
@plc_imsk_na = common dso_local global i32 0, align 4
@SMT_SAS = common dso_local global i64 0, align 8
@PS = common dso_local global i32 0, align 4
@PL_CLASS_S = common dso_local global i32 0, align 4
@PLCS_FASSERT_S = common dso_local global i32 0, align 4
@PLCS_FASSERT_U = common dso_local global i32 0, align 4
@PLCS_FDEASSERT_S = common dso_local global i32 0, align 4
@PLCS_FDEASSERT_U = common dso_local global i32 0, align 4
@PL_T_FOT_ASS = common dso_local global i64 0, align 8
@PL_T_FOT_DEASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, i32)* @plc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plc_init(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i64, i64* @PL_CNTRL_B, align 8
  %9 = call i32 @PLC(i32 %7, i64 %8)
  %10 = call i32 @outpw(i32 %9, i32 0)
  %11 = load i32, i32* %4, align 4
  %12 = load i64, i64* @PL_CNTRL_B, align 8
  %13 = call i32 @PLC(i32 %11, i64 %12)
  %14 = load i32, i32* @PL_PCM_STOP, align 4
  %15 = call i32 @outpw(i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* @PL_CNTRL_A, align 8
  %18 = call i32 @PLC(i32 %16, i64 %17)
  %19 = call i32 @outpw(i32 %18, i32 0)
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* @PL_STATUS_A, align 8
  %22 = call i32 @PLC(i32 %20, i64 %21)
  %23 = call i32 @inpw(i32 %22)
  %24 = load i32, i32* @PLC_REV_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PLC_REVISION_A, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %2
  %30 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %31 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = load i64, i64* @PL_CNTRL_C, align 8
  %42 = call i32 @PLC(i32 %40, i64 %41)
  %43 = load i32, i32* @PLCS_CONTROL_C_S, align 4
  %44 = call i32 @outpw(i32 %42, i32 %43)
  br label %51

45:                                               ; preds = %29
  %46 = load i32, i32* %4, align 4
  %47 = load i64, i64* @PL_CNTRL_C, align 8
  %48 = call i32 @PLC(i32 %46, i64 %47)
  %49 = load i32, i32* @PLCS_CONTROL_C_U, align 4
  %50 = call i32 @outpw(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %2
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %77, %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pltm, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pltm, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @PLC(i32 %62, i64 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pltm, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @outpw(i32 %69, i32 %75)
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %53

80:                                               ; preds = %53
  %81 = load i32, i32* %4, align 4
  %82 = load i64, i64* @PL_INTR_EVENT, align 8
  %83 = call i32 @PLC(i32 %81, i64 %82)
  %84 = call i32 @inpw(i32 %83)
  %85 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @plc_clear_irq(%struct.s_smc* %85, i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = load i64, i64* @PL_INTR_MASK, align 8
  %90 = call i32 @PLC(i32 %88, i64 %89)
  %91 = load i32, i32* @plc_imsk_na, align 4
  %92 = call i32 @outpw(i32 %90, i32 %91)
  %93 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %94 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SMT_SAS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %80
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @PS, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* %4, align 4
  %105 = load i64, i64* @PL_CNTRL_B, align 8
  %106 = call i32 @PLC(i32 %104, i64 %105)
  %107 = load i32, i32* @PL_CLASS_S, align 4
  %108 = call i32 @outpw(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %99, %80
  ret void
}

declare dso_local i32 @outpw(i32, i32) #1

declare dso_local i32 @PLC(i32, i64) #1

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @plc_clear_irq(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
