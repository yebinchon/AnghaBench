; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb4_free_stid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb4_free_stid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@PF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb4_free_stid(%struct.tid_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tid_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tid_info* %0, %struct.tid_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %8 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = sub nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %15 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PF_INET, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %23 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @__clear_bit(i32 %21, i32 %24)
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %28 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @bitmap_release_region(i32 %29, i32 %30, i32 2)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %34 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %41 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %45 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_bh(i32* %45)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
