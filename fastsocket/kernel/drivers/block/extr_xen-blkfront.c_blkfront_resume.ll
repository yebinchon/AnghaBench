; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkfront_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkfront_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.blkfront_info = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"blkfront_resume: %s\0A\00", align 1
@BLKIF_STATE_CONNECTED = common dso_local global i64 0, align 8
@BLKIF_STATE_SUSPENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @blkfront_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkfront_resume(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.blkfront_info*, align 8
  %4 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %6 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 1
  %7 = call %struct.blkfront_info* @dev_get_drvdata(i32* %6)
  store %struct.blkfront_info* %7, %struct.blkfront_info** %3, align 8
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %9 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %8, i32 0, i32 1
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %11 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %15 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %16 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BLKIF_STATE_CONNECTED, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @blkif_free(%struct.blkfront_info* %14, i32 %20)
  %22 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %23 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %24 = call i32 @talk_to_blkback(%struct.xenbus_device* %22, %struct.blkfront_info* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %26 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BLKIF_STATE_SUSPENDED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %35 = call i32 @blkif_recover(%struct.blkfront_info* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %30, %1
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.blkfront_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @blkif_free(%struct.blkfront_info*, i32) #1

declare dso_local i32 @talk_to_blkback(%struct.xenbus_device*, %struct.blkfront_info*) #1

declare dso_local i32 @blkif_recover(%struct.blkfront_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
