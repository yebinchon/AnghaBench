; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xcom_hcall.c_xencomm_hypercall_event_channel_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xcom_hcall.c_xencomm_hypercall_event_channel_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencomm_handle = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xencomm_hypercall_event_channel_op(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xencomm_handle*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call %struct.xencomm_handle* @xencomm_map_no_alloc(i8* %7, i32 4)
  store %struct.xencomm_handle* %8, %struct.xencomm_handle** %6, align 8
  %9 = load %struct.xencomm_handle*, %struct.xencomm_handle** %6, align 8
  %10 = icmp eq %struct.xencomm_handle* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.xencomm_handle*, %struct.xencomm_handle** %6, align 8
  %17 = call i32 @xencomm_arch_hypercall_event_channel_op(i32 %15, %struct.xencomm_handle* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.xencomm_handle* @xencomm_map_no_alloc(i8*, i32) #1

declare dso_local i32 @xencomm_arch_hypercall_event_channel_op(i32, %struct.xencomm_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
