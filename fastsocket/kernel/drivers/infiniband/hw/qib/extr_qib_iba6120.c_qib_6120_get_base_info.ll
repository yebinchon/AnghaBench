; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_get_base_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_get_base_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32 }
%struct.qib_base_info = type { i32 }

@QIB_RUNTIME_FORCE_WC_ORDER = common dso_local global i32 0, align 4
@QIB_RUNTIME_PCIE = common dso_local global i32 0, align 4
@QIB_RUNTIME_FORCE_PIOAVAIL = common dso_local global i32 0, align 4
@QIB_RUNTIME_PIO_REGSWAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*, %struct.qib_base_info*)* @qib_6120_get_base_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_6120_get_base_info(%struct.qib_ctxtdata* %0, %struct.qib_base_info* %1) #0 {
  %3 = alloca %struct.qib_ctxtdata*, align 8
  %4 = alloca %struct.qib_base_info*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %3, align 8
  store %struct.qib_base_info* %1, %struct.qib_base_info** %4, align 8
  %5 = call i64 (...) @qib_unordered_wc()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @QIB_RUNTIME_FORCE_WC_ORDER, align 4
  %9 = load %struct.qib_base_info*, %struct.qib_base_info** %4, align 8
  %10 = getelementptr inbounds %struct.qib_base_info, %struct.qib_base_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %7, %2
  %14 = load i32, i32* @QIB_RUNTIME_PCIE, align 4
  %15 = load i32, i32* @QIB_RUNTIME_FORCE_PIOAVAIL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @QIB_RUNTIME_PIO_REGSWAPPED, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.qib_base_info*, %struct.qib_base_info** %4, align 8
  %20 = getelementptr inbounds %struct.qib_base_info, %struct.qib_base_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  ret i32 0
}

declare dso_local i64 @qib_unordered_wc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
