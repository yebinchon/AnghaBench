; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_go_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_go_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { i32, i32, i64, %struct.TYPE_11__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i32, i8*)*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { i64 }

@ST_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"STAT_BCONN %s\00", align 1
@ISDN_STAT_BCONN = common dso_local global i32 0, align 4
@MDL_INFO_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lli_go_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_go_active(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Channel*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 0
  %11 = load %struct.Channel*, %struct.Channel** %10, align 8
  store %struct.Channel* %11, %struct.Channel** %7, align 8
  %12 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %13 = load i32, i32* @ST_ACTIVE, align 4
  %14 = call i32 @FsmChangeState(%struct.FsmInst* %12, i32 %13)
  %15 = load %struct.Channel*, %struct.Channel** %7, align 8
  %16 = getelementptr inbounds %struct.Channel, %struct.Channel* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.Channel*, %struct.Channel** %7, align 8
  %18 = getelementptr inbounds %struct.Channel, %struct.Channel* %17, i32 0, i32 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.Channel*, %struct.Channel** %7, align 8
  %28 = getelementptr inbounds %struct.Channel, %struct.Channel* %27, i32 0, i32 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @strcpy(i64* %26, i64 %31)
  br label %38

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.Channel*, %struct.Channel** %7, align 8
  %40 = getelementptr inbounds %struct.Channel, %struct.Channel* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.Channel*, %struct.Channel** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = call i32 @link_debug(%struct.Channel* %45, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %48)
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.Channel*, %struct.Channel** %7, align 8
  %52 = getelementptr inbounds %struct.Channel, %struct.Channel* %51, i32 0, i32 3
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @ISDN_STAT_BCONN, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = load %struct.Channel*, %struct.Channel** %7, align 8
  %60 = getelementptr inbounds %struct.Channel, %struct.Channel* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load %struct.Channel*, %struct.Channel** %7, align 8
  %64 = getelementptr inbounds %struct.Channel, %struct.Channel* %63, i32 0, i32 3
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %67, align 8
  %69 = call i32 %68(%struct.TYPE_10__* %8)
  %70 = load %struct.Channel*, %struct.Channel** %7, align 8
  %71 = getelementptr inbounds %struct.Channel, %struct.Channel* %70, i32 0, i32 3
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_11__*, i32, i8*)*, i32 (%struct.TYPE_11__*, i32, i8*)** %73, align 8
  %75 = load %struct.Channel*, %struct.Channel** %7, align 8
  %76 = getelementptr inbounds %struct.Channel, %struct.Channel* %75, i32 0, i32 3
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* @MDL_INFO_CONN, align 4
  %79 = load %struct.Channel*, %struct.Channel** %7, align 8
  %80 = getelementptr inbounds %struct.Channel, %struct.Channel* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 %74(%struct.TYPE_11__* %77, i32 %78, i8* %82)
  ret void
}

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @strcpy(i64*, i64) #1

declare dso_local i32 @link_debug(%struct.Channel*, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
