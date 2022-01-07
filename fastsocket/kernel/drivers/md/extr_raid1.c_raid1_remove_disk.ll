; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raid1_remove_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raid1_remove_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, %struct.r1conf* }
%struct.r1conf = type { i32, i64, %struct.raid1_info* }
%struct.raid1_info = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, i32, i32 }

@In_sync = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @raid1_remove_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid1_remove_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.raid1_info*, align 8
  %9 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 2
  %12 = load %struct.r1conf*, %struct.r1conf** %11, align 8
  store %struct.r1conf* %12, %struct.r1conf** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %17 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %16, i32 0, i32 2
  %18 = load %struct.raid1_info*, %struct.raid1_info** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %18, i64 %20
  store %struct.raid1_info* %21, %struct.raid1_info** %8, align 8
  %22 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %23 = load %struct.raid1_info*, %struct.raid1_info** %8, align 8
  %24 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %23, i32 0, i32 0
  %25 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %26 = icmp ne %struct.md_rdev* %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %29 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %28, i32 0, i32 2
  %30 = load %struct.raid1_info*, %struct.raid1_info** %29, align 8
  %31 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %32 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %30, i64 %34
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %35, i64 %37
  store %struct.raid1_info* %38, %struct.raid1_info** %8, align 8
  br label %39

39:                                               ; preds = %27, %2
  %40 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %41 = call i32 @print_conf(%struct.r1conf* %40)
  %42 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %43 = load %struct.raid1_info*, %struct.raid1_info** %8, align 8
  %44 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %43, i32 0, i32 0
  %45 = load %struct.md_rdev*, %struct.md_rdev** %44, align 8
  %46 = icmp eq %struct.md_rdev* %42, %45
  br i1 %46, label %47, label %162

47:                                               ; preds = %39
  %48 = load i32, i32* @In_sync, align 4
  %49 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 1
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %55 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %54, i32 0, i32 2
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53, %47
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %163

61:                                               ; preds = %53
  %62 = load i32, i32* @Faulty, align 4
  %63 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 1
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %61
  %68 = load %struct.mddev*, %struct.mddev** %3, align 8
  %69 = getelementptr inbounds %struct.mddev, %struct.mddev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %72 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load %struct.mddev*, %struct.mddev** %3, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %80 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %163

86:                                               ; preds = %75, %67, %61
  %87 = load %struct.raid1_info*, %struct.raid1_info** %8, align 8
  %88 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %87, i32 0, i32 0
  store %struct.md_rdev* null, %struct.md_rdev** %88, align 8
  %89 = call i32 (...) @synchronize_rcu()
  %90 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %91 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %90, i32 0, i32 2
  %92 = call i64 @atomic_read(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i32, i32* @EBUSY, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  %97 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %98 = load %struct.raid1_info*, %struct.raid1_info** %8, align 8
  %99 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %98, i32 0, i32 0
  store %struct.md_rdev* %97, %struct.md_rdev** %99, align 8
  br label %163

100:                                              ; preds = %86
  %101 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %102 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %101, i32 0, i32 2
  %103 = load %struct.raid1_info*, %struct.raid1_info** %102, align 8
  %104 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %105 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %103, i64 %109
  %111 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %110, i32 0, i32 0
  %112 = load %struct.md_rdev*, %struct.md_rdev** %111, align 8
  %113 = icmp ne %struct.md_rdev* %112, null
  br i1 %113, label %114, label %153

114:                                              ; preds = %100
  %115 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %116 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %115, i32 0, i32 2
  %117 = load %struct.raid1_info*, %struct.raid1_info** %116, align 8
  %118 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %119 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %117, i64 %123
  %125 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %124, i32 0, i32 0
  %126 = load %struct.md_rdev*, %struct.md_rdev** %125, align 8
  store %struct.md_rdev* %126, %struct.md_rdev** %9, align 8
  %127 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %128 = call i32 @freeze_array(%struct.r1conf* %127, i32 0)
  %129 = load i32, i32* @Replacement, align 4
  %130 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %131 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %130, i32 0, i32 1
  %132 = call i32 @clear_bit(i32 %129, i32* %131)
  %133 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %134 = load %struct.raid1_info*, %struct.raid1_info** %8, align 8
  %135 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %134, i32 0, i32 0
  store %struct.md_rdev* %133, %struct.md_rdev** %135, align 8
  %136 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %137 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %136, i32 0, i32 2
  %138 = load %struct.raid1_info*, %struct.raid1_info** %137, align 8
  %139 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %140 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %138, i64 %144
  %146 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %145, i32 0, i32 0
  store %struct.md_rdev* null, %struct.md_rdev** %146, align 8
  %147 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %148 = call i32 @unfreeze_array(%struct.r1conf* %147)
  %149 = load i32, i32* @WantReplacement, align 4
  %150 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %151 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %150, i32 0, i32 1
  %152 = call i32 @clear_bit(i32 %149, i32* %151)
  br label %158

153:                                              ; preds = %100
  %154 = load i32, i32* @WantReplacement, align 4
  %155 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %156 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %155, i32 0, i32 1
  %157 = call i32 @clear_bit(i32 %154, i32* %156)
  br label %158

158:                                              ; preds = %153, %114
  br label %159

159:                                              ; preds = %158
  %160 = load %struct.mddev*, %struct.mddev** %3, align 8
  %161 = call i32 @md_integrity_register(%struct.mddev* %160)
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %159, %39
  br label %163

163:                                              ; preds = %162, %94, %83, %58
  %164 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %165 = call i32 @print_conf(%struct.r1conf* %164)
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @print_conf(%struct.r1conf*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @freeze_array(%struct.r1conf*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @unfreeze_array(%struct.r1conf*) #1

declare dso_local i32 @md_integrity_register(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
