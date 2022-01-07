; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_debugfs_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_debugfs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, %struct.dentry*)* @dasd_debugfs_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @dasd_debugfs_setup(i8* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %5, align 8
  %8 = icmp ne %struct.dentry* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %23

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call %struct.dentry* @debugfs_create_dir(i8* %11, %struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = call i64 @IS_ERR(%struct.dentry* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %10
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %23

21:                                               ; preds = %16
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %22, %struct.dentry** %3, align 8
  br label %23

23:                                               ; preds = %21, %20, %9
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %24
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
