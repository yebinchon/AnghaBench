; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_setup_page_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_setup_page_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.cnic_dma = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, %struct.cnic_dma*)* @cnic_setup_page_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_setup_page_tbl(%struct.cnic_dev* %0, %struct.cnic_dma* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.cnic_dma* %1, %struct.cnic_dma** %4, align 8
  %7 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %8 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %14 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %19 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 32
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  %30 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %31 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_le32(i32 %36)
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %17
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %11

44:                                               ; preds = %11
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
