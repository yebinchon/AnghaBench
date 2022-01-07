; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_setup_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_setup_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32*, i32 }

@WE0_chanID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"setup_ack wrong chanID len\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"setup_ack wrong WE0_chanID\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"missing setup_ack WE0_chanID\00", align 1
@T304 = common dso_local global i32 0, align 4
@CC_T304 = common dso_local global i32 0, align 4
@CC_MORE_INFO = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3_1tr6_setup_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_1tr6_setup_ack(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.sk_buff*
  store %struct.sk_buff* %10, %struct.sk_buff** %8, align 8
  %11 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %12 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %11, i32 0, i32 1
  %13 = call i32 @L3DelTimer(i32* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %18 = call i32 @newl3state(%struct.l3_process* %17, i32 2)
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WE0_chanID, align 4
  %24 = call i32* @findie(i32* %19, i32 %22, i32 %23, i32 0)
  store i32* %24, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call i32 @l3_1tr6_error(%struct.l3_process* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %33)
  br label %79

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 244
  %40 = icmp ne i32 %39, 128
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = call i32 @l3_1tr6_error(%struct.l3_process* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %43)
  br label %79

45:                                               ; preds = %35
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3
  %50 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %51 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %57

53:                                               ; preds = %3
  %54 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 @l3_1tr6_error(%struct.l3_process* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %55)
  br label %79

57:                                               ; preds = %45
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = call i32 @dev_kfree_skb(%struct.sk_buff* %58)
  %60 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %61 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %60, i32 0, i32 1
  %62 = load i32, i32* @T304, align 4
  %63 = load i32, i32* @CC_T304, align 4
  %64 = call i32 @L3AddTimer(i32* %61, i32 %62, i32 %63)
  %65 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %66 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)** %69, align 8
  %71 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %72 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* @CC_MORE_INFO, align 4
  %75 = load i32, i32* @INDICATION, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %78 = call i32 %70(%struct.TYPE_6__* %73, i32 %76, %struct.l3_process* %77)
  br label %79

79:                                               ; preds = %57, %53, %41, %31
  ret void
}

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32* @findie(i32*, i32, i32, i32) #1

declare dso_local i32 @l3_1tr6_error(%struct.l3_process*, i8*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
