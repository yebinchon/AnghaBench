; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_reject_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_reject_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32, %struct.TYPE_10__*)* }

@CC_REJECT = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@CC_ALERTING = common dso_local global i32 0, align 4
@EV_HANGUP = common dso_local global i32 0, align 4
@ST_IN_ALERT_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lli_reject_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_reject_req(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Channel*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.Channel*, %struct.Channel** %9, align 8
  store %struct.Channel* %10, %struct.Channel** %7, align 8
  %11 = load %struct.Channel*, %struct.Channel** %7, align 8
  %12 = getelementptr inbounds %struct.Channel, %struct.Channel* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %17 = load %struct.Channel*, %struct.Channel** %7, align 8
  %18 = call i32 @lli_leased_hup(%struct.FsmInst* %16, %struct.Channel* %17)
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.Channel*, %struct.Channel** %7, align 8
  %21 = getelementptr inbounds %struct.Channel, %struct.Channel* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.Channel*, %struct.Channel** %7, align 8
  %26 = getelementptr inbounds %struct.Channel, %struct.Channel* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 21, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.Channel*, %struct.Channel** %7, align 8
  %32 = getelementptr inbounds %struct.Channel, %struct.Channel* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_9__*, i32, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, i32, %struct.TYPE_10__*)** %35, align 8
  %37 = load %struct.Channel*, %struct.Channel** %7, align 8
  %38 = getelementptr inbounds %struct.Channel, %struct.Channel* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i32, i32* @CC_REJECT, align 4
  %41 = load i32, i32* @REQUEST, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.Channel*, %struct.Channel** %7, align 8
  %44 = getelementptr inbounds %struct.Channel, %struct.Channel* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = call i32 %36(%struct.TYPE_9__* %39, i32 %42, %struct.TYPE_10__* %45)
  %47 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @lli_dhup_close(%struct.FsmInst* %47, i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %30, %15
  ret void
}

declare dso_local i32 @lli_leased_hup(%struct.FsmInst*, %struct.Channel*) #1

declare dso_local i32 @lli_dhup_close(%struct.FsmInst*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
