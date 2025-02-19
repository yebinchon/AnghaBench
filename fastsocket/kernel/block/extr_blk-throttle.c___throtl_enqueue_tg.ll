; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c___throtl_enqueue_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c___throtl_enqueue_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { %struct.throtl_rb_root }
%struct.throtl_rb_root = type { i32 }
%struct.throtl_grp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*, %struct.throtl_grp*)* @__throtl_enqueue_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__throtl_enqueue_tg(%struct.throtl_data* %0, %struct.throtl_grp* %1) #0 {
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca %struct.throtl_rb_root*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %3, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %4, align 8
  %6 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %7 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %6, i32 0, i32 0
  store %struct.throtl_rb_root* %7, %struct.throtl_rb_root** %5, align 8
  %8 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %5, align 8
  %9 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %10 = call i32 @tg_service_tree_add(%struct.throtl_rb_root* %8, %struct.throtl_grp* %9)
  %11 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %12 = call i32 @throtl_mark_tg_on_rr(%struct.throtl_grp* %11)
  %13 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %5, align 8
  %14 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  ret void
}

declare dso_local i32 @tg_service_tree_add(%struct.throtl_rb_root*, %struct.throtl_grp*) #1

declare dso_local i32 @throtl_mark_tg_on_rr(%struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
