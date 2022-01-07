; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_io_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_io_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_14__, %struct.TYPE_17__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.IsdnCardState* }
%struct.IsdnCardState = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, i64, i32, i32, i64 }

@ISDN_STAT_PROT = common dso_local global i32 0, align 4
@NI1_STAT_INVOKE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*)* @l3ni1_io_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_io_timer(%struct.l3_process* %0) #0 {
  %2 = alloca %struct.l3_process*, align 8
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca %struct.IsdnCardState*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %2, align 8
  %5 = load %struct.l3_process*, %struct.l3_process** %2, align 8
  %6 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %5, i32 0, i32 1
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  store %struct.IsdnCardState* %10, %struct.IsdnCardState** %4, align 8
  %11 = load %struct.l3_process*, %struct.l3_process** %2, align 8
  %12 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %11, i32 0, i32 2
  %13 = call i32 @L3DelTimer(i32* %12)
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %15 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @ISDN_STAT_PROT, align 4
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @NI1_STAT_INVOKE_ERR, align 4
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.l3_process*, %struct.l3_process** %2, align 8
  %23 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 5
  store i64 %26, i64* %29, align 8
  %30 = load %struct.l3_process*, %struct.l3_process** %2, align 8
  %31 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 4
  %38 = load %struct.l3_process*, %struct.l3_process** %2, align 8
  %39 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.l3_process*, %struct.l3_process** %2, align 8
  %56 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %55, i32 0, i32 1
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = load %struct.l3_process*, %struct.l3_process** %2, align 8
  %59 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @free_invoke_id(%struct.TYPE_17__* %57, i64 %62)
  %64 = load %struct.l3_process*, %struct.l3_process** %2, align 8
  %65 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %69 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %70, align 8
  %72 = call i32 %71(%struct.TYPE_16__* %3)
  %73 = load %struct.l3_process*, %struct.l3_process** %2, align 8
  %74 = call i32 @ni1_release_l3_process(%struct.l3_process* %73)
  ret void
}

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @free_invoke_id(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @ni1_release_l3_process(%struct.l3_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
