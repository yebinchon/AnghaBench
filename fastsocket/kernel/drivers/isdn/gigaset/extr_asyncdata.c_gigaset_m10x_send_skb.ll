; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_gigaset_m10x_send_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_gigaset_m10x_send_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@ISDN_PROTO_L2_HDLC = common dso_local global i64 0, align 8
@HW_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to allocate memory for encoding!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gigaset_m10x_send_skb(%struct.bc_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bc_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bc_state* %0, %struct.bc_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %12 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ISDN_PROTO_L2_HDLC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @HW_HDR_LEN, align 4
  %19 = call %struct.sk_buff* @HDLC_Encode(%struct.sk_buff* %17, i32 %18, i32 0)
  store %struct.sk_buff* %19, %struct.sk_buff** %5, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @HW_HDR_LEN, align 4
  %23 = call %struct.sk_buff* @iraw_encode(%struct.sk_buff* %21, i32 %22, i32 0)
  store %struct.sk_buff* %23, %struct.sk_buff** %5, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %29 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %24
  %37 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %38 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %37, i32 0, i32 2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @skb_queue_tail(i32* %38, %struct.sk_buff* %39)
  %41 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %42 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %48 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %36
  %54 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %55 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = call i32 @tasklet_schedule(i32* %57)
  br label %59

59:                                               ; preds = %53, %36
  %60 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %61 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.sk_buff* @HDLC_Encode(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.sk_buff* @iraw_encode(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
