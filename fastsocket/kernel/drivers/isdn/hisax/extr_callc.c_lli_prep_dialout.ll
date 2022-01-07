; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_prep_dialout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_prep_dialout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { %struct.TYPE_5__*, i64, i64, %struct.TYPE_6__*, i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32, %struct.Channel*)* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i8*)* }

@MDL_INFO_SETUP = common dso_local global i32 0, align 4
@ST_OUT_DIAL = common dso_local global i32 0, align 4
@CC_SETUP = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lli_prep_dialout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_prep_dialout(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %12 = getelementptr inbounds %struct.Channel, %struct.Channel* %11, i32 0, i32 8
  %13 = call i32 @FsmDelTimer(i32* %12, i32 60)
  %14 = load %struct.Channel*, %struct.Channel** %7, align 8
  %15 = getelementptr inbounds %struct.Channel, %struct.Channel* %14, i32 0, i32 7
  %16 = call i32 @FsmDelTimer(i32* %15, i32 73)
  %17 = load %struct.Channel*, %struct.Channel** %7, align 8
  %18 = getelementptr inbounds %struct.Channel, %struct.Channel* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.Channel*, %struct.Channel** %7, align 8
  %21 = getelementptr inbounds %struct.Channel, %struct.Channel* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.Channel*, %struct.Channel** %7, align 8
  %23 = getelementptr inbounds %struct.Channel, %struct.Channel* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.Channel*, %struct.Channel** %7, align 8
  %25 = getelementptr inbounds %struct.Channel, %struct.Channel* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_6__*, i32, i8*)*, i32 (%struct.TYPE_6__*, i32, i8*)** %27, align 8
  %29 = load %struct.Channel*, %struct.Channel** %7, align 8
  %30 = getelementptr inbounds %struct.Channel, %struct.Channel* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* @MDL_INFO_SETUP, align 4
  %33 = load %struct.Channel*, %struct.Channel** %7, align 8
  %34 = getelementptr inbounds %struct.Channel, %struct.Channel* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 %28(%struct.TYPE_6__* %31, i32 %32, i8* %36)
  %38 = load %struct.Channel*, %struct.Channel** %7, align 8
  %39 = getelementptr inbounds %struct.Channel, %struct.Channel* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %3
  %43 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @lli_init_bchan_out(%struct.FsmInst* %43, i32 %44, i8* %45)
  br label %65

47:                                               ; preds = %3
  %48 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %49 = load i32, i32* @ST_OUT_DIAL, align 4
  %50 = call i32 @FsmChangeState(%struct.FsmInst* %48, i32 %49)
  %51 = load %struct.Channel*, %struct.Channel** %7, align 8
  %52 = getelementptr inbounds %struct.Channel, %struct.Channel* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_5__*, i32, %struct.Channel*)*, i32 (%struct.TYPE_5__*, i32, %struct.Channel*)** %55, align 8
  %57 = load %struct.Channel*, %struct.Channel** %7, align 8
  %58 = getelementptr inbounds %struct.Channel, %struct.Channel* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* @CC_SETUP, align 4
  %61 = load i32, i32* @REQUEST, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.Channel*, %struct.Channel** %7, align 8
  %64 = call i32 %56(%struct.TYPE_5__* %59, i32 %62, %struct.Channel* %63)
  br label %65

65:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

declare dso_local i32 @lli_init_bchan_out(%struct.FsmInst*, i32, i8*) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
