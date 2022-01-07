; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql3xxx_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql3xxx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ql3_adapter = type { i32 }

@QL_ADAPTER_UP = common dso_local global i32 0, align 4
@QL_DO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ql3xxx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql3xxx_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ql3_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ql3_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.ql3_adapter* %5, %struct.ql3_adapter** %3, align 8
  br label %6

6:                                                ; preds = %13, %1
  %7 = load i32, i32* @QL_ADAPTER_UP, align 4
  %8 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = call i32 @msleep(i32 50)
  br label %6

15:                                               ; preds = %6
  %16 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %17 = load i32, i32* @QL_DO_RESET, align 4
  %18 = call i32 @ql_adapter_down(%struct.ql3_adapter* %16, i32 %17)
  ret i32 0
}

declare dso_local %struct.ql3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ql_adapter_down(%struct.ql3_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
