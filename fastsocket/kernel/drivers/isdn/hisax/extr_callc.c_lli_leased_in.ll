; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_leased_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_leased_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_12__*, i32, i8*)*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64, i64 }

@MDL_INFO_SETUP = common dso_local global i32 0, align 4
@ST_IN_WAIT_LL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"STAT_ICALL_LEASED\00", align 1
@ISDN_STAT_ICALL = common dso_local global i32 0, align 4
@ISDN_STAT_ICALLW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"LEASED%d\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"statcallb ret=%d\00", align 1
@MDL_INFO_REL = common dso_local global i32 0, align 4
@ST_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lli_leased_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_leased_in(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Channel*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %11 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %10, i32 0, i32 0
  %12 = load %struct.Channel*, %struct.Channel** %11, align 8
  store %struct.Channel* %12, %struct.Channel** %7, align 8
  %13 = load %struct.Channel*, %struct.Channel** %7, align 8
  %14 = getelementptr inbounds %struct.Channel, %struct.Channel* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %136

18:                                               ; preds = %3
  %19 = load %struct.Channel*, %struct.Channel** %7, align 8
  %20 = getelementptr inbounds %struct.Channel, %struct.Channel* %19, i32 0, i32 2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_12__*, i32, i8*)*, i32 (%struct.TYPE_12__*, i32, i8*)** %22, align 8
  %24 = load %struct.Channel*, %struct.Channel** %7, align 8
  %25 = getelementptr inbounds %struct.Channel, %struct.Channel* %24, i32 0, i32 2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load i32, i32* @MDL_INFO_SETUP, align 4
  %28 = load %struct.Channel*, %struct.Channel** %7, align 8
  %29 = getelementptr inbounds %struct.Channel, %struct.Channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 %23(%struct.TYPE_12__* %26, i32 %27, i8* %32)
  %34 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %35 = load i32, i32* @ST_IN_WAIT_LL, align 4
  %36 = call i32 @FsmChangeState(%struct.FsmInst* %34, i32 %35)
  %37 = load %struct.Channel*, %struct.Channel** %7, align 8
  %38 = getelementptr inbounds %struct.Channel, %struct.Channel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load %struct.Channel*, %struct.Channel** %7, align 8
  %44 = call i32 (%struct.Channel*, i32, i8*, ...) @link_debug(%struct.Channel* %43, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %18
  %46 = load %struct.Channel*, %struct.Channel** %7, align 8
  %47 = getelementptr inbounds %struct.Channel, %struct.Channel* %46, i32 0, i32 2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load %struct.Channel*, %struct.Channel** %7, align 8
  %53 = getelementptr inbounds %struct.Channel, %struct.Channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @ISDN_STAT_ICALL, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @ISDN_STAT_ICALLW, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store i32 %61, i32* %62, align 8
  %63 = load %struct.Channel*, %struct.Channel** %7, align 8
  %64 = getelementptr inbounds %struct.Channel, %struct.Channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 7, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.Channel*, %struct.Channel** %7, align 8
  %84 = getelementptr inbounds %struct.Channel, %struct.Channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  %87 = call i32 @sprintf(i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.Channel*, %struct.Channel** %7, align 8
  %93 = getelementptr inbounds %struct.Channel, %struct.Channel* %92, i32 0, i32 2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @sprintf(i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load %struct.Channel*, %struct.Channel** %7, align 8
  %99 = getelementptr inbounds %struct.Channel, %struct.Channel* %98, i32 0, i32 2
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %102, align 8
  %104 = call i32 %103(%struct.TYPE_11__* %8)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.Channel*, %struct.Channel** %7, align 8
  %106 = getelementptr inbounds %struct.Channel, %struct.Channel* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %60
  %111 = load %struct.Channel*, %struct.Channel** %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (%struct.Channel*, i32, i8*, ...) @link_debug(%struct.Channel* %111, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %110, %60
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %114
  %118 = load %struct.Channel*, %struct.Channel** %7, align 8
  %119 = getelementptr inbounds %struct.Channel, %struct.Channel* %118, i32 0, i32 2
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32 (%struct.TYPE_12__*, i32, i8*)*, i32 (%struct.TYPE_12__*, i32, i8*)** %121, align 8
  %123 = load %struct.Channel*, %struct.Channel** %7, align 8
  %124 = getelementptr inbounds %struct.Channel, %struct.Channel* %123, i32 0, i32 2
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* @MDL_INFO_REL, align 4
  %127 = load %struct.Channel*, %struct.Channel** %7, align 8
  %128 = getelementptr inbounds %struct.Channel, %struct.Channel* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 %122(%struct.TYPE_12__* %125, i32 %126, i8* %131)
  %133 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %134 = load i32, i32* @ST_NULL, align 4
  %135 = call i32 @FsmChangeState(%struct.FsmInst* %133, i32 %134)
  br label %136

136:                                              ; preds = %17, %117, %114
  ret void
}

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @link_debug(%struct.Channel*, i32, i8*, ...) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
