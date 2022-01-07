; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_set_tx_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_set_tx_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.mceusb_dev* }
%struct.mceusb_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MCE_DEFAULT_TX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @mceusb_set_tx_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mceusb_set_tx_mask(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mceusb_dev*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 0
  %8 = load %struct.mceusb_dev*, %struct.mceusb_dev** %7, align 8
  store %struct.mceusb_dev* %8, %struct.mceusb_dev** %5, align 8
  %9 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MCE_DEFAULT_TX_MASK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MCE_DEFAULT_TX_MASK, align 4
  %25 = xor i32 %23, %24
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ %27, %26 ]
  %30 = shl i32 %29, 1
  %31 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %32 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %14
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
