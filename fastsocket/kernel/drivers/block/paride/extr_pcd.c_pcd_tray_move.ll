; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_tray_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_tray_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }

@pcd_scratch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"eject\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"close tray\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @pcd_tray_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_tray_move(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [12 x i8], align 1
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  store i8 27, i8* %6, align 1
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 3, %11
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %10, align 1
  %14 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 0, i8* %20, align 1
  %21 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %22 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %25 = load i32, i32* @pcd_scratch, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  %30 = call i32 @pcd_atapi(i32 %23, i8* %24, i32 0, i32 %25, i8* %29)
  ret i32 %30
}

declare dso_local i32 @pcd_atapi(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
