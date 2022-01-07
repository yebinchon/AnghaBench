; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_dummy_error_return.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_dummy_error_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i64, i32, i32, i32, i64 }
%struct.IsdnCardState = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*)* }
%struct.l3_process = type { %struct.TYPE_14__, %struct.TYPE_17__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.IsdnCardState* }

@ISDN_STAT_PROT = common dso_local global i32 0, align 4
@DSS1_STAT_INVOKE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dummy return error id=0x%x error=0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32, i32)* @l3dss1_dummy_error_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_dummy_error_return(%struct.PStack* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.IsdnCardState*, align 8
  %9 = alloca %struct.l3_process*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.l3_process* null, %struct.l3_process** %9, align 8
  %10 = load %struct.PStack*, %struct.PStack** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.l3_process* @l3dss1_search_dummy_proc(%struct.PStack* %10, i32 %11)
  store %struct.l3_process* %12, %struct.l3_process** %9, align 8
  %13 = icmp ne %struct.l3_process* %12, null
  br i1 %13, label %14, label %86

14:                                               ; preds = %3
  %15 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %16 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %15, i32 0, i32 2
  %17 = call i32 @L3DelTimer(i32* %16)
  %18 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %19 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %18, i32 0, i32 1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %22, align 8
  store %struct.IsdnCardState* %23, %struct.IsdnCardState** %8, align 8
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %8, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @ISDN_STAT_PROT, align 4
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @DSS1_STAT_INVOKE_ERR, align 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %33 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 5
  store i64 %36, i64* %39, align 8
  %40 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %41 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %49 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %67 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %66, i32 0, i32 1
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %70 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @free_invoke_id(%struct.TYPE_17__* %68, i64 %73)
  %75 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %76 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %8, align 8
  %80 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %81, align 8
  %83 = call i32 %82(%struct.TYPE_16__* %7)
  %84 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  %85 = call i32 @dss1_release_l3_process(%struct.l3_process* %84)
  br label %91

86:                                               ; preds = %3
  %87 = load %struct.PStack*, %struct.PStack** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @l3_debug(%struct.PStack* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %14
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
