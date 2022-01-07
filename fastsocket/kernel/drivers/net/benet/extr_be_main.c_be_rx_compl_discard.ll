; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rx_compl_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rx_compl_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { %struct.be_queue_info }
%struct.be_queue_info = type { i32 }
%struct.be_rx_compl_info = type { i64, i32 }
%struct.be_rx_page_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*, %struct.be_rx_compl_info*)* @be_rx_compl_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rx_compl_discard(%struct.be_rx_obj* %0, %struct.be_rx_compl_info* %1) #0 {
  %3 = alloca %struct.be_rx_obj*, align 8
  %4 = alloca %struct.be_rx_compl_info*, align 8
  %5 = alloca %struct.be_queue_info*, align 8
  %6 = alloca %struct.be_rx_page_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %3, align 8
  store %struct.be_rx_compl_info* %1, %struct.be_rx_compl_info** %4, align 8
  %9 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %10 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %9, i32 0, i32 0
  store %struct.be_queue_info* %10, %struct.be_queue_info** %5, align 8
  %11 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %12 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %36, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load %struct.be_rx_obj*, %struct.be_rx_obj** %3, align 8
  %20 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %21 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %19, i32 %22)
  store %struct.be_rx_page_info* %23, %struct.be_rx_page_info** %6, align 8
  %24 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %25 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @put_page(i32 %26)
  %28 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %6, align 8
  %29 = call i32 @memset(%struct.be_rx_page_info* %28, i32 0, i32 4)
  %30 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %31 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %30, i32 0, i32 1
  %32 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %33 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @index_inc(i32* %31, i32 %34)
  br label %36

36:                                               ; preds = %18
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %14

39:                                               ; preds = %14
  ret void
}

declare dso_local %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj*, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @memset(%struct.be_rx_page_info*, i32, i32) #1

declare dso_local i32 @index_inc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
