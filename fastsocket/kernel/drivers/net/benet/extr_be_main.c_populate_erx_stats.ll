; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_populate_erx_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_populate_erx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_rx_obj = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @populate_erx_stats(%struct.be_adapter* %0, %struct.be_rx_obj* %1, i64 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_rx_obj*, align 8
  %6 = alloca i64, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_rx_obj* %1, %struct.be_rx_obj** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %8 = call i32 @BEx_chip(%struct.be_adapter* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.be_rx_obj*, %struct.be_rx_obj** %5, align 8
  %13 = call %struct.TYPE_2__* @rx_stats(%struct.be_rx_obj* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  br label %22

15:                                               ; preds = %3
  %16 = load %struct.be_rx_obj*, %struct.be_rx_obj** %5, align 8
  %17 = call %struct.TYPE_2__* @rx_stats(%struct.be_rx_obj* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @accumulate_16bit_val(i64* %18, i32 %20)
  br label %22

22:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32 @BEx_chip(%struct.be_adapter*) #1

declare dso_local %struct.TYPE_2__* @rx_stats(%struct.be_rx_obj*) #1

declare dso_local i32 @accumulate_16bit_val(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
