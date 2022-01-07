; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_config.c_cfg_fasync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_config.c_cfg_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_cfg_info = type { i64, i32, %struct.i2o_cfg_info* }
%struct.file = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@open_files = common dso_local global %struct.i2o_cfg_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @cfg_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2o_cfg_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @EBADF, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = call i32 (...) @lock_kernel()
  %17 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** @open_files, align 8
  store %struct.i2o_cfg_info* %17, %struct.i2o_cfg_info** %8, align 8
  br label %18

18:                                               ; preds = %29, %3
  %19 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %8, align 8
  %20 = icmp ne %struct.i2o_cfg_info* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %8, align 8
  %23 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %33

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %8, align 8
  %31 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %30, i32 0, i32 2
  %32 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %31, align 8
  store %struct.i2o_cfg_info* %32, %struct.i2o_cfg_info** %8, align 8
  br label %18

33:                                               ; preds = %27, %18
  %34 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %8, align 8
  %35 = icmp ne %struct.i2o_cfg_info* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %8, align 8
  %41 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %40, i32 0, i32 1
  %42 = call i32 @fasync_helper(i32 %37, %struct.file* %38, i32 %39, i32* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %36, %33
  %44 = call i32 (...) @unlock_kernel()
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
