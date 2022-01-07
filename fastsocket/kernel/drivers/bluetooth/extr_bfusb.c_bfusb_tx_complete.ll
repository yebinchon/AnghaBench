; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_tx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64 }
%struct.sk_buff = type { i64, i64 }
%struct.bfusb_data = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"bfusb %p urb %p skb %p len %d\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @bfusb_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfusb_tx_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.bfusb_data*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.sk_buff*
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bfusb_data*
  store %struct.bfusb_data* %12, %struct.bfusb_data** %4, align 8
  %13 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %13, %struct.urb* %14, %struct.sk_buff* %15, i64 %18)
  %20 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %21 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %20, i32 0, i32 4
  %22 = call i32 @atomic_dec(i32* %21)
  %23 = load i32, i32* @HCI_RUNNING, align 4
  %24 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %25 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @test_bit(i32 %23, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %74

31:                                               ; preds = %1
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %41 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %39
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  br label %57

49:                                               ; preds = %31
  %50 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %51 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %49, %36
  %58 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %59 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %58, i32 0, i32 0
  %60 = call i32 @read_lock(i32* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %63 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %62, i32 0, i32 2
  %64 = call i32 @skb_unlink(%struct.sk_buff* %61, i32* %63)
  %65 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %66 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %65, i32 0, i32 1
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call i32 @skb_queue_tail(i32* %66, %struct.sk_buff* %67)
  %69 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %70 = call i32 @bfusb_tx_wakeup(%struct.bfusb_data* %69)
  %71 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %72 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %71, i32 0, i32 0
  %73 = call i32 @read_unlock(i32* %72)
  br label %74

74:                                               ; preds = %57, %30
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*, %struct.urb*, %struct.sk_buff*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @bfusb_tx_wakeup(%struct.bfusb_data*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
