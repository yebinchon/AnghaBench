; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_debugfs.c_mmc_add_host_debugfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_debugfs.c_mmc_add_host_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ios\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@mmc_ios_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to initialize debugfs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_add_host_debugfs(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = call i32 @mmc_hostname(%struct.mmc_host* %4)
  %6 = call %struct.dentry* @debugfs_create_dir(i32 %5, i32* null)
  store %struct.dentry* %6, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = call i64 @IS_ERR(%struct.dentry* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %31

15:                                               ; preds = %11
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 1
  store %struct.dentry* %16, %struct.dentry** %18, align 8
  %19 = load i32, i32* @S_IRUSR, align 4
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %22 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.dentry* %20, %struct.mmc_host* %21, i32* @mmc_ios_fops)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %26

25:                                               ; preds = %15
  br label %35

26:                                               ; preds = %24
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = call i32 @debugfs_remove_recursive(%struct.dentry* %27)
  %29 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %30, align 8
  br label %31

31:                                               ; preds = %26, %14
  %32 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %33 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %25, %10
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mmc_host*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
