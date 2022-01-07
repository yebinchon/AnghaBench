; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_fill_isoc_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_fill_isoc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i8*, i32, i64, i8*, %struct.usb_device* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.usb_device = type { i32 }

@URB_ISO_ASAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.usb_device*, i32, i8*, i32, i32, i32, i8*)* @fill_isoc_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_isoc_urb(%struct.urb* %0, %struct.usb_device* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.urb*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %9, align 8
  store %struct.usb_device* %1, %struct.usb_device** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %19 = load %struct.urb*, %struct.urb** %9, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 10
  store %struct.usb_device* %18, %struct.usb_device** %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.urb*, %struct.urb** %9, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.urb*, %struct.urb** %9, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = load %struct.urb*, %struct.urb** %9, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.urb*, %struct.urb** %9, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.urb*, %struct.urb** %9, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.urb*, %struct.urb** %9, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 8
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.urb*, %struct.urb** %9, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %16, align 8
  %43 = load %struct.urb*, %struct.urb** %9, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @URB_ISO_ASAP, align 4
  %46 = load %struct.urb*, %struct.urb** %9, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %78, %8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %17, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load %struct.urb*, %struct.urb** %9, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.urb*, %struct.urb** %9, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %63, i32* %70, align 4
  %71 = load %struct.urb*, %struct.urb** %9, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %52
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %48

81:                                               ; preds = %48
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
