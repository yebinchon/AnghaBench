; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_pp_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_pp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }
%struct.pardevice = type { i32 }
%struct.pp_cam_entry = type { i64, i64, i32, %struct.parport*, %struct.pardevice* }
%struct.cam_data = type { i32 }

@PARPORT_MODE_PCSPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"port is not supported by CPiA driver\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to allocate camera structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"cpia_pp\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to parport_register_device\0A\00", align 1
@cpia_pp_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to cpia_register_camera\0A\00", align 1
@cam_list_lock_pp = common dso_local global i32 0, align 4
@cam_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @cpia_pp_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_pp_register(%struct.parport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parport*, align 8
  %4 = alloca %struct.pardevice*, align 8
  %5 = alloca %struct.pp_cam_entry*, align 8
  %6 = alloca %struct.cam_data*, align 8
  store %struct.parport* %0, %struct.parport** %3, align 8
  store %struct.pardevice* null, %struct.pardevice** %4, align 8
  %7 = load %struct.parport*, %struct.parport** %3, align 8
  %8 = getelementptr inbounds %struct.parport, %struct.parport* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PARPORT_MODE_PCSPP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %69

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pp_cam_entry* @kzalloc(i32 40, i32 %18)
  store %struct.pp_cam_entry* %19, %struct.pp_cam_entry** %5, align 8
  %20 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %5, align 8
  %21 = icmp eq %struct.pp_cam_entry* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 @LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %69

26:                                               ; preds = %17
  %27 = load %struct.parport*, %struct.parport** %3, align 8
  %28 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %5, align 8
  %29 = call %struct.pardevice* @parport_register_device(%struct.parport* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0, %struct.pp_cam_entry* %28)
  store %struct.pardevice* %29, %struct.pardevice** %4, align 8
  %30 = load %struct.pardevice*, %struct.pardevice** %4, align 8
  %31 = icmp ne %struct.pardevice* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = call i32 @LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %5, align 8
  %35 = call i32 @kfree(%struct.pp_cam_entry* %34)
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %69

38:                                               ; preds = %26
  %39 = load %struct.pardevice*, %struct.pardevice** %4, align 8
  %40 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %5, align 8
  %41 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %40, i32 0, i32 4
  store %struct.pardevice* %39, %struct.pardevice** %41, align 8
  %42 = load %struct.parport*, %struct.parport** %3, align 8
  %43 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %5, align 8
  %44 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %43, i32 0, i32 3
  store %struct.parport* %42, %struct.parport** %44, align 8
  %45 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %5, align 8
  %46 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %45, i32 0, i32 2
  %47 = call i32 @init_waitqueue_head(i32* %46)
  %48 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %5, align 8
  %49 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %5, align 8
  %51 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %5, align 8
  %53 = call %struct.cam_data* @cpia_register_camera(i32* @cpia_pp_ops, %struct.pp_cam_entry* %52)
  store %struct.cam_data* %53, %struct.cam_data** %6, align 8
  %54 = icmp eq %struct.cam_data* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %38
  %56 = call i32 @LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.pardevice*, %struct.pardevice** %4, align 8
  %58 = call i32 @parport_unregister_device(%struct.pardevice* %57)
  %59 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %5, align 8
  %60 = call i32 @kfree(%struct.pp_cam_entry* %59)
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %69

63:                                               ; preds = %38
  %64 = call i32 @spin_lock(i32* @cam_list_lock_pp)
  %65 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %66 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %65, i32 0, i32 0
  %67 = call i32 @list_add(i32* %66, i32* @cam_list)
  %68 = call i32 @spin_unlock(i32* @cam_list_lock_pp)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %55, %32, %22, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @LOG(i8*) #1

declare dso_local %struct.pp_cam_entry* @kzalloc(i32, i32) #1

declare dso_local %struct.pardevice* @parport_register_device(%struct.parport*, i8*, i32*, i32*, i32*, i32, %struct.pp_cam_entry*) #1

declare dso_local i32 @kfree(%struct.pp_cam_entry*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.cam_data* @cpia_register_camera(i32*, %struct.pp_cam_entry*) #1

declare dso_local i32 @parport_unregister_device(%struct.pardevice*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
