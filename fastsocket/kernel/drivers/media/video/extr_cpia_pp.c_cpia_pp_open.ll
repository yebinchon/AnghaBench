; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_pp_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_pp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_cam_entry = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to claim the port\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IEEE1284_MODE_COMPAT = common dso_local global i32 0, align 4
@PARPORT_CONTROL_SELECT = common dso_local global i32 0, align 4
@PARPORT_CONTROL_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cpia_pp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_pp_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pp_cam_entry*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.pp_cam_entry*
  store %struct.pp_cam_entry* %6, %struct.pp_cam_entry** %4, align 8
  %7 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %8 = icmp eq %struct.pp_cam_entry* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %14 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %12
  %18 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %19 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @parport_claim(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %55

27:                                               ; preds = %17
  %28 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %29 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IEEE1284_MODE_COMPAT, align 4
  %32 = call i32 @parport_negotiate(i32 %30, i32 %31)
  %33 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %34 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @parport_data_forward(i32 %35)
  %37 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %38 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PARPORT_CONTROL_SELECT, align 4
  %41 = call i32 @parport_write_control(i32 %39, i32 %40)
  %42 = call i32 @udelay(i32 50)
  %43 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %44 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PARPORT_CONTROL_SELECT, align 4
  %47 = load i32, i32* @PARPORT_CONTROL_INIT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @parport_write_control(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %27, %12
  %51 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %52 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %50, %23, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @parport_claim(i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @parport_negotiate(i32, i32) #1

declare dso_local i32 @parport_data_forward(i32) #1

declare dso_local i32 @parport_write_control(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
