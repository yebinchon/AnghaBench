; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_common.c_el_process_subpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_common.c_el_process_subpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_subpacket = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"%s** Unexpected header CLASS %d TYPE %d -- aborting.\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.el_subpacket* @el_process_subpacket(%struct.el_subpacket* %0) #0 {
  %2 = alloca %struct.el_subpacket*, align 8
  %3 = alloca %struct.el_subpacket*, align 8
  store %struct.el_subpacket* %0, %struct.el_subpacket** %2, align 8
  store %struct.el_subpacket* null, %struct.el_subpacket** %3, align 8
  %4 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %5 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %11 [
    i32 128, label %7
    i32 129, label %8
  ]

7:                                                ; preds = %1
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %10 = call %struct.el_subpacket* @el_process_header_subpacket(%struct.el_subpacket* %9)
  store %struct.el_subpacket* %10, %struct.el_subpacket** %3, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %13 = call %struct.el_subpacket* @el_process_subpacket_reg(%struct.el_subpacket* %12)
  store %struct.el_subpacket* %13, %struct.el_subpacket** %3, align 8
  %14 = icmp eq %struct.el_subpacket* null, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* @err_print_prefix, align 4
  %17 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %18 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.el_subpacket*, %struct.el_subpacket** %2, align 8
  %21 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %15, %11
  br label %25

25:                                               ; preds = %24, %8, %7
  %26 = load %struct.el_subpacket*, %struct.el_subpacket** %3, align 8
  ret %struct.el_subpacket* %26
}

declare dso_local %struct.el_subpacket* @el_process_header_subpacket(%struct.el_subpacket*) #1

declare dso_local %struct.el_subpacket* @el_process_subpacket_reg(%struct.el_subpacket*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
