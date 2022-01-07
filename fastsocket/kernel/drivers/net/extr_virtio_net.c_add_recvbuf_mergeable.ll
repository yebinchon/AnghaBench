; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_add_recvbuf_mergeable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_add_recvbuf_mergeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32 }
%struct.page = type { i32 }
%struct.scatterlist = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, i32)* @add_recvbuf_mergeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_recvbuf_mergeable(%struct.virtnet_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtnet_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.scatterlist, align 4
  %8 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.page* @get_a_page(%struct.virtnet_info* %9, i32 %10)
  store %struct.page* %11, %struct.page** %6, align 8
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = call i32 @page_address(%struct.page* %18)
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 @sg_init_one(%struct.scatterlist* %7, i32 %19, i32 %20)
  %22 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %23 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = call i32 @virtqueue_add_buf(i32 %24, %struct.scatterlist* %7, i32 0, i32 1, %struct.page* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = call i32 @give_pages(%struct.virtnet_info* %30, %struct.page* %31)
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.page* @get_a_page(%struct.virtnet_info*, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @virtqueue_add_buf(i32, %struct.scatterlist*, i32, i32, %struct.page*) #1

declare dso_local i32 @give_pages(%struct.virtnet_info*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
