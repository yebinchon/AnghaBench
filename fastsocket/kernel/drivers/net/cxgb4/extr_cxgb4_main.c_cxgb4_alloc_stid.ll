; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb4_alloc_stid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb4_alloc_stid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@PF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_alloc_stid(%struct.tid_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.tid_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.tid_info* %0, %struct.tid_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %9 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PF_INET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %16 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @find_first_zero_bit(i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %24 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %30 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @__set_bit(i32 %28, i32 %31)
  br label %34

33:                                               ; preds = %14
  store i32 -1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %27
  br label %47

35:                                               ; preds = %3
  %36 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %37 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %40 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bitmap_find_free_region(i32 %38, i32 %41, i32 2)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 -1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %35
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %53 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %51, i8** %58, align 8
  %59 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %60 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  %66 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %67 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %50, %47
  %71 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %72 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
