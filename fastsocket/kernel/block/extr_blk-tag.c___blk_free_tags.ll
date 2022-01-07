; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-tag.c___blk_free_tags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-tag.c___blk_free_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_queue_tag = type { i64, %struct.blk_queue_tag*, %struct.blk_queue_tag*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_queue_tag*)* @__blk_free_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blk_free_tags(%struct.blk_queue_tag* %0) #0 {
  %2 = alloca %struct.blk_queue_tag*, align 8
  %3 = alloca i32, align 4
  store %struct.blk_queue_tag* %0, %struct.blk_queue_tag** %2, align 8
  %4 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %2, align 8
  %5 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %4, i32 0, i32 3
  %6 = call i32 @atomic_dec_and_test(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %2, align 8
  %11 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %10, i32 0, i32 1
  %12 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %11, align 8
  %13 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %2, align 8
  %14 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @find_first_bit(%struct.blk_queue_tag* %12, i64 %15)
  %17 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %2, align 8
  %18 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %2, align 8
  %24 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %23, i32 0, i32 2
  %25 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %24, align 8
  %26 = call i32 @kfree(%struct.blk_queue_tag* %25)
  %27 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %2, align 8
  %28 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %27, i32 0, i32 2
  store %struct.blk_queue_tag* null, %struct.blk_queue_tag** %28, align 8
  %29 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %2, align 8
  %30 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %29, i32 0, i32 1
  %31 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %30, align 8
  %32 = call i32 @kfree(%struct.blk_queue_tag* %31)
  %33 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %2, align 8
  %34 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %33, i32 0, i32 1
  store %struct.blk_queue_tag* null, %struct.blk_queue_tag** %34, align 8
  %35 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %2, align 8
  %36 = call i32 @kfree(%struct.blk_queue_tag* %35)
  br label %37

37:                                               ; preds = %9, %1
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @find_first_bit(%struct.blk_queue_tag*, i64) #1

declare dso_local i32 @kfree(%struct.blk_queue_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
