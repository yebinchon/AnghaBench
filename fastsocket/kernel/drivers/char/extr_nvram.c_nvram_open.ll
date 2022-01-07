; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nvram.c_nvram_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nvram.c_nvram_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32 }

@nvram_state_lock = common dso_local global i32 0, align 4
@nvram_open_cnt = common dso_local global i64 0, align 8
@O_EXCL = common dso_local global i32 0, align 4
@nvram_open_mode = common dso_local global i32 0, align 4
@NVRAM_EXCL = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@NVRAM_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @nvram_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvram_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = call i32 (...) @lock_kernel()
  %7 = call i32 @spin_lock(i32* @nvram_state_lock)
  %8 = load i64, i64* @nvram_open_cnt, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O_EXCL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* @nvram_open_mode, align 4
  %19 = load i32, i32* @NVRAM_EXCL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FMODE_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i32, i32* @nvram_open_mode, align 4
  %31 = load i32, i32* @NVRAM_WRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29, %17, %10
  %35 = call i32 @spin_unlock(i32* @nvram_state_lock)
  %36 = call i32 (...) @unlock_kernel()
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %66

39:                                               ; preds = %29, %22
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @O_EXCL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @NVRAM_EXCL, align 4
  %48 = load i32, i32* @nvram_open_mode, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @nvram_open_mode, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FMODE_WRITE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @NVRAM_WRITE, align 4
  %59 = load i32, i32* @nvram_open_mode, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @nvram_open_mode, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load i64, i64* @nvram_open_cnt, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* @nvram_open_cnt, align 8
  %64 = call i32 @spin_unlock(i32* @nvram_state_lock)
  %65 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %34
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
