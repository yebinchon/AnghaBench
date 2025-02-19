; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qib_ucontext = type { %struct.ib_ucontext }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ucontext* (%struct.ib_device*, %struct.ib_udata*)* @qib_alloc_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ucontext* @qib_alloc_ucontext(%struct.ib_device* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.qib_ucontext*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.qib_ucontext* @kmalloc(i32 4, i32 %7)
  store %struct.qib_ucontext* %8, %struct.qib_ucontext** %5, align 8
  %9 = load %struct.qib_ucontext*, %struct.qib_ucontext** %5, align 8
  %10 = icmp ne %struct.qib_ucontext* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.ib_ucontext* @ERR_PTR(i32 %13)
  store %struct.ib_ucontext* %14, %struct.ib_ucontext** %6, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.qib_ucontext*, %struct.qib_ucontext** %5, align 8
  %17 = getelementptr inbounds %struct.qib_ucontext, %struct.qib_ucontext* %16, i32 0, i32 0
  store %struct.ib_ucontext* %17, %struct.ib_ucontext** %6, align 8
  br label %18

18:                                               ; preds = %15, %11
  %19 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  ret %struct.ib_ucontext* %19
}

declare dso_local %struct.qib_ucontext* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_ucontext* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
