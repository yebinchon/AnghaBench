; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_4__, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.mddev*, %struct.md_rdev*)* }
%struct.md_rdev = type { i32, i32 }

@Faulty = common dso_local global i32 0, align 4
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@md_misc_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_error(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %5 = load %struct.mddev*, %struct.mddev** %3, align 8
  %6 = icmp ne %struct.mddev* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 (...) @MD_BUG()
  br label %80

9:                                                ; preds = %2
  %10 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %11 = icmp ne %struct.md_rdev* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @Faulty, align 4
  %14 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %15 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %9
  br label %80

19:                                               ; preds = %12
  %20 = load %struct.mddev*, %struct.mddev** %3, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.mddev*, %struct.mddev** %3, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.mddev*, %struct.md_rdev*)** %28, align 8
  %30 = icmp ne i32 (%struct.mddev*, %struct.md_rdev*)* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24, %19
  br label %80

32:                                               ; preds = %24
  %33 = load %struct.mddev*, %struct.mddev** %3, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.mddev*, %struct.md_rdev*)** %36, align 8
  %38 = load %struct.mddev*, %struct.mddev** %3, align 8
  %39 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %40 = call i32 %37(%struct.mddev* %38, %struct.md_rdev* %39)
  %41 = load %struct.mddev*, %struct.mddev** %3, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %47 = load %struct.mddev*, %struct.mddev** %3, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 2
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %45, %32
  %51 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sysfs_notify_dirent_safe(i32 %53)
  %55 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %56 = load %struct.mddev*, %struct.mddev** %3, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 2
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %60 = load %struct.mddev*, %struct.mddev** %3, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 2
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.mddev*, %struct.mddev** %3, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @md_wakeup_thread(i32 %65)
  %67 = load %struct.mddev*, %struct.mddev** %3, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %50
  %73 = load i32, i32* @md_misc_wq, align 4
  %74 = load %struct.mddev*, %struct.mddev** %3, align 8
  %75 = getelementptr inbounds %struct.mddev, %struct.mddev* %74, i32 0, i32 0
  %76 = call i32 @queue_work(i32 %73, %struct.TYPE_4__* %75)
  br label %77

77:                                               ; preds = %72, %50
  %78 = load %struct.mddev*, %struct.mddev** %3, align 8
  %79 = call i32 @md_new_event_inintr(%struct.mddev* %78)
  br label %80

80:                                               ; preds = %77, %31, %18, %7
  ret void
}

declare dso_local i32 @MD_BUG(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @queue_work(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @md_new_event_inintr(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
