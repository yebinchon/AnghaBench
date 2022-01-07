; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_docmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_docmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd1201 = type { i32, i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ZD1201_USB_CMDREQ = common dso_local global i32 0, align 4
@zd1201_usbfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd1201*, i32, i32, i32, i32)* @zd1201_docmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_docmd(%struct.zd1201* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zd1201*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.urb*, align 8
  store %struct.zd1201* %0, %struct.zd1201** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call i8* @kmalloc(i32 16, i32 %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %84

22:                                               ; preds = %5
  %23 = load i32, i32* @ZD1201_USB_CMDREQ, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load i8*, i8** %12, align 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @cpu_to_le16(i32 %27)
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  %31 = bitcast i8* %30 to i32*
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 6
  %36 = bitcast i8* %35 to i32*
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @cpu_to_le16(i32 %37)
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  %41 = bitcast i8* %40 to i32*
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @cpu_to_le16(i32 %42)
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 10
  %46 = bitcast i8* %45 to i32*
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %47)
  store %struct.urb* %48, %struct.urb** %14, align 8
  %49 = load %struct.urb*, %struct.urb** %14, align 8
  %50 = icmp ne %struct.urb* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %22
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @kfree(i8* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %84

56:                                               ; preds = %22
  %57 = load %struct.urb*, %struct.urb** %14, align 8
  %58 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %59 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %62 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %65 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usb_sndbulkpipe(i32 %63, i32 %66)
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* @zd1201_usbfree, align 4
  %70 = load %struct.zd1201*, %struct.zd1201** %7, align 8
  %71 = call i32 @usb_fill_bulk_urb(%struct.urb* %57, i32 %60, i32 %67, i8* %68, i32 16, i32 %69, %struct.zd1201* %70)
  %72 = load %struct.urb*, %struct.urb** %14, align 8
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i32 @usb_submit_urb(%struct.urb* %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %56
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @kfree(i8* %78)
  %80 = load %struct.urb*, %struct.urb** %14, align 8
  %81 = call i32 @usb_free_urb(%struct.urb* %80)
  br label %82

82:                                               ; preds = %77, %56
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %51, %19
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.zd1201*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
