; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_got_FRMR.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_got_FRMR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { i64, %struct.layer2* }
%struct.layer2 = type { i32 }
%struct.sk_buff = type { i32* }

@ST_L2_7 = common dso_local global i64 0, align 8
@MDL_ERROR_IND = common dso_local global i32 0, align 4
@FLG_L3_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_got_FRMR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_got_FRMR(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer2*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 1
  %11 = load %struct.layer2*, %struct.layer2** %10, align 8
  store %struct.layer2* %11, %struct.layer2** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.sk_buff*
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = load %struct.layer2*, %struct.layer2** %7, align 8
  %16 = call i64 @l2addrsize(%struct.layer2* %15)
  %17 = add nsw i64 %16, 1
  %18 = call i32 @skb_pull(%struct.sk_buff* %14, i64 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 3
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %46, label %34

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @IsUA(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %42 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ST_L2_7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40, %26, %3
  %47 = load %struct.layer2*, %struct.layer2** %7, align 8
  %48 = load i32, i32* @MDL_ERROR_IND, align 4
  %49 = call i32 @l2mgr(%struct.layer2* %47, i32 %48, i8* inttoptr (i64 75 to i8*))
  %50 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %51 = call i32 @establishlink(%struct.FsmInst* %50)
  %52 = load i32, i32* @FLG_L3_INIT, align 4
  %53 = load %struct.layer2*, %struct.layer2** %7, align 8
  %54 = getelementptr inbounds %struct.layer2, %struct.layer2* %53, i32 0, i32 0
  %55 = call i32 @test_and_clear_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %46, %40, %34
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i32 @dev_kfree_skb(%struct.sk_buff* %57)
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @l2addrsize(%struct.layer2*) #1

declare dso_local i64 @IsUA(i32*) #1

declare dso_local i32 @l2mgr(%struct.layer2*, i32, i8*) #1

declare dso_local i32 @establishlink(%struct.FsmInst*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
