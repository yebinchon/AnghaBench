; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_deliver_cause.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_deliver_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Channel = type { %struct.TYPE_12__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*)* }
%struct.TYPE_13__ = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@NO_CAUSE = common dso_local global i32 0, align 4
@ISDN_STAT_CAUSE = common dso_local global i32 0, align 4
@ISDN_PTYPE_EURO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"E%02X%02X\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%02X%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Channel*)* @lli_deliver_cause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_deliver_cause(%struct.Channel* %0) #0 {
  %2 = alloca %struct.Channel*, align 8
  %3 = alloca %struct.TYPE_13__, align 4
  store %struct.Channel* %0, %struct.Channel** %2, align 8
  %4 = load %struct.Channel*, %struct.Channel** %2, align 8
  %5 = getelementptr inbounds %struct.Channel, %struct.Channel* %4, i32 0, i32 1
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = icmp ne %struct.TYPE_10__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %85

9:                                                ; preds = %1
  %10 = load %struct.Channel*, %struct.Channel** %2, align 8
  %11 = getelementptr inbounds %struct.Channel, %struct.Channel* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NO_CAUSE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %85

19:                                               ; preds = %9
  %20 = load %struct.Channel*, %struct.Channel** %2, align 8
  %21 = getelementptr inbounds %struct.Channel, %struct.Channel* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @ISDN_STAT_CAUSE, align 4
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.Channel*, %struct.Channel** %2, align 8
  %29 = getelementptr inbounds %struct.Channel, %struct.Channel* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.Channel*, %struct.Channel** %2, align 8
  %33 = getelementptr inbounds %struct.Channel, %struct.Channel* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ISDN_PTYPE_EURO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %19
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.Channel*, %struct.Channel** %2, align 8
  %44 = getelementptr inbounds %struct.Channel, %struct.Channel* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 127
  %50 = load %struct.Channel*, %struct.Channel** %2, align 8
  %51 = getelementptr inbounds %struct.Channel, %struct.Channel* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 127
  %57 = call i32 @sprintf(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %56)
  br label %77

58:                                               ; preds = %19
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.Channel*, %struct.Channel** %2, align 8
  %63 = getelementptr inbounds %struct.Channel, %struct.Channel* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 127
  %69 = load %struct.Channel*, %struct.Channel** %2, align 8
  %70 = getelementptr inbounds %struct.Channel, %struct.Channel* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 127
  %76 = call i32 @sprintf(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %75)
  br label %77

77:                                               ; preds = %58, %39
  %78 = load %struct.Channel*, %struct.Channel** %2, align 8
  %79 = getelementptr inbounds %struct.Channel, %struct.Channel* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %82, align 8
  %84 = call i32 %83(%struct.TYPE_13__* %3)
  br label %85

85:                                               ; preds = %77, %18, %8
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
