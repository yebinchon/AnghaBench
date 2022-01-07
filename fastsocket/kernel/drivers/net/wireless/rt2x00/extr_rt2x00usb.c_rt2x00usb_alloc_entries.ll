; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_alloc_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_alloc_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, i64, %struct.TYPE_2__*, %struct.rt2x00_dev* }
%struct.TYPE_2__ = type { %struct.queue_entry_priv_usb_bcn* }
%struct.queue_entry_priv_usb_bcn = type { i8*, i8* }
%struct.rt2x00_dev = type { i32 }
%struct.queue_entry_priv_usb = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QID_BEACON = common dso_local global i64 0, align 8
@REQUIRE_BEACON_GUARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_queue*)* @rt2x00usb_alloc_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00usb_alloc_entries(%struct.data_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.queue_entry_priv_usb*, align 8
  %6 = alloca %struct.queue_entry_priv_usb_bcn*, align 8
  %7 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %3, align 8
  %8 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %9 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %8, i32 0, i32 3
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %39, %1
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %14 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %19 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %24, align 8
  %26 = bitcast %struct.queue_entry_priv_usb_bcn* %25 to %struct.queue_entry_priv_usb*
  store %struct.queue_entry_priv_usb* %26, %struct.queue_entry_priv_usb** %5, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @usb_alloc_urb(i32 0, i32 %27)
  %29 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %5, align 8
  %30 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %5, align 8
  %32 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %17
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %87

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %44 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QID_BEACON, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @REQUIRE_BEACON_GUARD, align 4
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %51 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %50, i32 0, i32 0
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48, %42
  store i32 0, i32* %2, align 4
  br label %87

55:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %83, %55
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %59 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %56
  %63 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %64 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %69, align 8
  store %struct.queue_entry_priv_usb_bcn* %70, %struct.queue_entry_priv_usb_bcn** %6, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @usb_alloc_urb(i32 0, i32 %71)
  %73 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %6, align 8
  %74 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.queue_entry_priv_usb_bcn*, %struct.queue_entry_priv_usb_bcn** %6, align 8
  %76 = getelementptr inbounds %struct.queue_entry_priv_usb_bcn, %struct.queue_entry_priv_usb_bcn* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %62
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %87

82:                                               ; preds = %62
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %56

86:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %79, %54, %35
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
