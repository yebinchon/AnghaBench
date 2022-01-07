; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bs0.c_inithfc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bs0.c_inithfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i8*, i8* }

@hfc_fill_fifo = common dso_local global i32 0, align 4
@setstack_hfc = common dso_local global i8* null, align 8
@close_hfcstate = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inithfc(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %3 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %4 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 0
  %7 = call i32 @init_send(%struct.TYPE_3__* %6)
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %9 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 1
  %12 = call i32 @init_send(%struct.TYPE_3__* %11)
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 1
  store i32* @hfc_fill_fifo, i32** %14, align 8
  %15 = load i8*, i8** @setstack_hfc, align 8
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i8* %15, i8** %20, align 8
  %21 = load i8*, i8** @setstack_hfc, align 8
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i8* %21, i8** %26, align 8
  %27 = load i8*, i8** @close_hfcstate, align 8
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* %27, i8** %32, align 8
  %33 = load i8*, i8** @close_hfcstate, align 8
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %33, i8** %38, align 8
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %40 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i32 @mode_hfc(%struct.TYPE_3__* %41, i32 0, i32 0)
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %44 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 1
  %47 = call i32 @mode_hfc(%struct.TYPE_3__* %46, i32 0, i32 0)
  ret void
}

declare dso_local i32 @init_send(%struct.TYPE_3__*) #1

declare dso_local i32 @mode_hfc(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
