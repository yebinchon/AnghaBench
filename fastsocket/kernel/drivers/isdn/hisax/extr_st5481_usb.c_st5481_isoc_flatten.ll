; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_isoc_flatten.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_isoc_flatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64, i8*, %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*)* @st5481_isoc_flatten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st5481_isoc_flatten(%struct.urb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %5 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %3, align 8
  %9 = load %struct.urb*, %struct.urb** %3, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.urb*, %struct.urb** %3, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %94

18:                                               ; preds = %1
  %19 = load %struct.urb*, %struct.urb** %3, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 3
  %21 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %20, align 8
  %22 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %21, i64 0
  store %struct.usb_iso_packet_descriptor* %22, %struct.usb_iso_packet_descriptor** %4, align 8
  %23 = load %struct.urb*, %struct.urb** %3, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 3
  %25 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %24, align 8
  %26 = load %struct.urb*, %struct.urb** %3, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %25, i64 %28
  store %struct.usb_iso_packet_descriptor* %29, %struct.usb_iso_packet_descriptor** %5, align 8
  %30 = load %struct.urb*, %struct.urb** %3, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %82, %18
  %34 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %4, align 8
  %35 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %36 = icmp ult %struct.usb_iso_packet_descriptor* %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %33
  %38 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %4, align 8
  %39 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %4, align 8
  %44 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %94

47:                                               ; preds = %37
  %48 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %4, align 8
  %49 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %51 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %4, align 8
  %52 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  %53 = load %struct.urb*, %struct.urb** %3, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %4, align 8
  %57 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, -1
  store i32 %67, i32* %8, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  %72 = load i8, i8* %70, align 1
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %7, align 8
  store i8 %72, i8* %73, align 1
  br label %65

75:                                               ; preds = %65
  br label %81

76:                                               ; preds = %47
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %7, align 8
  br label %81

81:                                               ; preds = %76, %75
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %4, align 8
  %84 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %83, i32 1
  store %struct.usb_iso_packet_descriptor* %84, %struct.usb_iso_packet_descriptor** %4, align 8
  br label %33

85:                                               ; preds = %33
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.urb*, %struct.urb** %3, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = ptrtoint i8* %86 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %85, %42, %13
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
