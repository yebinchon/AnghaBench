; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_remove_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_remove_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, %struct.r5conf* }
%struct.r5conf = type { i32, i64, i64, %struct.disk_info* }
%struct.disk_info = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32, i32, i32 }

@MaxSector = common dso_local global i64 0, align 8
@In_sync = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @raid5_remove_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_remove_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev**, align 8
  %10 = alloca %struct.disk_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 1
  %13 = load %struct.r5conf*, %struct.r5conf** %12, align 8
  store %struct.r5conf* %13, %struct.r5conf** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %15 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %18 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %17, i32 0, i32 3
  %19 = load %struct.disk_info*, %struct.disk_info** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %19, i64 %21
  store %struct.disk_info* %22, %struct.disk_info** %10, align 8
  %23 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %24 = call i32 @print_raid5_conf(%struct.r5conf* %23)
  %25 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %26 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %27 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %26, i32 0, i32 1
  %28 = load %struct.md_rdev*, %struct.md_rdev** %27, align 8
  %29 = icmp eq %struct.md_rdev* %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %32 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %31, i32 0, i32 1
  store %struct.md_rdev** %32, %struct.md_rdev*** %9, align 8
  br label %44

33:                                               ; preds = %2
  %34 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %35 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %36 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %35, i32 0, i32 0
  %37 = load %struct.md_rdev*, %struct.md_rdev** %36, align 8
  %38 = icmp eq %struct.md_rdev* %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %41 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %40, i32 0, i32 0
  store %struct.md_rdev** %41, %struct.md_rdev*** %9, align 8
  br label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %160

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %52 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MaxSector, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* @In_sync, align 4
  %58 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %59 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %58, i32 0, i32 1
  %60 = call i32 @clear_bit(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %56, %50, %44
  %62 = load i32, i32* @In_sync, align 4
  %63 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 1
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %69 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %68, i32 0, i32 2
  %70 = call i64 @atomic_read(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67, %61
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %156

75:                                               ; preds = %67
  %76 = load i32, i32* @Faulty, align 4
  %77 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %78 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %77, i32 0, i32 1
  %79 = call i64 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %113, label %81

81:                                               ; preds = %75
  %82 = load %struct.mddev*, %struct.mddev** %4, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %86 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %81
  %90 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %91 = call i32 @has_failed(%struct.r5conf* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %89
  %94 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %95 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %94, i32 0, i32 0
  %96 = load %struct.md_rdev*, %struct.md_rdev** %95, align 8
  %97 = icmp ne %struct.md_rdev* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %100 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %99, i32 0, i32 0
  %101 = load %struct.md_rdev*, %struct.md_rdev** %100, align 8
  %102 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %103 = icmp eq %struct.md_rdev* %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %98, %93
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %107 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %156

113:                                              ; preds = %104, %98, %89, %81, %75
  %114 = load %struct.md_rdev**, %struct.md_rdev*** %9, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %114, align 8
  %115 = call i32 (...) @synchronize_rcu()
  %116 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %117 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %116, i32 0, i32 2
  %118 = call i64 @atomic_read(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i32, i32* @EBUSY, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  %123 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %124 = load %struct.md_rdev**, %struct.md_rdev*** %9, align 8
  store %struct.md_rdev* %123, %struct.md_rdev** %124, align 8
  br label %155

125:                                              ; preds = %113
  %126 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %127 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %126, i32 0, i32 0
  %128 = load %struct.md_rdev*, %struct.md_rdev** %127, align 8
  %129 = icmp ne %struct.md_rdev* %128, null
  br i1 %129, label %130, label %149

130:                                              ; preds = %125
  %131 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %132 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %131, i32 0, i32 0
  %133 = load %struct.md_rdev*, %struct.md_rdev** %132, align 8
  %134 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %135 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %134, i32 0, i32 1
  store %struct.md_rdev* %133, %struct.md_rdev** %135, align 8
  %136 = load i32, i32* @Replacement, align 4
  %137 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %138 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %137, i32 0, i32 0
  %139 = load %struct.md_rdev*, %struct.md_rdev** %138, align 8
  %140 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %139, i32 0, i32 1
  %141 = call i32 @clear_bit(i32 %136, i32* %140)
  %142 = call i32 (...) @smp_mb()
  %143 = load %struct.disk_info*, %struct.disk_info** %10, align 8
  %144 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %143, i32 0, i32 0
  store %struct.md_rdev* null, %struct.md_rdev** %144, align 8
  %145 = load i32, i32* @WantReplacement, align 4
  %146 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %147 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %146, i32 0, i32 1
  %148 = call i32 @clear_bit(i32 %145, i32* %147)
  br label %154

149:                                              ; preds = %125
  %150 = load i32, i32* @WantReplacement, align 4
  %151 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %152 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %151, i32 0, i32 1
  %153 = call i32 @clear_bit(i32 %150, i32* %152)
  br label %154

154:                                              ; preds = %149, %130
  br label %155

155:                                              ; preds = %154, %120
  br label %156

156:                                              ; preds = %155, %110, %72
  %157 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %158 = call i32 @print_raid5_conf(%struct.r5conf* %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %42
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @print_raid5_conf(%struct.r5conf*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @has_failed(%struct.r5conf*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
