; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_service_tree_for.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_service_tree_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_rb_root = type { i32 }
%struct.cfq_group = type { %struct.cfq_rb_root**, %struct.cfq_rb_root }

@IDLE_WORKLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_rb_root* (%struct.cfq_group*, i32, i32)* @service_tree_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_rb_root* @service_tree_for(%struct.cfq_group* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cfq_rb_root*, align 8
  %5 = alloca %struct.cfq_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cfq_group* %0, %struct.cfq_group** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %9 = icmp ne %struct.cfq_group* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store %struct.cfq_rb_root* null, %struct.cfq_rb_root** %4, align 8
  br label %29

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IDLE_WORKLOAD, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %17 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %16, i32 0, i32 1
  store %struct.cfq_rb_root* %17, %struct.cfq_rb_root** %4, align 8
  br label %29

18:                                               ; preds = %11
  %19 = load %struct.cfq_group*, %struct.cfq_group** %5, align 8
  %20 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %19, i32 0, i32 0
  %21 = load %struct.cfq_rb_root**, %struct.cfq_rb_root*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cfq_rb_root*, %struct.cfq_rb_root** %21, i64 %23
  %25 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %25, i64 %27
  store %struct.cfq_rb_root* %28, %struct.cfq_rb_root** %4, align 8
  br label %29

29:                                               ; preds = %18, %15, %10
  %30 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %4, align 8
  ret %struct.cfq_rb_root* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
