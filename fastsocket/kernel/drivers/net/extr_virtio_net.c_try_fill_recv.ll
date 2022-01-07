; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_try_fill_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_try_fill_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i64, i64, i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, i32)* @try_fill_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_fill_recv(%struct.virtnet_info* %0, i32 %1) #0 {
  %3 = alloca %struct.virtnet_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %44, %2
  %8 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %9 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @add_recvbuf_mergeable(%struct.virtnet_info* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %30

16:                                               ; preds = %7
  %17 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %18 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @add_recvbuf_big(%struct.virtnet_info* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @add_recvbuf_small(%struct.virtnet_info* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %47

39:                                               ; preds = %30
  %40 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %41 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %7, label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %49 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %52 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %60 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %63 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %47
  %65 = load %struct.virtnet_info*, %struct.virtnet_info** %3, align 8
  %66 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @virtqueue_kick(i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  ret i32 %72
}

declare dso_local i32 @add_recvbuf_mergeable(%struct.virtnet_info*, i32) #1

declare dso_local i32 @add_recvbuf_big(%struct.virtnet_info*, i32) #1

declare dso_local i32 @add_recvbuf_small(%struct.virtnet_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @virtqueue_kick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
