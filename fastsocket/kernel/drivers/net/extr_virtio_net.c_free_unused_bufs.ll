; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_free_unused_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_free_unused_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtnet_info*)* @free_unused_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_unused_bufs(%struct.virtnet_info* %0) #0 {
  %2 = alloca %struct.virtnet_info*, align 8
  %3 = alloca i8*, align 8
  store %struct.virtnet_info* %0, %struct.virtnet_info** %2, align 8
  br label %4

4:                                                ; preds = %1, %12
  %5 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %6 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @virtqueue_detach_unused_buf(i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %15

12:                                               ; preds = %4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @dev_kfree_skb(i8* %13)
  br label %4

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %41
  %17 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %18 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @virtqueue_detach_unused_buf(i32 %19)
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %46

24:                                               ; preds = %16
  %25 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %26 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %31 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %24
  %35 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @give_pages(%struct.virtnet_info* %35, i8* %36)
  br label %41

38:                                               ; preds = %29
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @dev_kfree_skb(i8* %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %43 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  br label %16

46:                                               ; preds = %23
  %47 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %48 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  ret void
}

declare dso_local i8* @virtqueue_detach_unused_buf(i32) #1

declare dso_local i32 @dev_kfree_skb(i8*) #1

declare dso_local i32 @give_pages(%struct.virtnet_info*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
