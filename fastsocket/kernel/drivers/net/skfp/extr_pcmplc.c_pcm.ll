; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_pcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.s_phy*, %struct.TYPE_2__ }
%struct.s_phy = type { i64, i32, %struct.fddi_mib_p* }
%struct.fddi_mib_p = type { i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@PS = common dso_local global i32 0, align 4
@SMT_SAS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"PCM %c: state %s\00", align 1
@AFLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ACTIONS \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s, event %s\0A\00", align 1
@pcm_states = common dso_local global i32* null, align 8
@pcm_events = common dso_local global i8** null, align 8
@PC5_SIGNAL = common dso_local global i32 0, align 4
@PC3_CONNECT = common dso_local global i32 0, align 4
@PC8_ACTIVE = common dso_local global i32 0, align 4
@SMT_EVENT_PORT_PATH_CHANGE = common dso_local global i32 0, align 4
@INDEX_PORT = common dso_local global i64 0, align 8
@PC0_OFF = common dso_local global i32 0, align 4
@PC2_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcm(%struct.s_smc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s_phy*, align 8
  %10 = alloca %struct.fddi_mib_p*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SMT_SAS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %120

22:                                               ; preds = %14, %3
  %23 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %24 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %23, i32 0, i32 0
  %25 = load %struct.s_phy*, %struct.s_phy** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %25, i64 %27
  store %struct.s_phy* %28, %struct.s_phy** %9, align 8
  %29 = load %struct.s_phy*, %struct.s_phy** %9, align 8
  %30 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %29, i32 0, i32 2
  %31 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %30, align 8
  store %struct.fddi_mib_p* %31, %struct.fddi_mib_p** %10, align 8
  %32 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %33 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %71, %22
  %36 = load %struct.s_phy*, %struct.s_phy** %9, align 8
  %37 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %40 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AFLAG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 @DB_PCM(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %46)
  %48 = load i32*, i32** @pcm_states, align 8
  %49 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %50 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AFLAG, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %48, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i8**, i8*** @pcm_events, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @DB_PCM(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %57, i8* %62)
  %64 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %65 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %7, align 4
  %67 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %68 = load %struct.s_phy*, %struct.s_phy** %9, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @pcm_fsm(%struct.s_smc* %67, %struct.s_phy* %68, i32 %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %35
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %74 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %35, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @PC5_SIGNAL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @PC3_CONNECT, align 4
  %83 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %84 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %89

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %88 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %91 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @PC8_ACTIVE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %10, align 8
  %101 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @PC8_ACTIVE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %99, %95
  %106 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %107 = load i32, i32* @SMT_EVENT_PORT_PATH_CHANGE, align 4
  %108 = load i64, i64* @INDEX_PORT, align 8
  %109 = load %struct.s_phy*, %struct.s_phy** %9, align 8
  %110 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @smt_srf_event(%struct.s_smc* %106, i32 %107, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %105, %99, %89
  %116 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @pcm_state_change(%struct.s_smc* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %21
  ret void
}

declare dso_local i32 @DB_PCM(i8*, i32, i8*) #1

declare dso_local i32 @pcm_fsm(%struct.s_smc*, %struct.s_phy*, i32) #1

declare dso_local i32 @smt_srf_event(%struct.s_smc*, i32, i32, i32) #1

declare dso_local i32 @pcm_state_change(%struct.s_smc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
