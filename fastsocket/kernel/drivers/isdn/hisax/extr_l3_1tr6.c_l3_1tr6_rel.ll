; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_rel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32*, i32 }

@WE0_cause = common dso_local global i32 0, align 4
@NO_CAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"missing REL cause\00", align 1
@MT_N1_REL_ACK = common dso_local global i32 0, align 4
@PROTO_DIS_N1 = common dso_local global i32 0, align 4
@CC_RELEASE = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3_1tr6_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_1tr6_rel(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.sk_buff*
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WE0_cause, align 4
  %19 = call i32* @findie(i32* %14, i32 %17, i32 %18, i32 0)
  store i32* %19, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %31 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %42 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  br label %48

44:                                               ; preds = %26
  %45 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %46 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %37
  br label %56

49:                                               ; preds = %21
  %50 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %51 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %54 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %48
  br label %65

57:                                               ; preds = %3
  %58 = load i32, i32* @NO_CAUSE, align 4
  %59 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %60 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call i32 @l3_1tr6_error(%struct.l3_process* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %63)
  br label %92

65:                                               ; preds = %56
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = call i32 @dev_kfree_skb(%struct.sk_buff* %66)
  %68 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %69 = call i32 @StopAllL3Timer(%struct.l3_process* %68)
  %70 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %71 = call i32 @newl3state(%struct.l3_process* %70, i32 0)
  %72 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %73 = load i32, i32* @MT_N1_REL_ACK, align 4
  %74 = load i32, i32* @PROTO_DIS_N1, align 4
  %75 = call i32 @l3_1TR6_message(%struct.l3_process* %72, i32 %73, i32 %74)
  %76 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %77 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)** %80, align 8
  %82 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %83 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* @CC_RELEASE, align 4
  %86 = load i32, i32* @INDICATION, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %89 = call i32 %81(%struct.TYPE_6__* %84, i32 %87, %struct.l3_process* %88)
  %90 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %91 = call i32 @release_l3_process(%struct.l3_process* %90)
  br label %92

92:                                               ; preds = %65, %57
  ret void
}

declare dso_local i32* @findie(i32*, i32, i32, i32) #1

declare dso_local i32 @l3_1tr6_error(%struct.l3_process*, i8*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @StopAllL3Timer(%struct.l3_process*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @l3_1TR6_message(%struct.l3_process*, i32, i32) #1

declare dso_local i32 @release_l3_process(%struct.l3_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
