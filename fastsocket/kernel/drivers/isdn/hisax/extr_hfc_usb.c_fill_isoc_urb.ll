; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_usb.c_fill_isoc_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_usb.c_fill_isoc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32, i8*, i8*, i32, %struct.usb_device* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.usb_device = type { i32 }

@URB_ISO_ASAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.usb_device*, i32, i8*, i32, i32, i32, i32, i8*)* @fill_isoc_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_isoc_urb(%struct.urb* %0, %struct.usb_device* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca %struct.urb*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %10, align 8
  store %struct.usb_device* %1, %struct.usb_device** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %21 = load %struct.urb*, %struct.urb** %10, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 10
  store %struct.usb_device* %20, %struct.usb_device** %22, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.urb*, %struct.urb** %10, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %17, align 4
  %27 = load %struct.urb*, %struct.urb** %10, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.urb*, %struct.urb** %10, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %14, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.urb*, %struct.urb** %10, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = load %struct.urb*, %struct.urb** %10, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load %struct.urb*, %struct.urb** %10, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @URB_ISO_ASAP, align 4
  %44 = load %struct.urb*, %struct.urb** %10, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.urb*, %struct.urb** %10, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.urb*, %struct.urb** %10, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %19, align 4
  br label %51

51:                                               ; preds = %81, %9
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %19, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load %struct.urb*, %struct.urb** %10, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %58, i32* %65, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.urb*, %struct.urb** %10, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %66, i32* %73, align 4
  %74 = load %struct.urb*, %struct.urb** %10, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %55
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %19, align 4
  br label %51

84:                                               ; preds = %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
