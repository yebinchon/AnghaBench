; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_debugfs.c_bnad_debugfs_open_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_debugfs.c_bnad_debugfs_open_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.bnad* }
%struct.bnad = type { i32, i32 }
%struct.file = type { %struct.bnad_debug_info* }
%struct.bnad_debug_info = type { i32, %struct.bnad_debug_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bna %s: Failed to collect drvinfo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @bnad_debugfs_open_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_debugfs_open_drvinfo(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.bnad*, align 8
  %7 = alloca %struct.bnad_debug_info*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.bnad*, %struct.bnad** %10, align 8
  store %struct.bnad* %11, %struct.bnad** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 16, i32 %12)
  %14 = bitcast i8* %13 to %struct.bnad_debug_info*
  store %struct.bnad_debug_info* %14, %struct.bnad_debug_info** %7, align 8
  %15 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %16 = icmp ne %struct.bnad_debug_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %22 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %21, i32 0, i32 0
  store i32 4, i32* %22, align 8
  %23 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %24 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  %28 = bitcast i8* %27 to %struct.bnad_debug_info*
  %29 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %30 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %29, i32 0, i32 1
  store %struct.bnad_debug_info* %28, %struct.bnad_debug_info** %30, align 8
  %31 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %32 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %31, i32 0, i32 1
  %33 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %32, align 8
  %34 = icmp ne %struct.bnad_debug_info* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %20
  %36 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %37 = call i32 @kfree(%struct.bnad_debug_info* %36)
  store %struct.bnad_debug_info* null, %struct.bnad_debug_info** %7, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %78

40:                                               ; preds = %20
  %41 = load %struct.bnad*, %struct.bnad** %6, align 8
  %42 = getelementptr inbounds %struct.bnad, %struct.bnad* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.bnad*, %struct.bnad** %6, align 8
  %45 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %46 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %45, i32 0, i32 1
  %47 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %46, align 8
  %48 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %49 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bnad_get_debug_drvinfo(%struct.bnad* %44, %struct.bnad_debug_info* %47, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.bnad*, %struct.bnad** %6, align 8
  %53 = getelementptr inbounds %struct.bnad, %struct.bnad* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @BFA_STATUS_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %40
  %59 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %60 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %59, i32 0, i32 1
  %61 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %60, align 8
  %62 = call i32 @kfree(%struct.bnad_debug_info* %61)
  %63 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %64 = getelementptr inbounds %struct.bnad_debug_info, %struct.bnad_debug_info* %63, i32 0, i32 1
  store %struct.bnad_debug_info* null, %struct.bnad_debug_info** %64, align 8
  %65 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %66 = call i32 @kfree(%struct.bnad_debug_info* %65)
  store %struct.bnad_debug_info* null, %struct.bnad_debug_info** %7, align 8
  %67 = load %struct.bnad*, %struct.bnad** %6, align 8
  %68 = getelementptr inbounds %struct.bnad, %struct.bnad* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pci_name(i32 %69)
  %71 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %78

74:                                               ; preds = %40
  %75 = load %struct.bnad_debug_info*, %struct.bnad_debug_info** %7, align 8
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 0
  store %struct.bnad_debug_info* %75, %struct.bnad_debug_info** %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %58, %35, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.bnad_debug_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bnad_get_debug_drvinfo(%struct.bnad*, %struct.bnad_debug_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
