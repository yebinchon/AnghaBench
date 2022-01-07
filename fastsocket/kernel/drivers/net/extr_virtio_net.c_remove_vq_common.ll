; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_remove_vq_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_remove_vq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtnet_info*)* @remove_vq_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_vq_common(%struct.virtnet_info* %0) #0 {
  %2 = alloca %struct.virtnet_info*, align 8
  store %struct.virtnet_info* %0, %struct.virtnet_info** %2, align 8
  %3 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %4 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %8, align 8
  %10 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %11 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = call i32 %9(%struct.TYPE_5__* %12)
  %14 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %15 = call i32 @free_unused_bufs(%struct.virtnet_info* %14)
  %16 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %17 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %21, align 8
  %23 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %24 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = call i32 %22(%struct.TYPE_5__* %25)
  br label %27

27:                                               ; preds = %32, %1
  %28 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %29 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @get_a_page(%struct.virtnet_info* %33, i32 %34)
  %36 = call i32 @__free_pages(i32 %35, i32 0)
  br label %27

37:                                               ; preds = %27
  ret void
}

declare dso_local i32 @free_unused_bufs(%struct.virtnet_info*) #1

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @get_a_page(%struct.virtnet_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
