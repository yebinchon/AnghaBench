; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_tg_fill_dev_details.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_tg_fill_dev_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.throtl_grp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*, %struct.throtl_grp*)* @throtl_tg_fill_dev_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_tg_fill_dev_details(%struct.throtl_data* %0, %struct.throtl_grp* %1) #0 {
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %3, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %4, align 8
  %5 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %6 = icmp ne %struct.throtl_grp* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %9 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %2
  br label %30

14:                                               ; preds = %7
  %15 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %16 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @spin_lock_irq(i32 %19)
  %21 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %22 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %23 = call i32 @__throtl_tg_fill_dev_details(%struct.throtl_data* %21, %struct.throtl_grp* %22)
  %24 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %25 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @spin_unlock_irq(i32 %28)
  br label %30

30:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @__throtl_tg_fill_dev_details(%struct.throtl_data*, %struct.throtl_grp*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
