; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_ll_deliver_faxstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_ll_deliver_faxstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.Channel = type { i32 }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"HL->LL FAXIND %x\00", align 1
@ISDN_STAT_FAXIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32)* @ll_deliver_faxstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ll_deliver_faxstat(%struct.BCState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__, align 4
  %6 = alloca %struct.Channel*, align 8
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.BCState*, %struct.BCState** %3, align 8
  %8 = getelementptr inbounds %struct.BCState, %struct.BCState* %7, i32 0, i32 1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.Channel*
  store %struct.Channel* %13, %struct.Channel** %6, align 8
  %14 = load %struct.BCState*, %struct.BCState** %3, align 8
  %15 = getelementptr inbounds %struct.BCState, %struct.BCState* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @L1_DEB_HSCX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.BCState*, %struct.BCState** %3, align 8
  %24 = getelementptr inbounds %struct.BCState, %struct.BCState* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @debugl1(%struct.TYPE_15__* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.BCState*, %struct.BCState** %3, align 8
  %30 = getelementptr inbounds %struct.BCState, %struct.BCState* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @ISDN_STAT_FAXIND, align 4
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.Channel*, %struct.Channel** %6, align 8
  %38 = getelementptr inbounds %struct.Channel, %struct.Channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.BCState*, %struct.BCState** %3, align 8
  %46 = getelementptr inbounds %struct.BCState, %struct.BCState* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %49, align 8
  %51 = call i32 %50(%struct.TYPE_14__* %5)
  ret void
}

declare dso_local i32 @debugl1(%struct.TYPE_15__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
