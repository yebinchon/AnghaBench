; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_get_packets_from_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_get_packets_from_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_hardware*)* @get_packets_from_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_packets_from_hw(%struct.ipw_hardware* %0) #0 {
  %2 = alloca %struct.ipw_hardware*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  br label %9

9:                                                ; preds = %22, %1
  %10 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %11 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %16 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i1 [ false, %9 ], [ %19, %14 ]
  br i1 %21, label %22, label %37

22:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  %23 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %24 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %28 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %32 = call i32 @do_receive_packet(%struct.ipw_hardware* %31)
  %33 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %34 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  br label %9

37:                                               ; preds = %20
  %38 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %39 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @do_receive_packet(%struct.ipw_hardware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
