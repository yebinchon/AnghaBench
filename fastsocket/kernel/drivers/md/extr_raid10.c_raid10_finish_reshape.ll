; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_finish_reshape.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_finish_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }

@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @raid10_finish_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_finish_reshape(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %7 = load %struct.mddev*, %struct.mddev** %2, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 11
  %9 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  store %struct.r10conf* %9, %struct.r10conf** %3, align 8
  %10 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %11 = load %struct.mddev*, %struct.mddev** %2, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 9
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %134

16:                                               ; preds = %1
  %17 = load %struct.mddev*, %struct.mddev** %2, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  %22 = load %struct.mddev*, %struct.mddev** %2, align 8
  %23 = call i32 @raid10_size(%struct.mddev* %22, i32 0, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.mddev*, %struct.mddev** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @md_set_array_sectors(%struct.mddev* %24, i32 %25)
  %27 = load %struct.mddev*, %struct.mddev** %2, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mddev*, %struct.mddev** %2, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %21
  %35 = load %struct.mddev*, %struct.mddev** %2, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mddev*, %struct.mddev** %2, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %41 = load %struct.mddev*, %struct.mddev** %2, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 9
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %34, %21
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.mddev*, %struct.mddev** %2, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mddev*, %struct.mddev** %2, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mddev*, %struct.mddev** %2, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @set_capacity(i32 %50, i32 %53)
  %55 = load %struct.mddev*, %struct.mddev** %2, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @revalidate_disk(i32 %57)
  br label %114

59:                                               ; preds = %16
  %60 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %61 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %110, %59
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %68 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load %struct.mddev*, %struct.mddev** %2, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = icmp slt i64 %66, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %64
  %78 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %79 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load %struct.md_rdev*, %struct.md_rdev** %84, align 8
  store %struct.md_rdev* %85, %struct.md_rdev** %6, align 8
  %86 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %87 = icmp ne %struct.md_rdev* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load i32, i32* @In_sync, align 4
  %90 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %91 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %90, i32 0, i32 0
  %92 = call i32 @clear_bit(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %77
  %94 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %95 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load %struct.md_rdev*, %struct.md_rdev** %100, align 8
  store %struct.md_rdev* %101, %struct.md_rdev** %6, align 8
  %102 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %103 = icmp ne %struct.md_rdev* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load i32, i32* @In_sync, align 4
  %106 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %107 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %106, i32 0, i32 0
  %108 = call i32 @clear_bit(i32 %105, i32* %107)
  br label %109

109:                                              ; preds = %104, %93
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %64

113:                                              ; preds = %64
  br label %114

114:                                              ; preds = %113, %44
  %115 = load %struct.mddev*, %struct.mddev** %2, align 8
  %116 = getelementptr inbounds %struct.mddev, %struct.mddev* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.mddev*, %struct.mddev** %2, align 8
  %119 = getelementptr inbounds %struct.mddev, %struct.mddev* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %121 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 1, %123
  %125 = load %struct.mddev*, %struct.mddev** %2, align 8
  %126 = getelementptr inbounds %struct.mddev, %struct.mddev* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @MaxSector, align 4
  %128 = load %struct.mddev*, %struct.mddev** %2, align 8
  %129 = getelementptr inbounds %struct.mddev, %struct.mddev* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.mddev*, %struct.mddev** %2, align 8
  %131 = getelementptr inbounds %struct.mddev, %struct.mddev* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  %132 = load %struct.mddev*, %struct.mddev** %2, align 8
  %133 = getelementptr inbounds %struct.mddev, %struct.mddev* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %114, %15
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @raid10_size(%struct.mddev*, i32, i32) #1

declare dso_local i32 @md_set_array_sectors(%struct.mddev*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @revalidate_disk(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
