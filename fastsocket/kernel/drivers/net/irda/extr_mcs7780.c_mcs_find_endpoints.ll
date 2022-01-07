; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_find_endpoints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_find_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_cb = type { i32, i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcs_cb*, %struct.usb_host_endpoint*, i32)* @mcs_find_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_find_endpoints(%struct.mcs_cb* %0, %struct.usb_host_endpoint* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcs_cb*, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mcs_cb* %0, %struct.mcs_cb** %5, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %11 = icmp ne %struct.usb_host_endpoint* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %9, align 4
  store i32 %13, i32* %4, align 4
  br label %67

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %62, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %15
  %20 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %20, i64 %22
  %24 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %31, i64 %33
  %35 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mcs_cb*, %struct.mcs_cb** %5, align 8
  %39 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %50

40:                                               ; preds = %19
  %41 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %41, i64 %43
  %45 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mcs_cb*, %struct.mcs_cb** %5, align 8
  %49 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %40, %30
  %51 = load %struct.mcs_cb*, %struct.mcs_cb** %5, align 8
  %52 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.mcs_cb*, %struct.mcs_cb** %5, align 8
  %57 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %9, align 4
  br label %65

61:                                               ; preds = %55, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %15

65:                                               ; preds = %60, %15
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %12
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
