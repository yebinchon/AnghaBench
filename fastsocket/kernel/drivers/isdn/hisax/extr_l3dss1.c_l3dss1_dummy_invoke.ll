; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_dummy_invoke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_dummy_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.IsdnCardState* }
%struct.IsdnCardState = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32*, i32, i64, i64 }

@.str = private unnamed_addr constant [46 x i8] c"dummy invoke %s id=0x%x ident=0x%x datalen=%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@ISDN_STAT_PROT = common dso_local global i32 0, align 4
@DSS1_STAT_INVOKE_BRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32, i32, i32, i32*, i32)* @l3dss1_dummy_invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_dummy_invoke(%struct.PStack* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca %struct.IsdnCardState*, align 8
  store %struct.PStack* %0, %struct.PStack** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.PStack*, %struct.PStack** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @l3_debug(%struct.PStack* %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %67

27:                                               ; preds = %6
  %28 = load %struct.PStack*, %struct.PStack** %7, align 8
  %29 = getelementptr inbounds %struct.PStack, %struct.PStack* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %30, align 8
  store %struct.IsdnCardState* %31, %struct.IsdnCardState** %14, align 8
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %14, align 8
  %33 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @ISDN_STAT_PROT, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @DSS1_STAT_INVOKE_BRD, align 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32* %58, i32** %61, align 8
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %14, align 8
  %63 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %64, align 8
  %66 = call i32 %65(%struct.TYPE_11__* %13)
  br label %67

67:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @l3_debug(%struct.PStack*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
