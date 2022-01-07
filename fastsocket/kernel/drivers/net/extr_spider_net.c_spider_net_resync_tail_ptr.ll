; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_resync_tail_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_resync_tail_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.spider_net_descr_chain }
%struct.spider_net_descr_chain = type { i32, %struct.spider_net_descr* }
%struct.spider_net_descr = type { i32, %struct.spider_net_descr* }

@SPIDER_NET_DESCR_CARDOWNED = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_NOT_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*)* @spider_net_resync_tail_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_resync_tail_ptr(%struct.spider_net_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spider_net_card*, align 8
  %4 = alloca %struct.spider_net_descr_chain*, align 8
  %5 = alloca %struct.spider_net_descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spider_net_card* %0, %struct.spider_net_card** %3, align 8
  %8 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %9 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %8, i32 0, i32 0
  store %struct.spider_net_descr_chain* %9, %struct.spider_net_descr_chain** %4, align 8
  %10 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %11 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %10, i32 0, i32 1
  %12 = load %struct.spider_net_descr*, %struct.spider_net_descr** %11, align 8
  store %struct.spider_net_descr* %12, %struct.spider_net_descr** %5, align 8
  %13 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %14 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @spider_net_get_descr_status(i32 %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %40, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %20 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SPIDER_NET_DESCR_CARDOWNED, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SPIDER_NET_DESCR_NOT_IN_USE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %43

32:                                               ; preds = %27, %23
  %33 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %34 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %33, i32 0, i32 1
  %35 = load %struct.spider_net_descr*, %struct.spider_net_descr** %34, align 8
  store %struct.spider_net_descr* %35, %struct.spider_net_descr** %5, align 8
  %36 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %37 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @spider_net_get_descr_status(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %17

43:                                               ; preds = %31, %17
  %44 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %45 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %46 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %45, i32 0, i32 1
  store %struct.spider_net_descr* %44, %struct.spider_net_descr** %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %49 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %43
  store i32 1, i32* %2, align 4
  br label %57

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @spider_net_get_descr_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
