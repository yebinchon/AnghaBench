; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_debug.c_ath5k_debug_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_debug.c_ath5k_debug_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32 }

@ath5k_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ath5k\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@fops_debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@fops_registers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"beacon\00", align 1
@fops_beacon = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@fops_reset = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"antenna\00", align 1
@fops_antenna = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@fops_misc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"frameerrors\00", align 1
@fops_frameerrors = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"ani\00", align 1
@fops_ani = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@fops_queue = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"32khz_clock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_debug_init_device(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %4 = load i32, i32* @ath5k_debug, align 4
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %4, i32* %7, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14)
  store %struct.dentry* %15, %struct.dentry** %3, align 8
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = icmp ne %struct.dentry* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %75

19:                                               ; preds = %1
  %20 = load i32, i32* @S_IWUSR, align 4
  %21 = load i32, i32* @S_IRUSR, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %25 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22, %struct.dentry* %23, %struct.ath5k_hw* %24, i32* @fops_debug)
  %26 = load i32, i32* @S_IRUSR, align 4
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %29 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %26, %struct.dentry* %27, %struct.ath5k_hw* %28, i32* @fops_registers)
  %30 = load i32, i32* @S_IWUSR, align 4
  %31 = load i32, i32* @S_IRUSR, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %35 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %32, %struct.dentry* %33, %struct.ath5k_hw* %34, i32* @fops_beacon)
  %36 = load i32, i32* @S_IWUSR, align 4
  %37 = load %struct.dentry*, %struct.dentry** %3, align 8
  %38 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %39 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %36, %struct.dentry* %37, %struct.ath5k_hw* %38, i32* @fops_reset)
  %40 = load i32, i32* @S_IWUSR, align 4
  %41 = load i32, i32* @S_IRUSR, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.dentry*, %struct.dentry** %3, align 8
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %45 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %42, %struct.dentry* %43, %struct.ath5k_hw* %44, i32* @fops_antenna)
  %46 = load i32, i32* @S_IRUSR, align 4
  %47 = load %struct.dentry*, %struct.dentry** %3, align 8
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %49 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %46, %struct.dentry* %47, %struct.ath5k_hw* %48, i32* @fops_misc)
  %50 = load i32, i32* @S_IWUSR, align 4
  %51 = load i32, i32* @S_IRUSR, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.dentry*, %struct.dentry** %3, align 8
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %55 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %52, %struct.dentry* %53, %struct.ath5k_hw* %54, i32* @fops_frameerrors)
  %56 = load i32, i32* @S_IWUSR, align 4
  %57 = load i32, i32* @S_IRUSR, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.dentry*, %struct.dentry** %3, align 8
  %60 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %61 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %58, %struct.dentry* %59, %struct.ath5k_hw* %60, i32* @fops_ani)
  %62 = load i32, i32* @S_IWUSR, align 4
  %63 = load i32, i32* @S_IRUSR, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.dentry*, %struct.dentry** %3, align 8
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %67 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %64, %struct.dentry* %65, %struct.ath5k_hw* %66, i32* @fops_queue)
  %68 = load i32, i32* @S_IWUSR, align 4
  %69 = load i32, i32* @S_IRUSR, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.dentry*, %struct.dentry** %3, align 8
  %72 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %73 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %72, i32 0, i32 0
  %74 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %70, %struct.dentry* %71, i32* %73)
  br label %75

75:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.ath5k_hw*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
