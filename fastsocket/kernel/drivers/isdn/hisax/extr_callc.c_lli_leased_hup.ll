; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_leased_hup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_leased_hup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { i32 }
%struct.Channel = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ISDN_STAT_CAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"L0010\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"STAT_DHUP\00", align 1
@ISDN_STAT_DHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, %struct.Channel*)* @lli_leased_hup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_leased_hup(%struct.FsmInst* %0, %struct.Channel* %1) #0 {
  %3 = alloca %struct.FsmInst*, align 8
  %4 = alloca %struct.Channel*, align 8
  %5 = alloca %struct.TYPE_9__, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %3, align 8
  store %struct.Channel* %1, %struct.Channel** %4, align 8
  %6 = load %struct.Channel*, %struct.Channel** %4, align 8
  %7 = getelementptr inbounds %struct.Channel, %struct.Channel* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @ISDN_STAT_CAUSE, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.Channel*, %struct.Channel** %4, align 8
  %15 = getelementptr inbounds %struct.Channel, %struct.Channel* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sprintf(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.Channel*, %struct.Channel** %4, align 8
  %23 = getelementptr inbounds %struct.Channel, %struct.Channel* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %26, align 8
  %28 = call i32 %27(%struct.TYPE_9__* %5)
  %29 = load %struct.Channel*, %struct.Channel** %4, align 8
  %30 = getelementptr inbounds %struct.Channel, %struct.Channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.Channel*, %struct.Channel** %4, align 8
  %36 = call i32 @link_debug(%struct.Channel* %35, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.Channel*, %struct.Channel** %4, align 8
  %39 = load i32, i32* @ISDN_STAT_DHUP, align 4
  %40 = call i32 @HL_LL(%struct.Channel* %38, i32 %39)
  %41 = load %struct.FsmInst*, %struct.FsmInst** %3, align 8
  %42 = call i32 @lli_close(%struct.FsmInst* %41)
  ret void
}

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @link_debug(%struct.Channel*, i32, i8*) #1

declare dso_local i32 @HL_LL(%struct.Channel*, i32) #1

declare dso_local i32 @lli_close(%struct.FsmInst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
