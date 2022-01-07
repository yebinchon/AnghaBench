; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_is_card_present.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_is_card_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@HW_VERSION_1 = common dso_local global i64 0, align 8
@IOIR = common dso_local global i64 0, align 8
@CARD_PRESENT_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_hardware*)* @is_card_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_card_present(%struct.ipw_hardware* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_hardware*, align 8
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %3, align 8
  %4 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %5 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HW_VERSION_1, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %11 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IOIR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inw(i64 %14)
  %16 = icmp ne i32 %15, 65535
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %20 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @readl(i32* %22)
  %24 = load i64, i64* @CARD_PRESENT_VALUE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @inw(i64) #1

declare dso_local i64 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
