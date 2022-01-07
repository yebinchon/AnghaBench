; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_add_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, %struct.r5conf* }
%struct.r5conf = type { i32, i64, i32, %struct.disk_info* }
%struct.disk_info = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @raid5_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_add_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.disk_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %12 = load %struct.mddev*, %struct.mddev** %4, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 1
  %14 = load %struct.r5conf*, %struct.r5conf** %13, align 8
  store %struct.r5conf* %14, %struct.r5conf** %6, align 8
  %15 = load i32, i32* @EEXIST, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %18 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load %struct.mddev*, %struct.mddev** %4, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %25 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %175

31:                                               ; preds = %2
  %32 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %33 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %38 = call i64 @has_failed(%struct.r5conf* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %175

43:                                               ; preds = %36, %31
  %44 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %45 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %54 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %59 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %65 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %64, i32 0, i32 3
  %66 = load %struct.disk_info*, %struct.disk_info** %65, align 8
  %67 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %66, i64 %70
  %72 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp eq %struct.TYPE_2__* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %77 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %75, %63, %57, %52
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %119, %79
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %122

85:                                               ; preds = %81
  %86 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %87 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %86, i32 0, i32 3
  %88 = load %struct.disk_info*, %struct.disk_info** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %88, i64 %90
  store %struct.disk_info* %91, %struct.disk_info** %9, align 8
  %92 = load %struct.disk_info*, %struct.disk_info** %9, align 8
  %93 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = icmp eq %struct.TYPE_2__* %94, null
  br i1 %95, label %96, label %118

96:                                               ; preds = %85
  %97 = load i32, i32* @In_sync, align 4
  %98 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %99 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %98, i32 0, i32 2
  %100 = call i32 @clear_bit(i32 %97, i32* %99)
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %103 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  store i32 0, i32* %7, align 4
  %104 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %105 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %96
  %110 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %111 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %96
  %113 = load %struct.disk_info*, %struct.disk_info** %9, align 8
  %114 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %117 = call i32 @rcu_assign_pointer(%struct.TYPE_2__* %115, %struct.md_rdev* %116)
  br label %171

118:                                              ; preds = %85
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %81

122:                                              ; preds = %81
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %167, %122
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %170

128:                                              ; preds = %124
  %129 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %130 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %129, i32 0, i32 3
  %131 = load %struct.disk_info*, %struct.disk_info** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %131, i64 %133
  store %struct.disk_info* %134, %struct.disk_info** %9, align 8
  %135 = load i32, i32* @WantReplacement, align 4
  %136 = load %struct.disk_info*, %struct.disk_info** %9, align 8
  %137 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = call i64 @test_bit(i32 %135, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %128
  %143 = load %struct.disk_info*, %struct.disk_info** %9, align 8
  %144 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = icmp eq %struct.TYPE_2__* %145, null
  br i1 %146, label %147, label %166

147:                                              ; preds = %142
  %148 = load i32, i32* @In_sync, align 4
  %149 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %150 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %149, i32 0, i32 2
  %151 = call i32 @clear_bit(i32 %148, i32* %150)
  %152 = load i32, i32* @Replacement, align 4
  %153 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %154 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %153, i32 0, i32 2
  %155 = call i32 @set_bit(i32 %152, i32* %154)
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %158 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  store i32 0, i32* %7, align 4
  %159 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %160 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %159, i32 0, i32 2
  store i32 1, i32* %160, align 8
  %161 = load %struct.disk_info*, %struct.disk_info** %9, align 8
  %162 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %165 = call i32 @rcu_assign_pointer(%struct.TYPE_2__* %163, %struct.md_rdev* %164)
  br label %170

166:                                              ; preds = %142, %128
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %124

170:                                              ; preds = %147, %124
  br label %171

171:                                              ; preds = %170, %112
  %172 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %173 = call i32 @print_raid5_conf(%struct.r5conf* %172)
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %171, %40, %28
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i64 @has_failed(%struct.r5conf*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.TYPE_2__*, %struct.md_rdev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @print_raid5_conf(%struct.r5conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
