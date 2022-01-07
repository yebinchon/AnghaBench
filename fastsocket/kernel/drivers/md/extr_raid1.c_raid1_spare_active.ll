; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raid1_spare_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raid1_spare_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.r1conf* }
%struct.r1conf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i64, i32, i32 }

@MaxSector = common dso_local global i64 0, align 8
@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @raid1_spare_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid1_spare_active(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r1conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 1
  %11 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  store %struct.r1conf* %11, %struct.r1conf** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %113, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %15 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %116

18:                                               ; preds = %12
  %19 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %20 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.md_rdev*, %struct.md_rdev** %25, align 8
  store %struct.md_rdev* %26, %struct.md_rdev** %7, align 8
  %27 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %28 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %31 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.md_rdev*, %struct.md_rdev** %37, align 8
  store %struct.md_rdev* %38, %struct.md_rdev** %8, align 8
  %39 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %40 = icmp ne %struct.md_rdev* %39, null
  br i1 %40, label %41, label %84

41:                                               ; preds = %18
  %42 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MaxSector, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %84

47:                                               ; preds = %41
  %48 = load i32, i32* @Faulty, align 4
  %49 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 2
  %51 = call i32 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @In_sync, align 4
  %55 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %56 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %55, i32 0, i32 2
  %57 = call i32 @test_and_set_bit(i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %53
  %60 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %61 = icmp ne %struct.md_rdev* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* @In_sync, align 4
  %64 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %65 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %64, i32 0, i32 2
  %66 = call i32 @test_and_clear_bit(i32 %63, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %73 = icmp ne %struct.md_rdev* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* @Faulty, align 4
  %76 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %77 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %76, i32 0, i32 2
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  %79 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %80 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @sysfs_notify_dirent_safe(i32 %81)
  br label %83

83:                                               ; preds = %74, %71
  br label %84

84:                                               ; preds = %83, %53, %47, %41, %18
  %85 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %86 = icmp ne %struct.md_rdev* %85, null
  br i1 %86, label %87, label %112

87:                                               ; preds = %84
  %88 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %89 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MaxSector, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %87
  %94 = load i32, i32* @Faulty, align 4
  %95 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %96 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %95, i32 0, i32 2
  %97 = call i32 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @In_sync, align 4
  %101 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %102 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %101, i32 0, i32 2
  %103 = call i32 @test_and_set_bit(i32 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  %108 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %109 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @sysfs_notify_dirent_safe(i32 %110)
  br label %112

112:                                              ; preds = %105, %99, %93, %87, %84
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %12

116:                                              ; preds = %12
  %117 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %118 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %117, i32 0, i32 1
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @spin_lock_irqsave(i32* %118, i64 %119)
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.mddev*, %struct.mddev** %2, align 8
  %123 = getelementptr inbounds %struct.mddev, %struct.mddev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %127 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %126, i32 0, i32 1
  %128 = load i64, i64* %6, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %131 = call i32 @print_conf(%struct.r1conf* %130)
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @print_conf(%struct.r1conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
