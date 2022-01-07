; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cosa.c_cosa_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cosa.c_cosa_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32, i32, i32, %struct.channel_data* }
%struct.channel_data = type { i64, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.channel_data*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CARD_MINOR_BITS = common dso_local global i32 0, align 4
@nr_cards = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cosa_cards = common dso_local global %struct.cosa_data* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@chrdev_tx_done = common dso_local global i32 0, align 4
@chrdev_setup_rx = common dso_local global i32 0, align 4
@chrdev_rx_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cosa_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosa_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.cosa_data*, align 8
  %6 = alloca %struct.channel_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iminor(i32 %16)
  %18 = load i32, i32* @CARD_MINOR_BITS, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @nr_cards, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %95

25:                                               ; preds = %2
  %26 = load %struct.cosa_data*, %struct.cosa_data** @cosa_cards, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %26, i64 %28
  store %struct.cosa_data* %29, %struct.cosa_data** %5, align 8
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @iminor(i32 %35)
  %37 = load i32, i32* @CARD_MINOR_BITS, align 4
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %42 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %25
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %95

48:                                               ; preds = %25
  %49 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %50 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %49, i32 0, i32 3
  %51 = load %struct.channel_data*, %struct.channel_data** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %51, i64 %53
  store %struct.channel_data* %54, %struct.channel_data** %6, align 8
  %55 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %56 = load %struct.file*, %struct.file** %4, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  store %struct.channel_data* %55, %struct.channel_data** %57, align 8
  %58 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %59 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %58, i32 0, i32 1
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %63 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %48
  %67 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %68 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %67, i32 0, i32 1
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %95

73:                                               ; preds = %48
  %74 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %75 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %79 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load i32, i32* @chrdev_tx_done, align 4
  %83 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %84 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @chrdev_setup_rx, align 4
  %86 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %87 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @chrdev_rx_done, align 4
  %89 = load %struct.channel_data*, %struct.channel_data** %6, align 8
  %90 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.cosa_data*, %struct.cosa_data** %5, align 8
  %92 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %91, i32 0, i32 1
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %73, %66, %45, %22
  %96 = call i32 (...) @unlock_kernel()
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
