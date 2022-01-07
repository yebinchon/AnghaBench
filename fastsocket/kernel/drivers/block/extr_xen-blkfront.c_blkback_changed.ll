; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkback_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkback_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.blkfront_info = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"blkfront:blkback_changed to state %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @blkback_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkback_changed(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.blkfront_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 0
  %8 = call %struct.blkfront_info* @dev_get_drvdata(i32* %7)
  store %struct.blkfront_info* %8, %struct.blkfront_info** %5, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 0
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %21 [
    i32 129, label %14
    i32 131, label %14
    i32 130, label %14
    i32 128, label %14
    i32 134, label %14
    i32 132, label %15
    i32 133, label %18
  ]

14:                                               ; preds = %2, %2, %2, %2, %2
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %17 = call i32 @blkfront_connect(%struct.blkfront_info* %16)
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %20 = call i32 @blkfront_closing(%struct.blkfront_info* %19)
  br label %21

21:                                               ; preds = %2, %18, %15, %14
  ret void
}

declare dso_local %struct.blkfront_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @blkfront_connect(%struct.blkfront_info*) #1

declare dso_local i32 @blkfront_closing(%struct.blkfront_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
