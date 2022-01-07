; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_disconnect_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_disconnect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { %struct.TYPE_8__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32, %struct.TYPE_8__*)* }

@ST_WAIT_DRELEASE = common dso_local global i32 0, align 4
@CC_DISCONNECT = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lli_disconnect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_disconnect_req(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %12 = getelementptr inbounds %struct.Channel, %struct.Channel* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %17 = load %struct.Channel*, %struct.Channel** %7, align 8
  %18 = call i32 @lli_leased_hup(%struct.FsmInst* %16, %struct.Channel* %17)
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %21 = load i32, i32* @ST_WAIT_DRELEASE, align 4
  %22 = call i32 @FsmChangeState(%struct.FsmInst* %20, i32 %21)
  %23 = load %struct.Channel*, %struct.Channel** %7, align 8
  %24 = getelementptr inbounds %struct.Channel, %struct.Channel* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.Channel*, %struct.Channel** %7, align 8
  %29 = getelementptr inbounds %struct.Channel, %struct.Channel* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 16, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %19
  %34 = load %struct.Channel*, %struct.Channel** %7, align 8
  %35 = getelementptr inbounds %struct.Channel, %struct.Channel* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_7__*, i32, %struct.TYPE_8__*)*, i32 (%struct.TYPE_7__*, i32, %struct.TYPE_8__*)** %38, align 8
  %40 = load %struct.Channel*, %struct.Channel** %7, align 8
  %41 = getelementptr inbounds %struct.Channel, %struct.Channel* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* @CC_DISCONNECT, align 4
  %44 = load i32, i32* @REQUEST, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.Channel*, %struct.Channel** %7, align 8
  %47 = getelementptr inbounds %struct.Channel, %struct.Channel* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 %39(%struct.TYPE_7__* %42, i32 %45, %struct.TYPE_8__* %48)
  br label %50

50:                                               ; preds = %33, %15
  ret void
}

declare dso_local i32 @lli_leased_hup(%struct.FsmInst*, %struct.Channel*) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
