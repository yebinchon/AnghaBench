; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_config.c_cfg_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_config.c_cfg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_cfg_info = type { %struct.i2o_cfg_info*, i64, i64, i64, i64, i64, i32*, %struct.file* }
%struct.file = type { i8* }
%struct.inode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i2o_cfg_info_id = common dso_local global i32 0, align 4
@open_files = common dso_local global %struct.i2o_cfg_info* null, align 8
@i2o_config_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cfg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.i2o_cfg_info*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i64 @kmalloc(i32 64, i32 %8)
  %10 = inttoptr i64 %9 to %struct.i2o_cfg_info*
  store %struct.i2o_cfg_info* %10, %struct.i2o_cfg_info** %6, align 8
  %11 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %12 = icmp ne %struct.i2o_cfg_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = call i32 (...) @lock_kernel()
  %18 = load i32, i32* @i2o_cfg_info_id, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @i2o_cfg_info_id, align 4
  %20 = sext i32 %18 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %26 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %25, i32 0, i32 7
  store %struct.file* %24, %struct.file** %26, align 8
  %27 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %28 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %27, i32 0, i32 6
  store i32* null, i32** %28, align 8
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %34 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %33, i32 0, i32 5
  store i64 %32, i64* %34, align 8
  %35 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %36 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %38 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %40 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %42 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** @open_files, align 8
  %44 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %45 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %44, i32 0, i32 0
  store %struct.i2o_cfg_info* %43, %struct.i2o_cfg_info** %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_lock_irqsave(i32* @i2o_config_lock, i64 %46)
  %48 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  store %struct.i2o_cfg_info* %48, %struct.i2o_cfg_info** @open_files, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @i2o_config_lock, i64 %49)
  %51 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %16, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
