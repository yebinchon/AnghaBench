; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_drain_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_drain_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32*, i32, %struct.TYPE_2__, i64, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_drain_queue(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %2, %86
  store i32 0, i32* %6, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @spin_lock_irq(i32 %10)
  %12 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %13 = call i32 @elv_drain_elevator(%struct.request_queue* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %18 = call i32 @blk_throtl_drain(%struct.request_queue* %17)
  br label %19

19:                                               ; preds = %16, %7
  %20 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %21 = call i32 @__blk_run_queue(%struct.request_queue* %20)
  %22 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %19
  %31 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %32 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %31, i32 0, i32 5
  %33 = call i32 @list_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %74, %30
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %77

42:                                               ; preds = %39
  %43 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %44 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %54 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %63 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @list_empty(i32* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %42
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %39

77:                                               ; preds = %39
  br label %78

78:                                               ; preds = %77, %19
  %79 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %80 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @spin_unlock_irq(i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  br label %88

86:                                               ; preds = %78
  %87 = call i32 @msleep(i32 10)
  br label %7

88:                                               ; preds = %85
  %89 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %90 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %88
  %94 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %95 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @spin_lock_irq(i32 %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %115, %93
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %101 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @ARRAY_SIZE(i32* %103)
  %105 = icmp slt i32 %99, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %108 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @wake_up_all(i32* %113)
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %98

118:                                              ; preds = %98
  %119 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %120 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @spin_unlock_irq(i32 %121)
  br label %123

123:                                              ; preds = %118, %88
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @elv_drain_elevator(%struct.request_queue*) #1

declare dso_local i32 @blk_throtl_drain(%struct.request_queue*) #1

declare dso_local i32 @__blk_run_queue(%struct.request_queue*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
