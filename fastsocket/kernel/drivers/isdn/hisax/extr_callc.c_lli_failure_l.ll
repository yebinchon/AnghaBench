; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_failure_l.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_failure_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32, i8*)*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ST_NULL = common dso_local global i32 0, align 4
@ISDN_STAT_CAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"L%02X%02X\00", align 1
@ISDN_STAT_DHUP = common dso_local global i32 0, align 4
@MDL_INFO_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lli_failure_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_failure_l(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Channel*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 0
  %11 = load %struct.Channel*, %struct.Channel** %10, align 8
  store %struct.Channel* %11, %struct.Channel** %7, align 8
  %12 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %13 = load i32, i32* @ST_NULL, align 4
  %14 = call i32 @FsmChangeState(%struct.FsmInst* %12, i32 %13)
  %15 = load %struct.Channel*, %struct.Channel** %7, align 8
  %16 = getelementptr inbounds %struct.Channel, %struct.Channel* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @ISDN_STAT_CAUSE, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load %struct.Channel*, %struct.Channel** %7, align 8
  %24 = getelementptr inbounds %struct.Channel, %struct.Channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sprintf(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 47)
  %31 = load %struct.Channel*, %struct.Channel** %7, align 8
  %32 = getelementptr inbounds %struct.Channel, %struct.Channel* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %35, align 8
  %37 = call i32 %36(%struct.TYPE_8__* %8)
  %38 = load %struct.Channel*, %struct.Channel** %7, align 8
  %39 = load i32, i32* @ISDN_STAT_DHUP, align 4
  %40 = call i32 @HL_LL(%struct.Channel* %38, i32 %39)
  %41 = load %struct.Channel*, %struct.Channel** %7, align 8
  %42 = getelementptr inbounds %struct.Channel, %struct.Channel* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.Channel*, %struct.Channel** %7, align 8
  %44 = getelementptr inbounds %struct.Channel, %struct.Channel* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_9__*, i32, i8*)*, i32 (%struct.TYPE_9__*, i32, i8*)** %46, align 8
  %48 = load %struct.Channel*, %struct.Channel** %7, align 8
  %49 = getelementptr inbounds %struct.Channel, %struct.Channel* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load i32, i32* @MDL_INFO_REL, align 4
  %52 = load %struct.Channel*, %struct.Channel** %7, align 8
  %53 = getelementptr inbounds %struct.Channel, %struct.Channel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 %47(%struct.TYPE_9__* %50, i32 %51, i8* %55)
  ret void
}

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @HL_LL(%struct.Channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
