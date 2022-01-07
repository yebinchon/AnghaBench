; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_got_FRMR.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_got_FRMR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { i64, %struct.PStack* }
%struct.PStack = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.PStack.0*, i32, i8*)* }
%struct.PStack.0 = type opaque
%struct.sk_buff = type { i32* }

@ST_L2_7 = common dso_local global i64 0, align 8
@MDL_ERROR = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@FLG_L3_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_got_FRMR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_got_FRMR(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 1
  %11 = load %struct.PStack*, %struct.PStack** %10, align 8
  store %struct.PStack* %11, %struct.PStack** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.sk_buff*
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = load %struct.PStack*, %struct.PStack** %7, align 8
  %16 = getelementptr inbounds %struct.PStack, %struct.PStack* %15, i32 0, i32 0
  %17 = call i64 @l2addrsize(%struct.TYPE_4__* %16)
  %18 = add nsw i64 %17, 1
  %19 = call i32 @skb_pull(%struct.sk_buff* %14, i64 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %47, label %35

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @IsUA(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %43 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ST_L2_7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %41, %27, %3
  %48 = load %struct.PStack*, %struct.PStack** %7, align 8
  %49 = getelementptr inbounds %struct.PStack, %struct.PStack* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.PStack.0*, i32, i8*)*, i32 (%struct.PStack.0*, i32, i8*)** %50, align 8
  %52 = load %struct.PStack*, %struct.PStack** %7, align 8
  %53 = bitcast %struct.PStack* %52 to %struct.PStack.0*
  %54 = load i32, i32* @MDL_ERROR, align 4
  %55 = load i32, i32* @INDICATION, align 4
  %56 = or i32 %54, %55
  %57 = call i32 %51(%struct.PStack.0* %53, i32 %56, i8* inttoptr (i64 75 to i8*))
  %58 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %59 = call i32 @establishlink(%struct.FsmInst* %58)
  %60 = load i32, i32* @FLG_L3_INIT, align 4
  %61 = load %struct.PStack*, %struct.PStack** %7, align 8
  %62 = getelementptr inbounds %struct.PStack, %struct.PStack* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @test_and_clear_bit(i32 %60, i32* %63)
  br label %65

65:                                               ; preds = %47, %41, %35
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = call i32 @dev_kfree_skb(%struct.sk_buff* %66)
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @l2addrsize(%struct.TYPE_4__*) #1

declare dso_local i64 @IsUA(i32*) #1

declare dso_local i32 @establishlink(%struct.FsmInst*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
