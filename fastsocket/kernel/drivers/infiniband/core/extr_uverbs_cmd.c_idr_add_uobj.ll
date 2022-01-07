; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_cmd.c_idr_add_uobj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_cmd.c_idr_add_uobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.ib_uobject = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_uverbs_idr_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, %struct.ib_uobject*)* @idr_add_uobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idr_add_uobj(%struct.idr* %0, %struct.ib_uobject* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idr*, align 8
  %5 = alloca %struct.ib_uobject*, align 8
  %6 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %4, align 8
  store %struct.ib_uobject* %1, %struct.ib_uobject** %5, align 8
  br label %7

7:                                                ; preds = %27, %2
  %8 = load %struct.idr*, %struct.idr** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @idr_pre_get(%struct.idr* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %7
  %16 = call i32 @spin_lock(i32* @ib_uverbs_idr_lock)
  %17 = load %struct.idr*, %struct.idr** %4, align 8
  %18 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %19 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %20 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %19, i32 0, i32 0
  %21 = call i32 @idr_get_new(%struct.idr* %17, %struct.ib_uobject* %18, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = call i32 @spin_unlock(i32* @ib_uverbs_idr_lock)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %7

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @idr_pre_get(%struct.idr*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new(%struct.idr*, %struct.ib_uobject*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
