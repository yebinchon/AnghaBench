; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_connect_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_connect_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)* }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i32, i32 }

@WE6_date = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"missing connack date\00", align 1
@CC_SETUP_COMPL = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3_1tr6_connect_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_1tr6_connect_ack(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.sk_buff*
  store %struct.sk_buff* %9, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WE6_date, align 4
  %17 = call i32 @findie(i32 %12, i32 %15, i32 %16, i32 6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call i32 @l3_1tr6_error(%struct.l3_process* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %21)
  br label %48

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i32 @dev_kfree_skb(%struct.sk_buff* %24)
  %26 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %27 = call i32 @newl3state(%struct.l3_process* %26, i32 10)
  %28 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %29 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %32 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %31, i32 0, i32 1
  %33 = call i32 @L3DelTimer(i32* %32)
  %34 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %35 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)** %38, align 8
  %40 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %41 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* @CC_SETUP_COMPL, align 4
  %44 = load i32, i32* @INDICATION, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %47 = call i32 %39(%struct.TYPE_6__* %42, i32 %45, %struct.l3_process* %46)
  br label %48

48:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @findie(i32, i32, i32, i32) #1

declare dso_local i32 @l3_1tr6_error(%struct.l3_process*, i8*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
