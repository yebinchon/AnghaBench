; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_dv1394_add_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_dv1394_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ti_ohci = type { i32 }

@OHCI1394_DRIVER_NAME = common dso_local global i32 0, align 4
@hpsb_protocol_class = common dso_local global i32 0, align 4
@IEEE1394_MAJOR = common dso_local global i32 0, align 4
@IEEE1394_MINOR_BLOCK_DV1394 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dv1394-%d\00", align 1
@DV1394_NTSC = common dso_local global i32 0, align 4
@MODE_RECEIVE = common dso_local global i32 0, align 4
@MODE_TRANSMIT = common dso_local global i32 0, align 4
@DV1394_PAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*)* @dv1394_add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dv1394_add_host(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  %3 = alloca %struct.ti_ohci*, align 8
  %4 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %5 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %6 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %9 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OHCI1394_DRIVER_NAME, align 4
  %14 = call i64 @strcmp(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %19 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ti_ohci*
  store %struct.ti_ohci* %21, %struct.ti_ohci** %3, align 8
  %22 = load i32, i32* @hpsb_protocol_class, align 4
  %23 = load i32, i32* @IEEE1394_MAJOR, align 4
  %24 = load i32, i32* @IEEE1394_MINOR_BLOCK_DV1394, align 4
  %25 = mul nsw i32 %24, 16
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 2
  %28 = add nsw i32 %25, %27
  %29 = call i32 @MKDEV(i32 %23, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @device_create(i32 %22, i32* null, i32 %29, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %33 = load i32, i32* @DV1394_NTSC, align 4
  %34 = load i32, i32* @MODE_RECEIVE, align 4
  %35 = call i32 @dv1394_init(%struct.ti_ohci* %32, i32 %33, i32 %34)
  %36 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %37 = load i32, i32* @DV1394_NTSC, align 4
  %38 = load i32, i32* @MODE_TRANSMIT, align 4
  %39 = call i32 @dv1394_init(%struct.ti_ohci* %36, i32 %37, i32 %38)
  %40 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %41 = load i32, i32* @DV1394_PAL, align 4
  %42 = load i32, i32* @MODE_RECEIVE, align 4
  %43 = call i32 @dv1394_init(%struct.ti_ohci* %40, i32 %41, i32 %42)
  %44 = load %struct.ti_ohci*, %struct.ti_ohci** %3, align 8
  %45 = load i32, i32* @DV1394_PAL, align 4
  %46 = load i32, i32* @MODE_TRANSMIT, align 4
  %47 = call i32 @dv1394_init(%struct.ti_ohci* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dv1394_init(%struct.ti_ohci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
