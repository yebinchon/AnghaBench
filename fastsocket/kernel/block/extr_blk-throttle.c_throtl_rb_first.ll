; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_rb_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_rb_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32 }
%struct.throtl_rb_root = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.throtl_grp* (%struct.throtl_rb_root*)* @throtl_rb_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.throtl_grp* @throtl_rb_first(%struct.throtl_rb_root* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca %struct.throtl_rb_root*, align 8
  store %struct.throtl_rb_root* %0, %struct.throtl_rb_root** %3, align 8
  %4 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %5 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.throtl_grp* null, %struct.throtl_grp** %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %11 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %16 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %15, i32 0, i32 1
  %17 = call i64 @rb_first(i32* %16)
  %18 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %19 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %14, %9
  %21 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %22 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %27 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.throtl_grp* @rb_entry_tg(i64 %28)
  store %struct.throtl_grp* %29, %struct.throtl_grp** %2, align 8
  br label %31

30:                                               ; preds = %20
  store %struct.throtl_grp* null, %struct.throtl_grp** %2, align 8
  br label %31

31:                                               ; preds = %30, %25, %8
  %32 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  ret %struct.throtl_grp* %32
}

declare dso_local i64 @rb_first(i32*) #1

declare dso_local %struct.throtl_grp* @rb_entry_tg(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
