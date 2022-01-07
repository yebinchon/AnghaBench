; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_cm.c_iwch_cxgb3_ofld_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_cm.c_iwch_cxgb3_ofld_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i64 }
%struct.sk_buff = type { i32 }
%struct.cxio_rdev = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwch_cxgb3_ofld_send(%struct.t3cdev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxio_rdev*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %9 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.cxio_rdev*
  store %struct.cxio_rdev* %11, %struct.cxio_rdev** %7, align 8
  %12 = load %struct.cxio_rdev*, %struct.cxio_rdev** %7, align 8
  %13 = call i64 @cxio_fatal_error(%struct.cxio_rdev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @kfree_skb(%struct.sk_buff* %16)
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @cxgb3_ofld_send(%struct.t3cdev* %21, %struct.sk_buff* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @cxio_fatal_error(%struct.cxio_rdev*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cxgb3_ofld_send(%struct.t3cdev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
