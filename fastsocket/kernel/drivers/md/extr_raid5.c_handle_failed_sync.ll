; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_failed_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_failed_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }
%struct.stripe_head = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.stripe_head_state = type { i64, i64 }

@STRIPE_SYNCING = common dso_local global i32 0, align 4
@R5_Overlap = common dso_local global i32 0, align 4
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*)* @handle_failed_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_failed_sync(%struct.r5conf* %0, %struct.stripe_head* %1, %struct.stripe_head_state* %2) #0 {
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.stripe_head*, align 8
  %6 = alloca %struct.stripe_head_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %5, align 8
  store %struct.stripe_head_state* %2, %struct.stripe_head_state** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @STRIPE_SYNCING, align 4
  %11 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %12 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %11, i32 0, i32 3
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load i32, i32* @R5_Overlap, align 4
  %15 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %16 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %19 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i64 @test_and_clear_bit(i32 %14, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %27 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %26, i32 0, i32 4
  %28 = call i32 @wake_up(i32* %27)
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.stripe_head_state*, %struct.stripe_head_state** %6, align 8
  %31 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.stripe_head_state*, %struct.stripe_head_state** %6, align 8
  %33 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %35 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %36 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %34, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %128

41:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %113, %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %45 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %116

48:                                               ; preds = %42
  %49 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %50 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %49, i32 0, i32 3
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.md_rdev*, %struct.md_rdev** %55, align 8
  store %struct.md_rdev* %56, %struct.md_rdev** %9, align 8
  %57 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %58 = icmp ne %struct.md_rdev* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %48
  %60 = load i32, i32* @Faulty, align 4
  %61 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %62 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %61, i32 0, i32 0
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @In_sync, align 4
  %67 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 0
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %73 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %74 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @STRIPE_SECTORS, align 4
  %77 = call i32 @rdev_set_badblocks(%struct.md_rdev* %72, i32 %75, i32 %76, i32 0)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %71, %65, %59, %48
  %81 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %82 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %81, i32 0, i32 3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.md_rdev*, %struct.md_rdev** %87, align 8
  store %struct.md_rdev* %88, %struct.md_rdev** %9, align 8
  %89 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %90 = icmp ne %struct.md_rdev* %89, null
  br i1 %90, label %91, label %112

91:                                               ; preds = %80
  %92 = load i32, i32* @Faulty, align 4
  %93 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %94 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %93, i32 0, i32 0
  %95 = call i64 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @In_sync, align 4
  %99 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %100 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %99, i32 0, i32 0
  %101 = call i64 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %97
  %104 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %105 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %106 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @STRIPE_SECTORS, align 4
  %109 = call i32 @rdev_set_badblocks(%struct.md_rdev* %104, i32 %107, i32 %108, i32 0)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  store i32 1, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %103, %97, %91, %80
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %42

116:                                              ; preds = %42
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %121 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %126 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %119, %116
  br label %128

128:                                              ; preds = %127, %29
  %129 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %130 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* @STRIPE_SECTORS, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @md_done_sync(%struct.TYPE_6__* %131, i32 %132, i32 %136)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @md_done_sync(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
