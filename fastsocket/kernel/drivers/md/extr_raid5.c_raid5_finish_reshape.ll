; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_finish_reshape.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_finish_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }

@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @raid5_finish_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5_finish_reshape(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %6 = load %struct.mddev*, %struct.mddev** %2, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 9
  %8 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  store %struct.r5conf* %8, %struct.r5conf** %3, align 8
  %9 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %10 = load %struct.mddev*, %struct.mddev** %2, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 8
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %116, label %14

14:                                               ; preds = %1
  %15 = load %struct.mddev*, %struct.mddev** %2, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.mddev*, %struct.mddev** %2, align 8
  %21 = load %struct.mddev*, %struct.mddev** %2, align 8
  %22 = call i32 @raid5_size(%struct.mddev* %21, i32 0, i32 0)
  %23 = call i32 @md_set_array_sectors(%struct.mddev* %20, i32 %22)
  %24 = load %struct.mddev*, %struct.mddev** %2, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mddev*, %struct.mddev** %2, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @set_capacity(i32 %26, i32 %29)
  %31 = load %struct.mddev*, %struct.mddev** %2, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @revalidate_disk(i32 %33)
  br label %98

35:                                               ; preds = %14
  %36 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %37 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %36, i32 0, i32 4
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %40 = call i32 @calc_degraded(%struct.r5conf* %39)
  %41 = load %struct.mddev*, %struct.mddev** %2, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %44 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %43, i32 0, i32 4
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %94, %35
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %53 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = load %struct.mddev*, %struct.mddev** %2, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = icmp slt i64 %51, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %49
  %62 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %63 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.md_rdev*, %struct.md_rdev** %68, align 8
  store %struct.md_rdev* %69, %struct.md_rdev** %5, align 8
  %70 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %71 = icmp ne %struct.md_rdev* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load i32, i32* @In_sync, align 4
  %74 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %75 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %74, i32 0, i32 0
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  br label %77

77:                                               ; preds = %72, %61
  %78 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %79 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.md_rdev*, %struct.md_rdev** %84, align 8
  store %struct.md_rdev* %85, %struct.md_rdev** %5, align 8
  %86 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %87 = icmp ne %struct.md_rdev* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load i32, i32* @In_sync, align 4
  %90 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %91 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %90, i32 0, i32 0
  %92 = call i32 @clear_bit(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %77
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %49

97:                                               ; preds = %49
  br label %98

98:                                               ; preds = %97, %19
  %99 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %100 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mddev*, %struct.mddev** %2, align 8
  %103 = getelementptr inbounds %struct.mddev, %struct.mddev* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %105 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mddev*, %struct.mddev** %2, align 8
  %108 = getelementptr inbounds %struct.mddev, %struct.mddev* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @MaxSector, align 4
  %110 = load %struct.mddev*, %struct.mddev** %2, align 8
  %111 = getelementptr inbounds %struct.mddev, %struct.mddev* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.mddev*, %struct.mddev** %2, align 8
  %113 = getelementptr inbounds %struct.mddev, %struct.mddev* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load %struct.mddev*, %struct.mddev** %2, align 8
  %115 = getelementptr inbounds %struct.mddev, %struct.mddev* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %98, %1
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @md_set_array_sectors(%struct.mddev*, i32) #1

declare dso_local i32 @raid5_size(%struct.mddev*, i32, i32) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @revalidate_disk(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @calc_degraded(%struct.r5conf*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
