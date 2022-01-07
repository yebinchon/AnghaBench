; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_pin_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_pin_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qib_user_sdma_queue = type { i32 }
%struct.qib_user_sdma_pkt = type { i64 }
%struct.iovec = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, %struct.iovec*, i64)* @qib_user_sdma_pin_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_user_sdma_pin_pkt(%struct.qib_devdata* %0, %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_pkt* %2, %struct.iovec* %3, i64 %4) #0 {
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca %struct.qib_user_sdma_queue*, align 8
  %8 = alloca %struct.qib_user_sdma_pkt*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %6, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %7, align 8
  store %struct.qib_user_sdma_pkt* %2, %struct.qib_user_sdma_pkt** %8, align 8
  store %struct.iovec* %3, %struct.iovec** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %43, %5
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load %struct.iovec*, %struct.iovec** %9, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i64 %21
  %23 = call i32 @qib_user_sdma_num_pages(%struct.iovec* %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.iovec*, %struct.iovec** %9, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i64 %25
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %30 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.iovec*, %struct.iovec** %9, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i64 %33
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @qib_user_sdma_pin_pages(%struct.qib_devdata* %29, %struct.qib_user_sdma_pkt* %30, i64 %31, i32 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %19
  br label %47

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %12, align 8
  br label %15

46:                                               ; preds = %15
  br label %67

47:                                               ; preds = %41
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %51 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %56 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %7, align 8
  %60 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @qib_user_sdma_free_pkt_frag(i32* %58, %struct.qib_user_sdma_queue* %59, %struct.qib_user_sdma_pkt* %60, i64 %61)
  br label %63

63:                                               ; preds = %54
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %48

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local i32 @qib_user_sdma_num_pages(%struct.iovec*) #1

declare dso_local i32 @qib_user_sdma_pin_pages(%struct.qib_devdata*, %struct.qib_user_sdma_pkt*, i64, i32, i32) #1

declare dso_local i32 @qib_user_sdma_free_pkt_frag(i32*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
