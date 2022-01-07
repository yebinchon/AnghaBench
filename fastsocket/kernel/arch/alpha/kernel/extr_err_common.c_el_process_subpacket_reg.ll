; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_common.c_el_process_subpacket_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_common.c_el_process_subpacket_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_subpacket_handler = type { i64, %struct.el_subpacket* (%struct.el_subpacket*)*, %struct.el_subpacket_handler* }
%struct.el_subpacket = type { i64 }

@subpacket_handler_list = common dso_local global %struct.el_subpacket_handler* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.el_subpacket* (%struct.el_subpacket*)* @el_process_subpacket_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.el_subpacket* @el_process_subpacket_reg(%struct.el_subpacket* %0) #0 {
  %2 = alloca %struct.el_subpacket*, align 8
  %3 = alloca %struct.el_subpacket*, align 8
  %4 = alloca %struct.el_subpacket_handler*, align 8
  store %struct.el_subpacket* %0, %struct.el_subpacket** %2, align 8
  store %struct.el_subpacket* null, %struct.el_subpacket** %3, align 8
  %5 = load %struct.el_subpacket_handler*, %struct.el_subpacket_handler** @subpacket_handler_list, align 8
  store %struct.el_subpacket_handler* %5, %struct.el_subpacket_handler** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.el_subpacket_handler*, %struct.el_subpacket_handler** %4, align 8
  %8 = icmp ne %struct.el_subpacket_handler* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.el_subpacket_handler*, %struct.el_subpacket_handler** %4, align 8
  %11 = getelementptr inbounds %struct.el_subpacket_handler, %struct.el_subpacket_handler* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %14 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br label %17

17:                                               ; preds = %9, %6
  %18 = phi i1 [ false, %6 ], [ %16, %9 ]
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.el_subpacket_handler*, %struct.el_subpacket_handler** %4, align 8
  %22 = getelementptr inbounds %struct.el_subpacket_handler, %struct.el_subpacket_handler* %21, i32 0, i32 2
  %23 = load %struct.el_subpacket_handler*, %struct.el_subpacket_handler** %22, align 8
  store %struct.el_subpacket_handler* %23, %struct.el_subpacket_handler** %4, align 8
  br label %6

24:                                               ; preds = %17
  %25 = load %struct.el_subpacket_handler*, %struct.el_subpacket_handler** %4, align 8
  %26 = icmp ne %struct.el_subpacket_handler* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.el_subpacket_handler*, %struct.el_subpacket_handler** %4, align 8
  %29 = getelementptr inbounds %struct.el_subpacket_handler, %struct.el_subpacket_handler* %28, i32 0, i32 1
  %30 = load %struct.el_subpacket* (%struct.el_subpacket*)*, %struct.el_subpacket* (%struct.el_subpacket*)** %29, align 8
  %31 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %32 = call %struct.el_subpacket* %30(%struct.el_subpacket* %31)
  store %struct.el_subpacket* %32, %struct.el_subpacket** %3, align 8
  br label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  ret %struct.el_subpacket* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
