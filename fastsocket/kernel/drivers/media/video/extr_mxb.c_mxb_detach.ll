; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_mxb_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_mxb_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64 }
%struct.mxb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@mxb_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @mxb_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxb_detach(%struct.saa7146_dev* %0) #0 {
  %2 = alloca %struct.saa7146_dev*, align 8
  %3 = alloca %struct.mxb*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %2, align 8
  %4 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %5 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.mxb*
  store %struct.mxb* %7, %struct.mxb** %3, align 8
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %9 = bitcast %struct.saa7146_dev* %8 to i8*
  %10 = call i32 @DEB_EE(i8* %9)
  %11 = load %struct.mxb*, %struct.mxb** %3, align 8
  %12 = getelementptr inbounds %struct.mxb, %struct.mxb* %11, i32 0, i32 2
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %14 = call i32 @saa7146_unregister_device(i32* %12, %struct.saa7146_dev* %13)
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %16 = call i64 @MXB_BOARD_CAN_DO_VBI(%struct.saa7146_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.mxb*, %struct.mxb** %3, align 8
  %20 = getelementptr inbounds %struct.mxb, %struct.mxb* %19, i32 0, i32 1
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %22 = call i32 @saa7146_unregister_device(i32* %20, %struct.saa7146_dev* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %25 = call i32 @saa7146_vv_release(%struct.saa7146_dev* %24)
  %26 = load i32, i32* @mxb_num, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @mxb_num, align 4
  %28 = load %struct.mxb*, %struct.mxb** %3, align 8
  %29 = getelementptr inbounds %struct.mxb, %struct.mxb* %28, i32 0, i32 0
  %30 = call i32 @i2c_del_adapter(i32* %29)
  %31 = load %struct.mxb*, %struct.mxb** %3, align 8
  %32 = call i32 @kfree(%struct.mxb* %31)
  ret i32 0
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @saa7146_unregister_device(i32*, %struct.saa7146_dev*) #1

declare dso_local i64 @MXB_BOARD_CAN_DO_VBI(%struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_vv_release(%struct.saa7146_dev*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.mxb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
