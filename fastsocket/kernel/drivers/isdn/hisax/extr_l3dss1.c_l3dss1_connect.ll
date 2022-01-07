; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)* }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i32 }

@ie_CONNECT = common dso_local global i32 0, align 4
@ERR_IE_COMPREHENSION = common dso_local global i32 0, align 4
@CC_SETUP = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3dss1_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_connect(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.sk_buff*
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = load i32, i32* @ie_CONNECT, align 4
  %14 = call i32 @check_infoelements(%struct.l3_process* %11, %struct.sk_buff* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @ERR_IE_COMPREHENSION, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @l3dss1_std_ie_err(%struct.l3_process* %19, i32 %20)
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %24 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %23, i32 0, i32 2
  %25 = call i32 @L3DelTimer(i32* %24)
  %26 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %27 = call i32 @newl3state(%struct.l3_process* %26, i32 10)
  %28 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %29 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @l3dss1_std_ie_err(%struct.l3_process* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %22
  %38 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %39 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)** %42, align 8
  %44 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %45 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* @CC_SETUP, align 4
  %48 = load i32, i32* @CONFIRM, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %51 = call i32 %43(%struct.TYPE_6__* %46, i32 %49, %struct.l3_process* %50)
  br label %52

52:                                               ; preds = %37, %18
  ret void
}

declare dso_local i32 @check_infoelements(%struct.l3_process*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l3dss1_std_ie_err(%struct.l3_process*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
