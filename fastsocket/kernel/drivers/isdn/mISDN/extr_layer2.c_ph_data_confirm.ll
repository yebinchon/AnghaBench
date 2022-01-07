; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_ph_data_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_ph_data_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i8*, i32, i32, i32 }
%struct.mISDNhead = type { i8* }
%struct.sk_buff = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@FLG_L1_NOTREADY = common dso_local global i32 0, align 4
@MISDN_ID_NONE = common dso_local global i8* null, align 8
@EV_L2_ACK_PULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.layer2*, %struct.mISDNhead*, %struct.sk_buff*)* @ph_data_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ph_data_confirm(%struct.layer2* %0, %struct.mISDNhead* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.layer2*, align 8
  %5 = alloca %struct.mISDNhead*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.layer2* %0, %struct.layer2** %4, align 8
  store %struct.mISDNhead* %1, %struct.mISDNhead** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %7, align 8
  %10 = load i32, i32* @EAGAIN, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @FLG_L1_NOTREADY, align 4
  %13 = load %struct.layer2*, %struct.layer2** %4, align 8
  %14 = getelementptr inbounds %struct.layer2, %struct.layer2* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %3
  %18 = load %struct.mISDNhead*, %struct.mISDNhead** %5, align 8
  %19 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.layer2*, %struct.layer2** %4, align 8
  %22 = getelementptr inbounds %struct.layer2, %struct.layer2* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %20, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %17
  %26 = load %struct.layer2*, %struct.layer2** %4, align 8
  %27 = getelementptr inbounds %struct.layer2, %struct.layer2* %26, i32 0, i32 2
  %28 = call %struct.sk_buff* @skb_dequeue(i32* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i8* @mISDN_HEAD_ID(%struct.sk_buff* %32)
  %34 = load %struct.layer2*, %struct.layer2** %4, align 8
  %35 = getelementptr inbounds %struct.layer2, %struct.layer2* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.layer2*, %struct.layer2** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i64 @l2down_skb(%struct.layer2* %36, %struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call i32 @dev_kfree_skb(%struct.sk_buff* %41)
  %43 = load i8*, i8** @MISDN_ID_NONE, align 8
  %44 = load %struct.layer2*, %struct.layer2** %4, align 8
  %45 = getelementptr inbounds %struct.layer2, %struct.layer2* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %40, %31
  br label %51

47:                                               ; preds = %25
  %48 = load i8*, i8** @MISDN_ID_NONE, align 8
  %49 = load %struct.layer2*, %struct.layer2** %4, align 8
  %50 = getelementptr inbounds %struct.layer2, %struct.layer2* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @dev_kfree_skb(%struct.sk_buff* %55)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.layer2*, %struct.layer2** %4, align 8
  %59 = getelementptr inbounds %struct.layer2, %struct.layer2* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** @MISDN_ID_NONE, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32, i32* @FLG_L1_NOTREADY, align 4
  %65 = load %struct.layer2*, %struct.layer2** %4, align 8
  %66 = getelementptr inbounds %struct.layer2, %struct.layer2* %65, i32 0, i32 1
  %67 = call i32 @test_and_clear_bit(i32 %64, i32* %66)
  %68 = load %struct.layer2*, %struct.layer2** %4, align 8
  %69 = getelementptr inbounds %struct.layer2, %struct.layer2* %68, i32 0, i32 3
  %70 = load i32, i32* @EV_L2_ACK_PULL, align 4
  %71 = call i32 @mISDN_FsmEvent(i32* %69, i32 %70, i32* null)
  br label %72

72:                                               ; preds = %63, %57
  br label %73

73:                                               ; preds = %72, %17
  br label %74

74:                                               ; preds = %73, %3
  %75 = load i32, i32* @FLG_L1_NOTREADY, align 4
  %76 = load %struct.layer2*, %struct.layer2** %4, align 8
  %77 = getelementptr inbounds %struct.layer2, %struct.layer2* %76, i32 0, i32 1
  %78 = call i32 @test_and_set_bit(i32 %75, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %112, label %80

80:                                               ; preds = %74
  %81 = load %struct.layer2*, %struct.layer2** %4, align 8
  %82 = getelementptr inbounds %struct.layer2, %struct.layer2* %81, i32 0, i32 2
  %83 = call %struct.sk_buff* @skb_dequeue(i32* %82)
  store %struct.sk_buff* %83, %struct.sk_buff** %7, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = icmp ne %struct.sk_buff* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %80
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i8* @mISDN_HEAD_ID(%struct.sk_buff* %87)
  %89 = load %struct.layer2*, %struct.layer2** %4, align 8
  %90 = getelementptr inbounds %struct.layer2, %struct.layer2* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.layer2*, %struct.layer2** %4, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = call i64 @l2down_skb(%struct.layer2* %91, %struct.sk_buff* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %86
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = call i32 @dev_kfree_skb(%struct.sk_buff* %96)
  %98 = load i8*, i8** @MISDN_ID_NONE, align 8
  %99 = load %struct.layer2*, %struct.layer2** %4, align 8
  %100 = getelementptr inbounds %struct.layer2, %struct.layer2* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @FLG_L1_NOTREADY, align 4
  %102 = load %struct.layer2*, %struct.layer2** %4, align 8
  %103 = getelementptr inbounds %struct.layer2, %struct.layer2* %102, i32 0, i32 1
  %104 = call i32 @test_and_clear_bit(i32 %101, i32* %103)
  br label %105

105:                                              ; preds = %95, %86
  br label %111

106:                                              ; preds = %80
  %107 = load i32, i32* @FLG_L1_NOTREADY, align 4
  %108 = load %struct.layer2*, %struct.layer2** %4, align 8
  %109 = getelementptr inbounds %struct.layer2, %struct.layer2* %108, i32 0, i32 1
  %110 = call i32 @test_and_clear_bit(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %106, %105
  br label %112

112:                                              ; preds = %111, %74
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i8* @mISDN_HEAD_ID(%struct.sk_buff*) #1

declare dso_local i64 @l2down_skb(%struct.layer2*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmEvent(i32*, i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
