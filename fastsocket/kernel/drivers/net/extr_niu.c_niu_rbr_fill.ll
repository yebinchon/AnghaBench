; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_rbr_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_rbr_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }
%struct.rx_ring_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.rx_ring_info*, i32)* @niu_rbr_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_rbr_fill(%struct.niu* %0, %struct.rx_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.rx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %11 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %14 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %33, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %19 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.niu*, %struct.niu** %4, align 8
  %26 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @niu_rbr_add_page(%struct.niu* %25, %struct.rx_ring_info* %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %16

37:                                               ; preds = %32, %16
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %40 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @niu_rbr_add_page(%struct.niu*, %struct.rx_ring_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
