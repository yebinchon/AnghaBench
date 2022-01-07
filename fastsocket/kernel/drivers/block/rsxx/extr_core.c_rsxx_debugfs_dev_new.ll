; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_debugfs_dev_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_debugfs_dev_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { %struct.dentry*, %struct.TYPE_2__* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@debugfs_stats_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pci_regs\00", align 1
@debugfs_pci_regs_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"cram\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@debugfs_cram_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_cardinfo*)* @rsxx_debugfs_dev_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsxx_debugfs_dev_new(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca %struct.rsxx_cardinfo*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %2, align 8
  %6 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %7 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dentry* @debugfs_create_dir(i32 %10, i32* null)
  %12 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %13 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %12, i32 0, i32 0
  store %struct.dentry* %11, %struct.dentry** %13, align 8
  %14 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %15 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  %17 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %67

20:                                               ; preds = %1
  %21 = load i32, i32* @S_IRUGO, align 4
  %22 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %23 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %22, i32 0, i32 0
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  %25 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %26 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.dentry* %24, %struct.rsxx_cardinfo* %25, i32* @debugfs_stats_fops)
  store %struct.dentry* %26, %struct.dentry** %3, align 8
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %62

31:                                               ; preds = %20
  %32 = load i32, i32* @S_IRUGO, align 4
  %33 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %34 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %33, i32 0, i32 0
  %35 = load %struct.dentry*, %struct.dentry** %34, align 8
  %36 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %37 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %32, %struct.dentry* %35, %struct.rsxx_cardinfo* %36, i32* @debugfs_pci_regs_fops)
  store %struct.dentry* %37, %struct.dentry** %4, align 8
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %59

42:                                               ; preds = %31
  %43 = load i32, i32* @S_IRUGO, align 4
  %44 = load i32, i32* @S_IWUSR, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %47 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %46, i32 0, i32 0
  %48 = load %struct.dentry*, %struct.dentry** %47, align 8
  %49 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %50 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %45, %struct.dentry* %48, %struct.rsxx_cardinfo* %49, i32* @debugfs_cram_fops)
  store %struct.dentry* %50, %struct.dentry** %5, align 8
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %56

55:                                               ; preds = %42
  br label %70

56:                                               ; preds = %54
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  %58 = call i32 @debugfs_remove(%struct.dentry* %57)
  br label %59

59:                                               ; preds = %56, %41
  %60 = load %struct.dentry*, %struct.dentry** %3, align 8
  %61 = call i32 @debugfs_remove(%struct.dentry* %60)
  br label %62

62:                                               ; preds = %59, %30
  %63 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %64 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %63, i32 0, i32 0
  %65 = load %struct.dentry*, %struct.dentry** %64, align 8
  %66 = call i32 @debugfs_remove(%struct.dentry* %65)
  br label %67

67:                                               ; preds = %62, %19
  %68 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %69 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %68, i32 0, i32 0
  store %struct.dentry* null, %struct.dentry** %69, align 8
  br label %70

70:                                               ; preds = %67, %55
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.rsxx_cardinfo*, i32*) #1

declare dso_local i32 @debugfs_remove(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
