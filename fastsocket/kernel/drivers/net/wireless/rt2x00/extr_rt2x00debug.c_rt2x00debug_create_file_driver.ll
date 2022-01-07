; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00debug.c_rt2x00debug_create_file_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00debug.c_rt2x00debug_create_file_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.rt2x00debug_intf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.debugfs_blob_wrapper = type { i8*, i32 }

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"driver:\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"version:\09%s\0A\00", align 1
@DRV_VERSION = common dso_local global i8* null, align 8
@S_IRUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, %struct.rt2x00debug_intf*, %struct.debugfs_blob_wrapper*)* @rt2x00debug_create_file_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @rt2x00debug_create_file_driver(i8* %0, %struct.rt2x00debug_intf* %1, %struct.debugfs_blob_wrapper* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt2x00debug_intf*, align 8
  %7 = alloca %struct.debugfs_blob_wrapper*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.rt2x00debug_intf* %1, %struct.rt2x00debug_intf** %6, align 8
  store %struct.debugfs_blob_wrapper* %2, %struct.debugfs_blob_wrapper** %7, align 8
  %9 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %10 = mul nsw i32 3, %9
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 %10, i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %51

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.debugfs_blob_wrapper*, %struct.debugfs_blob_wrapper** %7, align 8
  %19 = getelementptr inbounds %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %6, align 8
  %22 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %8, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** @DRV_VERSION, align 8
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %8, align 8
  %38 = load %struct.debugfs_blob_wrapper*, %struct.debugfs_blob_wrapper** %7, align 8
  %39 = getelementptr inbounds %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = load %struct.debugfs_blob_wrapper*, %struct.debugfs_blob_wrapper** %7, align 8
  %43 = getelementptr inbounds %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @S_IRUSR, align 4
  %46 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %6, align 8
  %47 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.debugfs_blob_wrapper*, %struct.debugfs_blob_wrapper** %7, align 8
  %50 = call %struct.dentry* @debugfs_create_blob(i8* %44, i32 %45, i32 %48, %struct.debugfs_blob_wrapper* %49)
  store %struct.dentry* %50, %struct.dentry** %4, align 8
  br label %51

51:                                               ; preds = %16, %15
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %52
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.dentry* @debugfs_create_blob(i8*, i32, i32, %struct.debugfs_blob_wrapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
