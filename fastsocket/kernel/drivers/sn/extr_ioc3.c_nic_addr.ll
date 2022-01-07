; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sn/extr_ioc3.c_nic_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sn/extr_ioc3.c_nic_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_driver_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_driver_data*, i64)* @nic_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_addr(%struct.ioc3_driver_data* %0, i64 %1) #0 {
  %3 = alloca %struct.ioc3_driver_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ioc3_driver_data* %0, %struct.ioc3_driver_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %7 = call i32 @nic_reset(%struct.ioc3_driver_data* %6)
  %8 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %9 = call i32 @nic_write_byte(%struct.ioc3_driver_data* %8, i32 240)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 64
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %15 = call i32 @nic_read_bit(%struct.ioc3_driver_data* %14)
  %16 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %17 = call i32 @nic_read_bit(%struct.ioc3_driver_data* %16)
  %18 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = lshr i64 %19, %21
  %23 = and i64 %22, 1
  %24 = call i32 @nic_write_bit(%struct.ioc3_driver_data* %18, i64 %23)
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %10

28:                                               ; preds = %10
  ret void
}

declare dso_local i32 @nic_reset(%struct.ioc3_driver_data*) #1

declare dso_local i32 @nic_write_byte(%struct.ioc3_driver_data*, i32) #1

declare dso_local i32 @nic_read_bit(%struct.ioc3_driver_data*) #1

declare dso_local i32 @nic_write_bit(%struct.ioc3_driver_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
