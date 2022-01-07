; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_cfm.c_cfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_cfm.c_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"CFM : state %s%s\00", align 1
@AFLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ACTIONS \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cfm_states = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" event %s\0A\00", align 1
@cfm_events = common dso_local global i8** null, align 8
@FALSE = common dso_local global i32 0, align 4
@SC9_C_WRAP_A = common dso_local global i32 0, align 4
@PA = common dso_local global i64 0, align 8
@PM_PEER = common dso_local global i64 0, align 8
@SC10_C_WRAP_B = common dso_local global i32 0, align 4
@PB = common dso_local global i64 0, align 8
@SC11_C_WRAP_S = common dso_local global i32 0, align 4
@PS = common dso_local global i64 0, align 8
@TS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SMT_COND_SMT_PEER_WRAP = common dso_local global i32 0, align 4
@cf_to_ptype = common dso_local global i32* null, align 8
@MAC0 = common dso_local global i64 0, align 8
@INDEX_MAC = common dso_local global i32 0, align 4
@SMT_EVENT_MAC_PATH_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfm(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %9 = call i32 @all_selection_criteria(%struct.s_smc* %8)
  %10 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @cem_priv_state(%struct.s_smc* %10, i32 %11)
  %13 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %14 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %52, %2
  %18 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AFLAG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i32*, i32** @cfm_states, align 8
  %28 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %29 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AFLAG, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %27, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DB_CFM(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %37)
  %39 = load i8**, i8*** @cfm_events, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @DB_CFM(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32 0)
  %45 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %46 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %5, align 4
  %49 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @cfm_fsm(%struct.s_smc* %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %17
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %55 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %17, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %6, align 4
  %61 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %62 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SC9_C_WRAP_A, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %69 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i64, i64* @PA, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PM_PEER, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %123, label %77

77:                                               ; preds = %67, %59
  %78 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %79 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SC10_C_WRAP_B, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %86 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i64, i64* @PB, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PM_PEER, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %123, label %94

94:                                               ; preds = %84, %77
  %95 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %96 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SC11_C_WRAP_S, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %94
  %102 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %103 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i64, i64* @PS, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PM_PEER, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %101
  %112 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %113 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i64, i64* @PS, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %111, %84, %67
  %124 = load i32, i32* @TRUE, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %111, %101, %94
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %128 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %126, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %134 = load i32, i32* @SMT_COND_SMT_PEER_WRAP, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @smt_srf_event(%struct.s_smc* %133, i32 %134, i32 0, i32 %135)
  br label %137

137:                                              ; preds = %132, %125
  %138 = load i32*, i32** @cf_to_ptype, align 8
  %139 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %140 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %147 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i64, i64* @MAC0, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store i32 %145, i32* %152, align 4
  %153 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %154 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %155 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @cfm_state_change(%struct.s_smc* %153, i32 %157)
  ret void
}

declare dso_local i32 @all_selection_criteria(%struct.s_smc*) #1

declare dso_local i32 @cem_priv_state(%struct.s_smc*, i32) #1

declare dso_local i32 @DB_CFM(i8*, i8*, i32) #1

declare dso_local i32 @cfm_fsm(%struct.s_smc*, i32) #1

declare dso_local i32 @smt_srf_event(%struct.s_smc*, i32, i32, i32) #1

declare dso_local i32 @cfm_state_change(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
