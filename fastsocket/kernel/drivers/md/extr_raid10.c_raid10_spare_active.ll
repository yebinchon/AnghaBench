; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_spare_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_spare_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.r10conf* }
%struct.r10conf = type { i32, %struct.raid10_info*, %struct.TYPE_4__ }
%struct.raid10_info = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MaxSector = common dso_local global i64 0, align 8
@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @raid10_spare_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid10_spare_active(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r10conf*, align 8
  %5 = alloca %struct.raid10_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %8 = load %struct.mddev*, %struct.mddev** %2, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 1
  %10 = load %struct.r10conf*, %struct.r10conf** %9, align 8
  store %struct.r10conf* %10, %struct.r10conf** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %134, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %14 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %137

18:                                               ; preds = %11
  %19 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %20 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %19, i32 0, i32 1
  %21 = load %struct.raid10_info*, %struct.raid10_info** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %21, i64 %23
  store %struct.raid10_info* %24, %struct.raid10_info** %5, align 8
  %25 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %26 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %94

29:                                               ; preds = %18
  %30 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %31 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MaxSector, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %94

37:                                               ; preds = %29
  %38 = load i32, i32* @Faulty, align 4
  %39 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %40 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = call i32 @test_bit(i32 %38, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %94, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @In_sync, align 4
  %47 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %48 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = call i32 @test_and_set_bit(i32 %46, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %94, label %53

53:                                               ; preds = %45
  %54 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %55 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32, i32* @In_sync, align 4
  %60 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %61 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = call i32 @test_and_clear_bit(i32 %59, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58, %53
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %58
  %70 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %71 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = icmp ne %struct.TYPE_6__* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i32, i32* @Faulty, align 4
  %76 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %77 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = call i32 @set_bit(i32 %75, i32* %79)
  %81 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %82 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @sysfs_notify_dirent_safe(i32 %85)
  br label %87

87:                                               ; preds = %74, %69
  %88 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %89 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @sysfs_notify_dirent_safe(i32 %92)
  br label %133

94:                                               ; preds = %45, %37, %29, %18
  %95 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %96 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = icmp ne %struct.TYPE_6__* %97, null
  br i1 %98, label %99, label %132

99:                                               ; preds = %94
  %100 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %101 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MaxSector, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %99
  %108 = load i32, i32* @Faulty, align 4
  %109 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %110 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = call i32 @test_bit(i32 %108, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %132, label %115

115:                                              ; preds = %107
  %116 = load i32, i32* @In_sync, align 4
  %117 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %118 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = call i32 @test_and_set_bit(i32 %116, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  %126 = load %struct.raid10_info*, %struct.raid10_info** %5, align 8
  %127 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sysfs_notify_dirent_safe(i32 %130)
  br label %132

132:                                              ; preds = %123, %115, %107, %99, %94
  br label %133

133:                                              ; preds = %132, %87
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %11

137:                                              ; preds = %11
  %138 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %139 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %138, i32 0, i32 0
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @spin_lock_irqsave(i32* %139, i64 %140)
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.mddev*, %struct.mddev** %2, align 8
  %144 = getelementptr inbounds %struct.mddev, %struct.mddev* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %148 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %147, i32 0, i32 0
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %152 = call i32 @print_conf(%struct.r10conf* %151)
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @print_conf(%struct.r10conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
