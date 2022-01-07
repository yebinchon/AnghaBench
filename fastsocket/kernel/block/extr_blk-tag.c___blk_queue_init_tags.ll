; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-tag.c___blk_queue_init_tags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-tag.c___blk_queue_init_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_queue_tag = type { i32 }
%struct.request_queue = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blk_queue_tag* (%struct.request_queue*, i32)* @__blk_queue_init_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blk_queue_tag* @__blk_queue_init_tags(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_queue_tag*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_queue_tag*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.blk_queue_tag* @kmalloc(i32 4, i32 %7)
  store %struct.blk_queue_tag* %8, %struct.blk_queue_tag** %6, align 8
  %9 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %10 = icmp ne %struct.blk_queue_tag* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %14 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @init_tag_map(%struct.request_queue* %13, %struct.blk_queue_tag* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %24

19:                                               ; preds = %12
  %20 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %21 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %20, i32 0, i32 0
  %22 = call i32 @atomic_set(i32* %21, i32 1)
  %23 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  store %struct.blk_queue_tag* %23, %struct.blk_queue_tag** %3, align 8
  br label %27

24:                                               ; preds = %18, %11
  %25 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %6, align 8
  %26 = call i32 @kfree(%struct.blk_queue_tag* %25)
  store %struct.blk_queue_tag* null, %struct.blk_queue_tag** %3, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %3, align 8
  ret %struct.blk_queue_tag* %28
}

declare dso_local %struct.blk_queue_tag* @kmalloc(i32, i32) #1

declare dso_local i64 @init_tag_map(%struct.request_queue*, %struct.blk_queue_tag*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.blk_queue_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
