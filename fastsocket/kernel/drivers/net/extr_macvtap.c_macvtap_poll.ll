; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.macvtap_queue* }
%struct.macvtap_queue = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@POLLERR = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@SOCK_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @macvtap_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.macvtap_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  store %struct.macvtap_queue* %9, %struct.macvtap_queue** %5, align 8
  %10 = load i32, i32* @POLLERR, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.macvtap_queue*, %struct.macvtap_queue** %5, align 8
  %12 = icmp ne %struct.macvtap_queue* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %56

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = load %struct.macvtap_queue*, %struct.macvtap_queue** %5, align 8
  %17 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @poll_wait(%struct.file* %15, i32* %18, i32* %19)
  %21 = load %struct.macvtap_queue*, %struct.macvtap_queue** %5, align 8
  %22 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @skb_queue_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = load i32, i32* @POLLIN, align 4
  %28 = load i32, i32* @POLLRDNORM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %14
  %33 = load %struct.macvtap_queue*, %struct.macvtap_queue** %5, align 8
  %34 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %33, i32 0, i32 0
  %35 = call i64 @sock_writeable(%struct.TYPE_4__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @SOCK_ASYNC_NOSPACE, align 4
  %39 = load %struct.macvtap_queue*, %struct.macvtap_queue** %5, align 8
  %40 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @test_and_set_bit(i32 %38, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %37
  %45 = load %struct.macvtap_queue*, %struct.macvtap_queue** %5, align 8
  %46 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %45, i32 0, i32 0
  %47 = call i64 @sock_writeable(%struct.TYPE_4__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44, %32
  %50 = load i32, i32* @POLLOUT, align 4
  %51 = load i32, i32* @POLLWRNORM, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %49, %44, %37
  br label %56

56:                                               ; preds = %55, %13
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @sock_writeable(%struct.TYPE_4__*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
