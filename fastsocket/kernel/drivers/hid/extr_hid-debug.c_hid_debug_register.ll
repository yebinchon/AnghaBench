; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-debug.c_hid_debug_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-debug.c_hid_debug_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, i8*, i8* }

@hid_debug_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rdesc\00", align 1
@hid_debug_rdesc_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@hid_debug_events_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_debug_register(%struct.hid_device* %0, i8* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* @hid_debug_root, align 4
  %7 = call i32 @debugfs_create_dir(i8* %5, i32 %6)
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %14 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 256, i32 %12, %struct.hid_device* %13, i32* @hid_debug_rdesc_fops)
  %15 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %21 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 256, i32 %19, %struct.hid_device* %20, i32* @hid_debug_events_fops)
  %22 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.hid_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
