; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_write_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_write_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.bio = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@MD_CHANGE_CLEAN = common dso_local global i32 0, align 4
@MD_CHANGE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_write_start(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.bio*, %struct.bio** %4, align 8
  %7 = call i64 @bio_data_dir(%struct.bio* %6)
  %8 = load i64, i64* @WRITE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %100

11:                                               ; preds = %2
  %12 = load %struct.mddev*, %struct.mddev** %3, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.mddev*, %struct.mddev** %3, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %37

22:                                               ; preds = %11
  %23 = load %struct.mddev*, %struct.mddev** %3, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %26 = load %struct.mddev*, %struct.mddev** %3, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 10
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load %struct.mddev*, %struct.mddev** %3, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @md_wakeup_thread(i32 %31)
  %33 = load %struct.mddev*, %struct.mddev** %3, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @md_wakeup_thread(i32 %35)
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %22, %11
  %38 = load %struct.mddev*, %struct.mddev** %3, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 8
  %40 = call i32 @atomic_inc(i32* %39)
  %41 = load %struct.mddev*, %struct.mddev** %3, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.mddev*, %struct.mddev** %3, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %37
  %49 = load %struct.mddev*, %struct.mddev** %3, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = load %struct.mddev*, %struct.mddev** %3, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 5
  %56 = call i32 @spin_lock_irq(i32* %55)
  %57 = load %struct.mddev*, %struct.mddev** %3, align 8
  %58 = getelementptr inbounds %struct.mddev, %struct.mddev* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %53
  %62 = load %struct.mddev*, %struct.mddev** %3, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 7
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @MD_CHANGE_CLEAN, align 4
  %65 = load %struct.mddev*, %struct.mddev** %3, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 2
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load i32, i32* @MD_CHANGE_PENDING, align 4
  %69 = load %struct.mddev*, %struct.mddev** %3, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 2
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  %72 = load %struct.mddev*, %struct.mddev** %3, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @md_wakeup_thread(i32 %74)
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %61, %53
  %77 = load %struct.mddev*, %struct.mddev** %3, align 8
  %78 = getelementptr inbounds %struct.mddev, %struct.mddev* %77, i32 0, i32 5
  %79 = call i32 @spin_unlock_irq(i32* %78)
  br label %80

80:                                               ; preds = %76, %48
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.mddev*, %struct.mddev** %3, align 8
  %85 = getelementptr inbounds %struct.mddev, %struct.mddev* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @sysfs_notify_dirent_safe(i32 %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load %struct.mddev*, %struct.mddev** %3, align 8
  %90 = getelementptr inbounds %struct.mddev, %struct.mddev* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MD_CHANGE_PENDING, align 4
  %93 = load %struct.mddev*, %struct.mddev** %3, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 2
  %95 = call i32 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @wait_event(i32 %91, i32 %98)
  br label %100

100:                                              ; preds = %88, %10
  ret void
}

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
