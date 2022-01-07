; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_enable_oled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_enable_oled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_oled_dev = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.asus_oled_packet = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_oled_dev*, i64)* @enable_oled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_oled(%struct.asus_oled_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.asus_oled_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.asus_oled_packet*, align 8
  store %struct.asus_oled_dev* %0, %struct.asus_oled_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.asus_oled_packet* @kzalloc(i32 8, i32 %9)
  store %struct.asus_oled_packet* %10, %struct.asus_oled_packet** %8, align 8
  %11 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %8, align 8
  %12 = icmp ne %struct.asus_oled_packet* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %3, align 8
  %15 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %8, align 8
  %21 = call i32 @setup_packet_header(%struct.asus_oled_packet* %20, i32 32, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0)
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %8, align 8
  %26 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 175, i32* %28, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %8, align 8
  %31 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 174, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %24
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %58, %34
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %3, align 8
  %40 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %3, align 8
  %43 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @usb_sndbulkpipe(%struct.TYPE_3__* %44, i32 2)
  %46 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %8, align 8
  %47 = call i32 @usb_bulk_msg(%struct.TYPE_3__* %41, i32 %45, %struct.asus_oled_packet* %46, i32 5, i32* %7, i32 -1)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %3, align 8
  %52 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dev_dbg(i32* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %50, %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %35

61:                                               ; preds = %35
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.asus_oled_dev*, %struct.asus_oled_dev** %3, align 8
  %64 = getelementptr inbounds %struct.asus_oled_dev, %struct.asus_oled_dev* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %8, align 8
  %66 = call i32 @kfree(%struct.asus_oled_packet* %65)
  br label %67

67:                                               ; preds = %61, %13
  ret void
}

declare dso_local %struct.asus_oled_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @setup_packet_header(%struct.asus_oled_packet*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.TYPE_3__*, i32, %struct.asus_oled_packet*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.asus_oled_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
