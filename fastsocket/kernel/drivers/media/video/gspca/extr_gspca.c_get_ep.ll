; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_get_ep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_get_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gspca_dev = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.usb_interface = type { i32* }

@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no transfer endpoint found\00", align 1
@D_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"use alt %d ep 0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"set alt %d err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_host_endpoint* (%struct.gspca_dev*)* @get_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_host_endpoint* @get_ep(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.usb_host_endpoint*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_host_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %11, i32 %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %4, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %5, align 8
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %6, align 4
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %45 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.usb_host_endpoint* @alt_xfer(i32* %49, i32 %50)
  store %struct.usb_host_endpoint* %51, %struct.usb_host_endpoint** %5, align 8
  %52 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %53 = icmp ne %struct.usb_host_endpoint* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %56

55:                                               ; preds = %43
  br label %36

56:                                               ; preds = %54, %36
  br label %76

57:                                               ; preds = %25
  br label %58

58:                                               ; preds = %74, %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %64 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = call %struct.usb_host_endpoint* @alt_xfer(i32* %68, i32 %69)
  store %struct.usb_host_endpoint* %70, %struct.usb_host_endpoint** %5, align 8
  %71 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %72 = icmp ne %struct.usb_host_endpoint* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %75

74:                                               ; preds = %62
  br label %58

75:                                               ; preds = %73, %58
  br label %76

76:                                               ; preds = %75, %56
  %77 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %78 = icmp eq %struct.usb_host_endpoint* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %2, align 8
  br label %114

81:                                               ; preds = %76
  %82 = load i32, i32* @D_STREAM, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %85 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PDEBUG(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %91 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %93 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %112

96:                                               ; preds = %81
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %98 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %101 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @usb_set_interface(i32 %99, i32 %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %109)
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %5, align 8
  br label %111

111:                                              ; preds = %107, %96
  br label %112

112:                                              ; preds = %111, %81
  %113 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  store %struct.usb_host_endpoint* %113, %struct.usb_host_endpoint** %2, align 8
  br label %114

114:                                              ; preds = %112, %79
  %115 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %2, align 8
  ret %struct.usb_host_endpoint* %115
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local %struct.usb_host_endpoint* @alt_xfer(i32*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
