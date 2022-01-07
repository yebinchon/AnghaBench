; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_cmd_use_polling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_cmd_use_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MTHCA_CMD_USE_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_cmd_use_polling(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %4 = load i32, i32* @MTHCA_CMD_USE_EVENTS, align 4
  %5 = xor i32 %4, -1
  %6 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %5
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = call i32 @down(i32* %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %28 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @up(i32* %34)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
