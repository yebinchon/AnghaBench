; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_tei_id_denied.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_tei_id_denied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.teimgr* }
%struct.teimgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.FsmInst.0*, i8*, i32, i32)* }
%struct.FsmInst.0 = type opaque

@debug = common dso_local global i32* null, align 8
@DEBUG_L2_TEI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"identity denied ri %d tei %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @tei_id_denied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tei_id_denied(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.teimgr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %12 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %11, i32 0, i32 0
  %13 = load %struct.teimgr*, %struct.teimgr** %12, align 8
  store %struct.teimgr* %13, %struct.teimgr** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %16, align 4
  %19 = shl i32 %18, 8
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* %20, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** @debug, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DEBUG_L2_TEI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %3
  %36 = load %struct.teimgr*, %struct.teimgr** %7, align 8
  %37 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.FsmInst.0*, i8*, i32, i32)*, i32 (%struct.FsmInst.0*, i8*, i32, i32)** %38, align 8
  %40 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %41 = bitcast %struct.FsmInst* %40 to %struct.FsmInst.0*
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 %39(%struct.FsmInst.0* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
