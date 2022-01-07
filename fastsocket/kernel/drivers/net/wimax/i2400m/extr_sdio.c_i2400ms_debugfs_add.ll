; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio.c_i2400ms_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_sdio.c_i2400ms_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400ms = type { %struct.dentry*, %struct.TYPE_4__ }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }

@.str = private unnamed_addr constant [11 x i8] c"i2400m-usb\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dl_\00", align 1
@main = common dso_local global i32 0, align 4
@tx = common dso_local global i32 0, align 4
@rx = common dso_local global i32 0, align 4
@fw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400ms*)* @i2400ms_debugfs_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400ms_debugfs_add(%struct.i2400ms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2400ms*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  store %struct.i2400ms* %0, %struct.i2400ms** %3, align 8
  %6 = load %struct.i2400ms*, %struct.i2400ms** %3, align 8
  %7 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call i32 @PTR_ERR(%struct.dentry* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = call i64 @IS_ERR(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %18
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = load %struct.i2400ms*, %struct.i2400ms** %3, align 8
  %28 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %27, i32 0, i32 0
  store %struct.dentry* %26, %struct.dentry** %28, align 8
  %29 = load i32, i32* @main, align 4
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %29, %struct.dentry* %30)
  %32 = load i32, i32* @tx, align 4
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %32, %struct.dentry* %33)
  %35 = load i32, i32* @rx, align 4
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %35, %struct.dentry* %36)
  %38 = load i32, i32* @fw, align 4
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %38, %struct.dentry* %39)
  store i32 0, i32* %2, align 4
  br label %47

41:                                               ; preds = %24
  %42 = load %struct.i2400ms*, %struct.i2400ms** %3, align 8
  %43 = getelementptr inbounds %struct.i2400ms, %struct.i2400ms* %42, i32 0, i32 0
  %44 = load %struct.dentry*, %struct.dentry** %43, align 8
  %45 = call i32 @debugfs_remove_recursive(%struct.dentry* %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %25
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @__debugfs_register(i8*, i32, %struct.dentry*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
