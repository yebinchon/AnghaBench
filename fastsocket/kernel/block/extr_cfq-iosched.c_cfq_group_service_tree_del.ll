; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_service_tree_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_service_tree_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_rb_root = type { i32 }
%struct.cfq_group = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_rb_root*, %struct.cfq_group*)* @cfq_group_service_tree_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_group_service_tree_del(%struct.cfq_rb_root* %0, %struct.cfq_group* %1) #0 {
  %3 = alloca %struct.cfq_rb_root*, align 8
  %4 = alloca %struct.cfq_group*, align 8
  store %struct.cfq_rb_root* %0, %struct.cfq_rb_root** %3, align 8
  store %struct.cfq_group* %1, %struct.cfq_group** %4, align 8
  %5 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %6 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %9 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = sub nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %15 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %14, i32 0, i32 0
  %16 = call i32 @RB_EMPTY_NODE(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %20 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %19, i32 0, i32 0
  %21 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %22 = call i32 @cfq_rb_erase(i32* %20, %struct.cfq_rb_root* %21)
  br label %23

23:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @cfq_rb_erase(i32*, %struct.cfq_rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
