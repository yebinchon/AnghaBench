; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_video1394_add_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_video1394_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ti_ohci = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OHCI1394_DRIVER_NAME = common dso_local global i32 0, align 4
@video1394_highlevel = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot allocate hostinfo\00", align 1
@IEEE1394_MINOR_BLOCK_VIDEO1394 = common dso_local global i32 0, align 4
@hpsb_protocol_class = common dso_local global i32 0, align 4
@IEEE1394_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@VIDEO1394_DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*)* @video1394_add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @video1394_add_host(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  %3 = alloca %struct.ti_ohci*, align 8
  %4 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %5 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %6 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OHCI1394_DRIVER_NAME, align 4
  %11 = call i64 @strcmp(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %16 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ti_ohci*
  store %struct.ti_ohci* %18, %struct.ti_ohci** %3, align 8
  %19 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %20 = call i32 @hpsb_create_hostinfo(i32* @video1394_highlevel, %struct.hpsb_host* %19, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @KERN_ERR, align 4
  %24 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %25 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PRINT(i32 %23, i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %60

30:                                               ; preds = %14
  %31 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %32 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %33 = call i32 @hpsb_set_hostinfo(i32* @video1394_highlevel, %struct.hpsb_host* %31, %struct.ti_ohci* %32)
  %34 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %35 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %36 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hpsb_set_hostinfo_key(i32* @video1394_highlevel, %struct.hpsb_host* %34, i32 %39)
  %41 = load i32, i32* @IEEE1394_MINOR_BLOCK_VIDEO1394, align 4
  %42 = mul nsw i32 %41, 16
  %43 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %44 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %42, %47
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @hpsb_protocol_class, align 4
  %50 = load i32, i32* @IEEE1394_MAJOR, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @MKDEV(i32 %50, i32 %51)
  %53 = load i32, i32* @VIDEO1394_DRIVER_NAME, align 4
  %54 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %55 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @device_create(i32 %49, i32* null, i32 %52, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %30, %22, %13
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @hpsb_create_hostinfo(i32*, %struct.hpsb_host*, i32) #1

declare dso_local i32 @PRINT(i32, i32, i8*) #1

declare dso_local i32 @hpsb_set_hostinfo(i32*, %struct.hpsb_host*, %struct.ti_ohci*) #1

declare dso_local i32 @hpsb_set_hostinfo_key(i32*, %struct.hpsb_host*, i32) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
