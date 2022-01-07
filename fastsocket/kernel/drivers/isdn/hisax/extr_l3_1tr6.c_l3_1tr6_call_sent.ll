; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_call_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_call_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32*, i32 }

@WE0_chanID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"call sent wrong chanID len\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"call sent wrong WE0_chanID\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"call sent wrong chanID value\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"missing call sent WE0_chanID\00", align 1
@T310 = common dso_local global i32 0, align 4
@CC_T310 = common dso_local global i32 0, align 4
@CC_PROCEEDING = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3_1tr6_call_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_1tr6_call_sent(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
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
  %12 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %11, i32 0, i32 2
  %13 = call i32 @L3DelTimer(i32* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @WE0_chanID, align 4
  %22 = call i32* @findie(i32* %17, i32 %20, i32 %21, i32 0)
  store i32* %22, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %70

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call i32 @l3_1tr6_error(%struct.l3_process* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %31)
  br label %98

33:                                               ; preds = %24
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 244
  %38 = icmp ne i32 %37, 128
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @l3_1tr6_error(%struct.l3_process* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %41)
  br label %98

43:                                               ; preds = %33
  %44 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %45 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %50 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 3
  %57 = icmp ne i32 %52, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @l3_1tr6_error(%struct.l3_process* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %60)
  br label %98

62:                                               ; preds = %48, %43
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 3
  %67 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %68 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  br label %74

70:                                               ; preds = %3
  %71 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = call i32 @l3_1tr6_error(%struct.l3_process* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %72)
  br label %98

74:                                               ; preds = %62
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = call i32 @dev_kfree_skb(%struct.sk_buff* %75)
  %77 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %78 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %77, i32 0, i32 2
  %79 = load i32, i32* @T310, align 4
  %80 = load i32, i32* @CC_T310, align 4
  %81 = call i32 @L3AddTimer(i32* %78, i32 %79, i32 %80)
  %82 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %83 = call i32 @newl3state(%struct.l3_process* %82, i32 3)
  %84 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %85 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)** %88, align 8
  %90 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %91 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* @CC_PROCEEDING, align 4
  %94 = load i32, i32* @INDICATION, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %97 = call i32 %89(%struct.TYPE_6__* %92, i32 %95, %struct.l3_process* %96)
  br label %98

98:                                               ; preds = %74, %70, %58, %39, %29
  ret void
}

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32* @findie(i32*, i32, i32, i32) #1

declare dso_local i32 @l3_1tr6_error(%struct.l3_process*, i8*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
