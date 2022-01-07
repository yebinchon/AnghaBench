; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_debugfs.c_mmc_add_card_debugfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_debugfs.c_mmc_add_card_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.dentry*, i32, %struct.mmc_host* }
%struct.dentry = type { i32 }
%struct.mmc_host = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@mmc_dbg_card_status_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ext_csd\00", align 1
@mmc_dbg_ext_csd_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to initialize debugfs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_add_card_debugfs(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %5 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 3
  %7 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  store %struct.mmc_host* %7, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %76

13:                                               ; preds = %1
  %14 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %15 = call i32 @mmc_card_id(%struct.mmc_card* %14)
  %16 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dentry* @debugfs_create_dir(i32 %15, i32 %18)
  store %struct.dentry* %19, %struct.dentry** %4, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = call i64 @IS_ERR(%struct.dentry* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %76

24:                                               ; preds = %13
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = icmp ne %struct.dentry* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %68

28:                                               ; preds = %24
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 1
  store %struct.dentry* %29, %struct.dentry** %31, align 8
  %32 = load i32, i32* @S_IRUSR, align 4
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %35 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %34, i32 0, i32 2
  %36 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32, %struct.dentry* %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %68

39:                                               ; preds = %28
  %40 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %41 = call i64 @mmc_card_mmc(%struct.mmc_card* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %45 = call i64 @mmc_card_sd(%struct.mmc_card* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @S_IRUSR, align 4
  %49 = load %struct.dentry*, %struct.dentry** %4, align 8
  %50 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %51 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %48, %struct.dentry* %49, %struct.mmc_card* %50, i32* @mmc_dbg_card_status_fops)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %68

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %43
  %56 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %57 = call i64 @mmc_card_mmc(%struct.mmc_card* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* @S_IRUSR, align 4
  %61 = load %struct.dentry*, %struct.dentry** %4, align 8
  %62 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %63 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %60, %struct.dentry* %61, %struct.mmc_card* %62, i32* @mmc_dbg_ext_csd_fops)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %68

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %55
  br label %76

68:                                               ; preds = %65, %53, %38, %27
  %69 = load %struct.dentry*, %struct.dentry** %4, align 8
  %70 = call i32 @debugfs_remove_recursive(%struct.dentry* %69)
  %71 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %72 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %71, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %72, align 8
  %73 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %74 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %68, %67, %23, %12
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @mmc_card_id(%struct.mmc_card*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @debugfs_create_x32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i64 @mmc_card_mmc(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_sd(%struct.mmc_card*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mmc_card*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
