; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_lc_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_lc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 (%struct.PStack.0*, i32, %struct.sk_buff*)*, i32 }
%struct.PStack.0 = type opaque
%struct.sk_buff = type { i32 }

@ST_L3_LC_ESTAB = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"lc_connect: release link\00", align 1
@EV_RELEASE_REQ = common dso_local global i32 0, align 4
@DL_ESTABLISH = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lc_connect(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %11 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %10, i32 0, i32 0
  %12 = load %struct.PStack*, %struct.PStack** %11, align 8
  store %struct.PStack* %12, %struct.PStack** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.sk_buff*
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %16 = load i32, i32* @ST_L3_LC_ESTAB, align 4
  %17 = call i32 @FsmChangeState(%struct.FsmInst* %15, i32 %16)
  br label %18

18:                                               ; preds = %24, %3
  %19 = load %struct.PStack*, %struct.PStack** %7, align 8
  %20 = getelementptr inbounds %struct.PStack, %struct.PStack* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = call %struct.sk_buff* @skb_dequeue(i32* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %8, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load %struct.PStack*, %struct.PStack** %7, align 8
  %26 = getelementptr inbounds %struct.PStack, %struct.PStack* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32 (%struct.PStack.0*, i32, %struct.sk_buff*)*, i32 (%struct.PStack.0*, i32, %struct.sk_buff*)** %27, align 8
  %29 = load %struct.PStack*, %struct.PStack** %7, align 8
  %30 = bitcast %struct.PStack* %29 to %struct.PStack.0*
  %31 = load i32, i32* @DL_DATA, align 4
  %32 = load i32, i32* @REQUEST, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call i32 %28(%struct.PStack.0* %30, i32 %33, %struct.sk_buff* %34)
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.PStack*, %struct.PStack** %7, align 8
  %40 = getelementptr inbounds %struct.PStack, %struct.PStack* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load %struct.PStack*, %struct.PStack** %7, align 8
  %49 = getelementptr inbounds %struct.PStack, %struct.PStack* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.PStack*, %struct.PStack** %7, align 8
  %55 = call i32 @l3_debug(%struct.PStack* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.PStack*, %struct.PStack** %7, align 8
  %58 = getelementptr inbounds %struct.PStack, %struct.PStack* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* @EV_RELEASE_REQ, align 4
  %61 = call i32 @FsmEvent(i32* %59, i32 %60, i32* null)
  br label %68

62:                                               ; preds = %44, %38
  %63 = load %struct.PStack*, %struct.PStack** %7, align 8
  %64 = load i32, i32* @DL_ESTABLISH, align 4
  %65 = load i32, i32* @INDICATION, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @l3ml3p(%struct.PStack* %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  ret void
}

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @l3_debug(%struct.PStack*, i8*) #1

declare dso_local i32 @FsmEvent(i32*, i32, i32*) #1

declare dso_local i32 @l3ml3p(%struct.PStack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
