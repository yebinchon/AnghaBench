; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_alloc_rx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_alloc_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32*** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*, i32)* @cas_alloc_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_alloc_rx_desc(%struct.cas* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cas*, %struct.cas** %4, align 8
  %10 = getelementptr inbounds %struct.cas, %struct.cas* %9, i32 0, i32 0
  %11 = load i32***, i32**** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32**, i32*** %11, i64 %13
  %15 = load i32**, i32*** %14, align 8
  store i32** %15, i32*** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @RX_DESC_RINGN_SIZE(i32 %16)
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %33, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.cas*, %struct.cas** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @cas_page_alloc(%struct.cas* %23, i32 %24)
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  store i32* %25, i32** %29, align 8
  %30 = icmp eq i32* %25, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %37

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %18

36:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @RX_DESC_RINGN_SIZE(i32) #1

declare dso_local i32* @cas_page_alloc(%struct.cas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
