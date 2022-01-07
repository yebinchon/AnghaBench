; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_remove_drv_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_remove_drv_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_protocol_driver = type { %struct.device_driver }
%struct.device_driver = type { i32 }

@fw_drv_attrs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_protocol_driver*)* @nodemgr_remove_drv_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nodemgr_remove_drv_files(%struct.hpsb_protocol_driver* %0) #0 {
  %2 = alloca %struct.hpsb_protocol_driver*, align 8
  %3 = alloca %struct.device_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.hpsb_protocol_driver* %0, %struct.hpsb_protocol_driver** %2, align 8
  %5 = load %struct.hpsb_protocol_driver*, %struct.hpsb_protocol_driver** %2, align 8
  %6 = getelementptr inbounds %struct.hpsb_protocol_driver, %struct.hpsb_protocol_driver* %5, i32 0, i32 0
  store %struct.device_driver* %6, %struct.device_driver** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** @fw_drv_attrs, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %14 = load i32*, i32** @fw_drv_attrs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @driver_remove_file(%struct.device_driver* %13, i32 %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %7

23:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @driver_remove_file(%struct.device_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
