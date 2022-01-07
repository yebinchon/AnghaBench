; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_debugfs.c_ixgbe_dbg_adapter_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_debugfs.c_ixgbe_dbg_adapter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i64, i32 }
%struct.dentry = type { i32 }

@ixgbe_dbg_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"reg_ops\00", align 1
@ixgbe_dbg_reg_ops_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"debugfs reg_ops for %s failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@ixgbe_dbg_netdev_ops_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"debugfs netdev_ops for %s failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"debugfs entry for %s failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_dbg_adapter_init(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @pci_name(i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @ixgbe_dbg_root, align 4
  %11 = call i64 @debugfs_create_dir(i8* %9, i32 %10)
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %1
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %23 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 384, i64 %21, %struct.ixgbe_adapter* %22, i32* @ixgbe_dbg_reg_ops_fops)
  store %struct.dentry* %23, %struct.dentry** %4, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = icmp ne %struct.dentry* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @e_dev_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %34 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 384, i64 %32, %struct.ixgbe_adapter* %33, i32* @ixgbe_dbg_netdev_ops_fops)
  store %struct.dentry* %34, %struct.dentry** %4, align 8
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = icmp ne %struct.dentry* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @e_dev_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %29
  br label %44

41:                                               ; preds = %1
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @e_dev_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %40
  ret void
}

declare dso_local i8* @pci_name(i32) #1

declare dso_local i64 @debugfs_create_dir(i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i64, %struct.ixgbe_adapter*, i32*) #1

declare dso_local i32 @e_dev_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
