; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixpdev.c_ixpdev_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixpdev.c_ixpdev_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@nds_count = common dso_local global i32 0, align 4
@nds = common dso_local global i32* null, align 8
@TX_BUF_COUNT = common dso_local global i32 0, align 4
@tx_desc = common dso_local global %struct.TYPE_3__* null, align 8
@RX_BUF_COUNT = common dso_local global i32 0, align 4
@rx_desc = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixpdev_deinit() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %13, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @nds_count, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = load i32*, i32** @nds, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @unregister_netdev(i32 %11)
  br label %13

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %2

16:                                               ; preds = %2
  %17 = call i32 @ixp2000_uengine_stop_contexts(i32 1, i32 255)
  %18 = call i32 @ixp2000_uengine_stop_contexts(i32 0, i32 255)
  %19 = call i32 @ixp2000_uengine_reset(i32 3)
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %33, %16
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @TX_BUF_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tx_desc, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @phys_to_virt(i32 %30)
  %32 = call i32 @free_page(i64 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %20

36:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @RX_BUF_COUNT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rx_desc, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @phys_to_virt(i32 %47)
  %49 = call i32 @free_page(i64 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %37

53:                                               ; preds = %37
  ret void
}

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @ixp2000_uengine_stop_contexts(i32, i32) #1

declare dso_local i32 @ixp2000_uengine_reset(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i64 @phys_to_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
