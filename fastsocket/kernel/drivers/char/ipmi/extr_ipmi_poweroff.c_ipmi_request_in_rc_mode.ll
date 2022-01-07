; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_request_in_rc_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_request_in_rc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ipmi_addr = type { i32 }
%struct.kernel_ipmi_msg = type { i32 }

@dummy_count = common dso_local global i32 0, align 4
@halt_smi_msg = common dso_local global i32 0, align 4
@halt_recv_msg = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ipmi_addr*, %struct.kernel_ipmi_msg*)* @ipmi_request_in_rc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_request_in_rc_mode(i32 %0, %struct.ipmi_addr* %1, %struct.kernel_ipmi_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipmi_addr*, align 8
  %7 = alloca %struct.kernel_ipmi_msg*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ipmi_addr* %1, %struct.ipmi_addr** %6, align 8
  store %struct.kernel_ipmi_msg* %2, %struct.kernel_ipmi_msg** %7, align 8
  %9 = call i32 @atomic_set(i32* @dummy_count, i32 2)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ipmi_addr*, %struct.ipmi_addr** %6, align 8
  %12 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %7, align 8
  %13 = call i32 @ipmi_request_supply_msgs(i32 %10, %struct.ipmi_addr* %11, i32 0, %struct.kernel_ipmi_msg* %12, i32* null, i32* @halt_smi_msg, %struct.TYPE_5__* @halt_recv_msg, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @atomic_set(i32* @dummy_count, i32 0)
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %31

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %23, %19
  %21 = call i64 @atomic_read(i32* @dummy_count)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ipmi_poll_interface(i32 %24)
  %26 = call i32 (...) @cpu_relax()
  br label %20

27:                                               ; preds = %20
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @halt_recv_msg, i32 0, i32 0, i32 0), align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ipmi_request_supply_msgs(i32, %struct.ipmi_addr*, i32, %struct.kernel_ipmi_msg*, i32*, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ipmi_poll_interface(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
