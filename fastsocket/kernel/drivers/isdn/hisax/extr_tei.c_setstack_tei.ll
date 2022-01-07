; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_setstack_tei.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_setstack_tei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, %struct.PStack*, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@tei_l2tei = common dso_local global i32 0, align 4
@tei_l1l2 = common dso_local global i32 0, align 4
@teifsm = common dso_local global i32 0, align 4
@ST_TEI_NOP = common dso_local global i32 0, align 4
@tei_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setstack_tei(%struct.PStack* %0) #0 {
  %2 = alloca %struct.PStack*, align 8
  store %struct.PStack* %0, %struct.PStack** %2, align 8
  %3 = load i32, i32* @tei_l2tei, align 4
  %4 = load %struct.PStack*, %struct.PStack** %2, align 8
  %5 = getelementptr inbounds %struct.PStack, %struct.PStack* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %3, i32* %6, align 4
  %7 = load %struct.PStack*, %struct.PStack** %2, align 8
  %8 = getelementptr inbounds %struct.PStack, %struct.PStack* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 2000, i32* %9, align 8
  %10 = load i32, i32* @tei_l1l2, align 4
  %11 = load %struct.PStack*, %struct.PStack** %2, align 8
  %12 = getelementptr inbounds %struct.PStack, %struct.PStack* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.PStack*, %struct.PStack** %2, align 8
  %15 = getelementptr inbounds %struct.PStack, %struct.PStack* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.PStack*, %struct.PStack** %2, align 8
  %18 = getelementptr inbounds %struct.PStack, %struct.PStack* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  store i32* @teifsm, i32** %20, align 8
  %21 = load i32, i32* @ST_TEI_NOP, align 4
  %22 = load %struct.PStack*, %struct.PStack** %2, align 8
  %23 = getelementptr inbounds %struct.PStack, %struct.PStack* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  store i32 %21, i32* %25, align 8
  %26 = load %struct.PStack*, %struct.PStack** %2, align 8
  %27 = getelementptr inbounds %struct.PStack, %struct.PStack* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.PStack*, %struct.PStack** %2, align 8
  %31 = load %struct.PStack*, %struct.PStack** %2, align 8
  %32 = getelementptr inbounds %struct.PStack, %struct.PStack* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  store %struct.PStack* %30, %struct.PStack** %34, align 8
  %35 = load %struct.PStack*, %struct.PStack** %2, align 8
  %36 = getelementptr inbounds %struct.PStack, %struct.PStack* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @tei_debug, align 4
  %40 = load %struct.PStack*, %struct.PStack** %2, align 8
  %41 = getelementptr inbounds %struct.PStack, %struct.PStack* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.PStack*, %struct.PStack** %2, align 8
  %45 = getelementptr inbounds %struct.PStack, %struct.PStack* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load %struct.PStack*, %struct.PStack** %2, align 8
  %48 = getelementptr inbounds %struct.PStack, %struct.PStack* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = call i32 @FsmInitTimer(%struct.TYPE_8__* %46, i32* %49)
  ret void
}

declare dso_local i32 @FsmInitTimer(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
