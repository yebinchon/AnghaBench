; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_nic_write_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_nic_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3*, i32)* @nic_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_write_bit(%struct.ioc3* %0, i32 %1) #0 {
  %3 = alloca %struct.ioc3*, align 8
  %4 = alloca i32, align 4
  store %struct.ioc3* %0, %struct.ioc3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = call i32 @mcr_pack(i32 6, i32 110)
  %9 = call i32 @ioc3_w_mcr(i32 %8)
  br label %13

10:                                               ; preds = %2
  %11 = call i32 @mcr_pack(i32 80, i32 30)
  %12 = call i32 @ioc3_w_mcr(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load %struct.ioc3*, %struct.ioc3** %3, align 8
  %15 = call i32 @nic_wait(%struct.ioc3* %14)
  ret void
}

declare dso_local i32 @ioc3_w_mcr(i32) #1

declare dso_local i32 @mcr_pack(i32, i32) #1

declare dso_local i32 @nic_wait(%struct.ioc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
