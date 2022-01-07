; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_to_sgl_element_pair_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_to_sgl_element_pair_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i64, i32* }
%struct.isci_request = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.isci_host*, %struct.isci_request*, i32)* @to_sgl_element_pair_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @to_sgl_element_pair_dma(%struct.isci_host* %0, %struct.isci_request* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca %struct.isci_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %5, align 8
  store %struct.isci_request* %1, %struct.isci_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  %12 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %13 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = bitcast i32* %15 to i8*
  %17 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %18 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = bitcast i32* %20 to i8*
  %22 = ptrtoint i8* %16 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %27 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  store i64 %31, i64* %4, align 8
  br label %67

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %37 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = bitcast i32* %39 to i8*
  %41 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %42 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = bitcast i32* %44 to i8*
  %46 = ptrtoint i8* %40 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %51 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  store i64 %55, i64* %4, align 8
  br label %67

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %59 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %60 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = call i64 @sci_io_request_get_dma_addr(%struct.isci_request* %58, i32* %65)
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %57, %35, %11
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i64 @sci_io_request_get_dma_addr(%struct.isci_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
