; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i8*)* }

@ST_NULL = common dso_local global i32 0, align 4
@MDL_INFO_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*)* @lli_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_close(%struct.FsmInst* %0) #0 {
  %2 = alloca %struct.FsmInst*, align 8
  %3 = alloca %struct.Channel*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %2, align 8
  %4 = load %struct.FsmInst*, %struct.FsmInst** %2, align 8
  %5 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %4, i32 0, i32 0
  %6 = load %struct.Channel*, %struct.Channel** %5, align 8
  store %struct.Channel* %6, %struct.Channel** %3, align 8
  %7 = load %struct.FsmInst*, %struct.FsmInst** %2, align 8
  %8 = load i32, i32* @ST_NULL, align 4
  %9 = call i32 @FsmChangeState(%struct.FsmInst* %7, i32 %8)
  %10 = load %struct.Channel*, %struct.Channel** %3, align 8
  %11 = getelementptr inbounds %struct.Channel, %struct.Channel* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.Channel*, %struct.Channel** %3, align 8
  %13 = getelementptr inbounds %struct.Channel, %struct.Channel* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_2__*, i32, i8*)*, i32 (%struct.TYPE_2__*, i32, i8*)** %15, align 8
  %17 = load %struct.Channel*, %struct.Channel** %3, align 8
  %18 = getelementptr inbounds %struct.Channel, %struct.Channel* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* @MDL_INFO_REL, align 4
  %21 = load %struct.Channel*, %struct.Channel** %3, align 8
  %22 = getelementptr inbounds %struct.Channel, %struct.Channel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 %16(%struct.TYPE_2__* %19, i32 %20, i8* %24)
  ret void
}

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
