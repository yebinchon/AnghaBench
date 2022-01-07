; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_tei_id_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_tei.c_tei_id_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 (%struct.PStack.0*, i32, i32*)* }
%struct.PStack.0 = type opaque
%struct.TYPE_8__ = type { %struct.TYPE_11__, i32, i64 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i8*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32* }
%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32*)* }

@.str = private unnamed_addr constant [23 x i8] c"identity remove tei %d\00", align 1
@GROUP_TEI = common dso_local global i32 0, align 4
@ST_TEI_NOP = common dso_local global i32 0, align 4
@MDL_REMOVE = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @tei_id_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tei_id_remove(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.IsdnCardState*, align 8
  %10 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %12 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %11, i32 0, i32 0
  %13 = load %struct.PStack*, %struct.PStack** %12, align 8
  store %struct.PStack* %13, %struct.PStack** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.sk_buff*
  store %struct.sk_buff* %15, %struct.sk_buff** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load %struct.PStack*, %struct.PStack** %7, align 8
  %23 = getelementptr inbounds %struct.PStack, %struct.PStack* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load %struct.PStack*, %struct.PStack** %7, align 8
  %29 = getelementptr inbounds %struct.PStack, %struct.PStack* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_11__*, i8*, i32)*, i32 (%struct.TYPE_11__*, i8*, i32)** %31, align 8
  %33 = load %struct.PStack*, %struct.PStack** %7, align 8
  %34 = getelementptr inbounds %struct.PStack, %struct.PStack* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %10, align 4
  %37 = call i32 %32(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %27, %3
  %39 = load %struct.PStack*, %struct.PStack** %7, align 8
  %40 = getelementptr inbounds %struct.PStack, %struct.PStack* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %88

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @GROUP_TEI, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.PStack*, %struct.PStack** %7, align 8
  %51 = getelementptr inbounds %struct.PStack, %struct.PStack* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %48, %44
  %56 = load %struct.PStack*, %struct.PStack** %7, align 8
  %57 = getelementptr inbounds %struct.PStack, %struct.PStack* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = call i32 @FsmDelTimer(i32* %58, i32 5)
  %60 = load %struct.PStack*, %struct.PStack** %7, align 8
  %61 = getelementptr inbounds %struct.PStack, %struct.PStack* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* @ST_TEI_NOP, align 4
  %64 = call i32 @FsmChangeState(%struct.TYPE_11__* %62, i32 %63)
  %65 = load %struct.PStack*, %struct.PStack** %7, align 8
  %66 = getelementptr inbounds %struct.PStack, %struct.PStack* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %67, align 8
  %69 = load %struct.PStack*, %struct.PStack** %7, align 8
  %70 = bitcast %struct.PStack* %69 to %struct.PStack.0*
  %71 = load i32, i32* @MDL_REMOVE, align 4
  %72 = load i32, i32* @REQUEST, align 4
  %73 = or i32 %71, %72
  %74 = call i32 %68(%struct.PStack.0* %70, i32 %73, i32* null)
  %75 = load %struct.PStack*, %struct.PStack** %7, align 8
  %76 = getelementptr inbounds %struct.PStack, %struct.PStack* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %79, %struct.IsdnCardState** %9, align 8
  %80 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %81 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %80, i32 0, i32 0
  %82 = load i32 (%struct.IsdnCardState*, i32, i32*)*, i32 (%struct.IsdnCardState*, i32, i32*)** %81, align 8
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %84 = load i32, i32* @MDL_REMOVE, align 4
  %85 = load i32, i32* @REQUEST, align 4
  %86 = or i32 %84, %85
  %87 = call i32 %82(%struct.IsdnCardState* %83, i32 %86, i32* null)
  br label %88

88:                                               ; preds = %55, %48, %38
  ret void
}

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

declare dso_local i32 @FsmChangeState(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
