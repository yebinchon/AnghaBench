; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c___write_ctrl_pciv2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c___write_ctrl_pciv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { i64 }
%struct.hdlc_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AVM_HDLC_STATUS_2 = common dso_local global i64 0, align 8
@AVM_HDLC_STATUS_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritzcard*, %struct.hdlc_hw*, i32)* @__write_ctrl_pciv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__write_ctrl_pciv2(%struct.fritzcard* %0, %struct.hdlc_hw* %1, i32 %2) #0 {
  %4 = alloca %struct.fritzcard*, align 8
  %5 = alloca %struct.hdlc_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.fritzcard* %0, %struct.fritzcard** %4, align 8
  store %struct.hdlc_hw* %1, %struct.hdlc_hw** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hdlc_hw*, %struct.hdlc_hw** %5, align 8
  %8 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fritzcard*, %struct.fritzcard** %4, align 8
  %12 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @AVM_HDLC_STATUS_2, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @AVM_HDLC_STATUS_1, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  %22 = add nsw i64 %13, %21
  %23 = call i32 @outl(i32 %10, i64 %22)
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
