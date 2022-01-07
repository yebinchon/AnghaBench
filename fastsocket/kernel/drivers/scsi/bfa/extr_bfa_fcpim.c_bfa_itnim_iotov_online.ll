; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_iotov_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_iotov_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { i32, i32 }
%struct.bfa_ioim_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_itnim_s*)* @bfa_itnim_iotov_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_itnim_iotov_online(%struct.bfa_itnim_s* %0) #0 {
  %2 = alloca %struct.bfa_itnim_s*, align 8
  %3 = alloca %struct.bfa_ioim_s*, align 8
  store %struct.bfa_itnim_s* %0, %struct.bfa_itnim_s** %2, align 8
  %4 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %5 = call i32 @bfa_itnim_iotov_stop(%struct.bfa_itnim_s* %4)
  %6 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %7 = load i32, i32* @BFA_FALSE, align 4
  %8 = call i32 @bfa_itnim_delayed_comp(%struct.bfa_itnim_s* %6, i32 %7)
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %10, i32 0, i32 1
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %16, i32 0, i32 1
  %18 = call i32 @bfa_q_deq(i32* %17, %struct.bfa_ioim_s** %3)
  %19 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %19, i32 0, i32 0
  %21 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %21, i32 0, i32 0
  %23 = call i32 @list_add_tail(i32* %20, i32* %22)
  %24 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %25 = call i32 @bfa_ioim_start(%struct.bfa_ioim_s* %24)
  br label %9

26:                                               ; preds = %9
  ret void
}

declare dso_local i32 @bfa_itnim_iotov_stop(%struct.bfa_itnim_s*) #1

declare dso_local i32 @bfa_itnim_delayed_comp(%struct.bfa_itnim_s*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.bfa_ioim_s**) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfa_ioim_start(%struct.bfa_ioim_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
