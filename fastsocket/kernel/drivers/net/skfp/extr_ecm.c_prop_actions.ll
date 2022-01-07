; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_ecm.c_prop_actions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_ecm.c_prop_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8, i32 }
%struct.TYPE_3__ = type { i32 }

@RS_EVENT = common dso_local global i32 0, align 4
@SMT_E0108 = common dso_local global i32 0, align 4
@SMT_E0108_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ECM : prop_actions - trace_prop %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ECM : prop_actions - in %d out %d\0A\00", align 1
@ENTITY_MAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"ECM : initiate TRACE on PHY %c\0A\00", align 1
@PA = common dso_local global i8 0, align 1
@EVENT_PCM = common dso_local global i64 0, align 8
@PC_TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"ECM : propagate TRACE on PHY B\0A\00", align 1
@EVENT_PCMB = common dso_local global i64 0, align 8
@PB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"ECM : propagate TRACE on PHY A\0A\00", align 1
@EVENT_PCMA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"ECM : TRACE terminated\0A\00", align 1
@PT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @prop_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prop_actions(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %6 = load i32, i32* @RS_EVENT, align 4
  %7 = call i32 @RS_SET(%struct.s_smc* %5, i32 %6)
  %8 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %9 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %25 [
    i32 128, label %12
    i32 130, label %15
    i32 129, label %20
  ]

12:                                               ; preds = %1
  %13 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %14 = call i32 @pcm_get_s_port(%struct.s_smc* %13)
  store i32 %14, i32* %4, align 4
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %17 = call i32 @cfm_get_mac_input(%struct.s_smc* %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %19 = call i32 @cfm_get_mac_output(%struct.s_smc* %18)
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %22 = load i32, i32* @SMT_E0108, align 4
  %23 = load i32, i32* @SMT_E0108_MSG, align 4
  %24 = call i32 @SMT_PANIC(%struct.s_smc* %21, i32 %22, i32 %23)
  br label %115

25:                                               ; preds = %1, %15, %12
  %26 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %27 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  %30 = call i32 @DB_ECM(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext %29, i32 0)
  %31 = load i32, i32* %3, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @DB_ECM(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8 signext %32, i32 %33)
  %35 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %36 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 4
  %39 = sext i8 %38 to i32
  %40 = load i32, i32* @ENTITY_MAC, align 4
  %41 = call i32 @ENTITY_BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %25
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 65, %45
  %47 = load i8, i8* @PA, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %46, %48
  %50 = trunc i32 %49 to i8
  %51 = call i32 @DB_ECM(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8 signext %50, i32 0)
  %52 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %53 = load i64, i64* @EVENT_PCM, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i32, i32* @PC_TRACE, align 4
  %58 = call i32 @queue_event(%struct.s_smc* %52, i64 %56, i32 %57)
  br label %111

59:                                               ; preds = %25
  %60 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %61 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 4
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @PA, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 @ENTITY_PHY(i32 %66)
  %68 = call i32 @ENTITY_BIT(i32 %67)
  %69 = and i32 %64, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %59
  %72 = load i32, i32* %4, align 4
  %73 = load i8, i8* @PA, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = call i32 @DB_ECM(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8 signext 0, i32 0)
  %78 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %79 = load i64, i64* @EVENT_PCMB, align 8
  %80 = load i32, i32* @PC_TRACE, align 4
  %81 = call i32 @queue_event(%struct.s_smc* %78, i64 %79, i32 %80)
  br label %110

82:                                               ; preds = %71, %59
  %83 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %84 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 4
  %87 = sext i8 %86 to i32
  %88 = load i32, i32* @PB, align 4
  %89 = call i32 @ENTITY_PHY(i32 %88)
  %90 = call i32 @ENTITY_BIT(i32 %89)
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %82
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @PB, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = call i32 @DB_ECM(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8 signext 0, i32 0)
  %99 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %100 = load i64, i64* @EVENT_PCMA, align 8
  %101 = load i32, i32* @PC_TRACE, align 4
  %102 = call i32 @queue_event(%struct.s_smc* %99, i64 %100, i32 %101)
  br label %109

103:                                              ; preds = %93, %82
  %104 = call i32 @DB_ECM(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8 signext 0, i32 0)
  %105 = load i32, i32* @PT_PENDING, align 4
  %106 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %107 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %97
  br label %110

110:                                              ; preds = %109, %76
  br label %111

111:                                              ; preds = %110, %44
  %112 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %113 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i8 0, i8* %114, align 4
  br label %115

115:                                              ; preds = %111, %20
  ret void
}

declare dso_local i32 @RS_SET(%struct.s_smc*, i32) #1

declare dso_local i32 @pcm_get_s_port(%struct.s_smc*) #1

declare dso_local i32 @cfm_get_mac_input(%struct.s_smc*) #1

declare dso_local i32 @cfm_get_mac_output(%struct.s_smc*) #1

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @DB_ECM(i8*, i8 signext, i32) #1

declare dso_local i32 @ENTITY_BIT(i32) #1

declare dso_local i32 @queue_event(%struct.s_smc*, i64, i32) #1

declare dso_local i32 @ENTITY_PHY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
