; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_jade.c_initjade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_jade.c_initjade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_6__*, i32 (%struct.IsdnCardState*, i32, i32, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@setstack_jade = common dso_local global i8* null, align 8
@close_jadestate = common dso_local global i8* null, align 8
@jade_HDLC_MODE = common dso_local global i32 0, align 4
@jadeMODE_TMO = common dso_local global i32 0, align 4
@jade_HDLC_CCR0 = common dso_local global i32 0, align 4
@jade_HDLC_IMR = common dso_local global i32 0, align 4
@jade_HDLCCNTRACCESS = common dso_local global i32 0, align 4
@jadeINDIRECT_HAH1 = common dso_local global i32 0, align 4
@jadeINDIRECT_HAH2 = common dso_local global i32 0, align 4
@jade_INT = common dso_local global i32 0, align 4
@jadeINT_HDLC1 = common dso_local global i32 0, align 4
@jadeINT_HDLC2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initjade(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %3 = load i8*, i8** @setstack_jade, align 8
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** @setstack_jade, align 8
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i8* %9, i8** %14, align 8
  %15 = load i8*, i8** @close_jadestate, align 8
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i8* %15, i8** %20, align 8
  %21 = load i8*, i8** @close_jadestate, align 8
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i8* %21, i8** %26, align 8
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %28 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %42 = call i32 @jade_write_indirect(%struct.IsdnCardState* %41, i32 17, i32 15)
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %44 = call i32 @jade_write_indirect(%struct.IsdnCardState* %43, i32 23, i32 47)
  %45 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %46 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %45, i32 0, i32 1
  %47 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %46, align 8
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %49 = load i32, i32* @jade_HDLC_MODE, align 4
  %50 = load i32, i32* @jadeMODE_TMO, align 4
  %51 = call i32 %47(%struct.IsdnCardState* %48, i32 0, i32 %49, i32 %50)
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %53 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %52, i32 0, i32 1
  %54 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %53, align 8
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %56 = load i32, i32* @jade_HDLC_MODE, align 4
  %57 = load i32, i32* @jadeMODE_TMO, align 4
  %58 = call i32 %54(%struct.IsdnCardState* %55, i32 1, i32 %56, i32 %57)
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %60 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %59, i32 0, i32 1
  %61 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %60, align 8
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %63 = load i32, i32* @jade_HDLC_CCR0, align 4
  %64 = call i32 %61(%struct.IsdnCardState* %62, i32 0, i32 %63, i32 0)
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %66 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %65, i32 0, i32 1
  %67 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %66, align 8
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %69 = load i32, i32* @jade_HDLC_CCR0, align 4
  %70 = call i32 %67(%struct.IsdnCardState* %68, i32 1, i32 %69, i32 0)
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 1
  %73 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %72, align 8
  %74 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %75 = load i32, i32* @jade_HDLC_IMR, align 4
  %76 = call i32 %73(%struct.IsdnCardState* %74, i32 0, i32 %75, i32 0)
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %78 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %77, i32 0, i32 1
  %79 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %78, align 8
  %80 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %81 = load i32, i32* @jade_HDLC_IMR, align 4
  %82 = call i32 %79(%struct.IsdnCardState* %80, i32 1, i32 %81, i32 0)
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %84 = load i32, i32* @jade_HDLCCNTRACCESS, align 4
  %85 = load i32, i32* @jadeINDIRECT_HAH1, align 4
  %86 = load i32, i32* @jadeINDIRECT_HAH2, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @jade_write_indirect(%struct.IsdnCardState* %83, i32 %84, i32 %87)
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %90 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %89, i32 0, i32 1
  %91 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %90, align 8
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %93 = load i32, i32* @jade_INT, align 4
  %94 = load i32, i32* @jadeINT_HDLC1, align 4
  %95 = load i32, i32* @jadeINT_HDLC2, align 4
  %96 = or i32 %94, %95
  %97 = call i32 %91(%struct.IsdnCardState* %92, i32 -1, i32 %93, i32 %96)
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %99 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i32 @modejade(%struct.TYPE_6__* %100, i32 0, i32 0)
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %103 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 1
  %106 = call i32 @modejade(%struct.TYPE_6__* %105, i32 0, i32 0)
  ret void
}

declare dso_local i32 @jade_write_indirect(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @modejade(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
