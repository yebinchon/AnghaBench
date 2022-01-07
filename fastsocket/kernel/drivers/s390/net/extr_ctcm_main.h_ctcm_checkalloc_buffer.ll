; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.h_ctcm_checkalloc_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.h_ctcm_checkalloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32* }

@CHANNEL_FLAGS_BUFSIZE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel*)* @ctcm_checkalloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_checkalloc_buffer(%struct.channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel*, align 8
  store %struct.channel* %0, %struct.channel** %3, align 8
  %4 = load %struct.channel*, %struct.channel** %3, align 8
  %5 = getelementptr inbounds %struct.channel, %struct.channel* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.channel*, %struct.channel** %3, align 8
  %10 = call i32 @ctcm_ch_alloc_buffer(%struct.channel* %9)
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.channel*, %struct.channel** %3, align 8
  %13 = getelementptr inbounds %struct.channel, %struct.channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CHANNEL_FLAGS_BUFSIZE_CHANGED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.channel*, %struct.channel** %3, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @dev_kfree_skb(i32* %21)
  %23 = load %struct.channel*, %struct.channel** %3, align 8
  %24 = call i32 @ctcm_ch_alloc_buffer(%struct.channel* %23)
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %18, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ctcm_ch_alloc_buffer(%struct.channel*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
