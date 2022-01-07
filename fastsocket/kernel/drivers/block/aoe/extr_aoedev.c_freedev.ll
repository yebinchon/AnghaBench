; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_freedev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_freedev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i32, i32, i32, i32, i64, %struct.aoetgt**, i32, i64, i32 }
%struct.aoetgt = type { i32 }

@DEVFL_TKILL = common dso_local global i32 0, align 4
@DEVFL_FREEING = common dso_local global i32 0, align 4
@DEVFL_FREED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoedev*)* @freedev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freedev(%struct.aoedev* %0) #0 {
  %2 = alloca %struct.aoedev*, align 8
  %3 = alloca %struct.aoetgt**, align 8
  %4 = alloca %struct.aoetgt**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.aoedev* %0, %struct.aoedev** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %8 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %7, i32 0, i32 2
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %12 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DEVFL_TKILL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %19 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DEVFL_FREEING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @DEVFL_FREEING, align 4
  %26 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %27 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %17, %1
  %31 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %32 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %31, i32 0, i32 2
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %119

38:                                               ; preds = %30
  %39 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %40 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %39, i32 0, i32 8
  %41 = call i32 @del_timer_sync(i32* %40)
  %42 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %43 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %38
  %47 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %48 = call i32 @aoedisk_rm_sysfs(%struct.aoedev* %47)
  %49 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %50 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @del_gendisk(i64 %51)
  %53 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %54 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @put_disk(i64 %55)
  %57 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %58 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @blk_cleanup_queue(i32 %59)
  br label %61

61:                                               ; preds = %46, %38
  %62 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %63 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %62, i32 0, i32 5
  %64 = load %struct.aoetgt**, %struct.aoetgt*** %63, align 8
  store %struct.aoetgt** %64, %struct.aoetgt*** %3, align 8
  %65 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %66 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %67 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %65, i64 %69
  store %struct.aoetgt** %70, %struct.aoetgt*** %4, align 8
  br label %71

71:                                               ; preds = %86, %61
  %72 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %73 = load %struct.aoetgt**, %struct.aoetgt*** %4, align 8
  %74 = icmp ult %struct.aoetgt** %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %77 = load %struct.aoetgt*, %struct.aoetgt** %76, align 8
  %78 = icmp ne %struct.aoetgt* %77, null
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ false, %71 ], [ %78, %75 ]
  br i1 %80, label %81, label %89

81:                                               ; preds = %79
  %82 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %83 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %84 = load %struct.aoetgt*, %struct.aoetgt** %83, align 8
  %85 = call i32 @freetgt(%struct.aoedev* %82, %struct.aoetgt* %84)
  br label %86

86:                                               ; preds = %81
  %87 = load %struct.aoetgt**, %struct.aoetgt*** %3, align 8
  %88 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %87, i32 1
  store %struct.aoetgt** %88, %struct.aoetgt*** %3, align 8
  br label %71

89:                                               ; preds = %79
  %90 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %91 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %96 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @mempool_destroy(i64 %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %101 = call i32 @skbpoolfree(%struct.aoedev* %100)
  %102 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %103 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @minor_free(i32 %104)
  %106 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %107 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %106, i32 0, i32 2
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @spin_lock_irqsave(i32* %107, i64 %108)
  %110 = load i32, i32* @DEVFL_FREED, align 4
  %111 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %112 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %116 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %115, i32 0, i32 2
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  br label %119

119:                                              ; preds = %99, %37
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @aoedisk_rm_sysfs(%struct.aoedev*) #1

declare dso_local i32 @del_gendisk(i64) #1

declare dso_local i32 @put_disk(i64) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @freetgt(%struct.aoedev*, %struct.aoetgt*) #1

declare dso_local i32 @mempool_destroy(i64) #1

declare dso_local i32 @skbpoolfree(%struct.aoedev*) #1

declare dso_local i32 @minor_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
