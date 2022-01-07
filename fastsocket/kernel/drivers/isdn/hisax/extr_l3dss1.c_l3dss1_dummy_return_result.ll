; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_dummy_return_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_dummy_return_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32, i64, i32, i32, i64 }
%struct.IsdnCardState = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*)* }
%struct.l3_process = type { %struct.TYPE_14__, %struct.TYPE_17__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.IsdnCardState* }

@ISDN_STAT_PROT = common dso_local global i32 0, align 4
@DSS1_STAT_INVOKE_RES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"dummy return result id=0x%x result len=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32, i32*, i32)* @l3dss1_dummy_return_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_dummy_return_result(%struct.PStack* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.PStack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.IsdnCardState*, align 8
  %11 = alloca %struct.l3_process*, align 8
  store %struct.PStack* %0, %struct.PStack** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.l3_process* null, %struct.l3_process** %11, align 8
  %12 = load %struct.PStack*, %struct.PStack** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.l3_process* @l3dss1_search_dummy_proc(%struct.PStack* %12, i32 %13)
  store %struct.l3_process* %14, %struct.l3_process** %11, align 8
  %15 = icmp ne %struct.l3_process* %14, null
  br i1 %15, label %16, label %89

16:                                               ; preds = %4
  %17 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %18 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %17, i32 0, i32 2
  %19 = call i32 @L3DelTimer(i32* %18)
  %20 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %21 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %20, i32 0, i32 1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %24, align 8
  store %struct.IsdnCardState* %25, %struct.IsdnCardState** %10, align 8
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %10, align 8
  %27 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @ISDN_STAT_PROT, align 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @DSS1_STAT_INVOKE_RES, align 4
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %35 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 5
  store i64 %38, i64* %41, align 8
  %42 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %43 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 4
  %50 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %51 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32* %65, i32** %68, align 8
  %69 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %70 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %69, i32 0, i32 1
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %73 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @free_invoke_id(%struct.TYPE_17__* %71, i64 %76)
  %78 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %79 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %10, align 8
  %83 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %84, align 8
  %86 = call i32 %85(%struct.TYPE_16__* %9)
  %87 = load %struct.l3_process*, %struct.l3_process** %11, align 8
  %88 = call i32 @dss1_release_l3_process(%struct.l3_process* %87)
  br label %94

89:                                               ; preds = %4
  %90 = load %struct.PStack*, %struct.PStack** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @l3_debug(%struct.PStack* %90, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %16
  ret void
}

declare dso_local %struct.l3_process* @l3dss1_search_dummy_proc(%struct.PStack*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @free_invoke_id(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @dss1_release_l3_process(%struct.l3_process*) #1

declare dso_local i32 @l3_debug(%struct.PStack*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
