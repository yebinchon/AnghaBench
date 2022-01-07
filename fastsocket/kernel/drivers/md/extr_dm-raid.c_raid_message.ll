; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_raid_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_raid_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { %struct.mddev }
%struct.mddev = type { i32, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"reshape\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Reshape not supported.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"resync\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"repair\00", align 1
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @raid_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_message(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.raid_set*, align 8
  %9 = alloca %struct.mddev*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 0
  %12 = load %struct.raid_set*, %struct.raid_set** %11, align 8
  store %struct.raid_set* %12, %struct.raid_set** %8, align 8
  %13 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  %14 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %13, i32 0, i32 0
  store %struct.mddev* %14, %struct.mddev** %9, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcasecmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = call i32 @DMERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %187

24:                                               ; preds = %3
  %25 = load %struct.mddev*, %struct.mddev** %9, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.mddev*, %struct.mddev** %9, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29, %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %187

39:                                               ; preds = %29
  %40 = load i8**, i8*** %7, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %47 = load %struct.mddev*, %struct.mddev** %9, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 3
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  br label %55

50:                                               ; preds = %39
  %51 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %52 = load %struct.mddev*, %struct.mddev** %9, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 3
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i8**, i8*** %7, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i8**, i8*** %7, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcasecmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %61, %55
  %68 = load %struct.mddev*, %struct.mddev** %9, align 8
  %69 = getelementptr inbounds %struct.mddev, %struct.mddev* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %74 = load %struct.mddev*, %struct.mddev** %9, align 8
  %75 = getelementptr inbounds %struct.mddev, %struct.mddev* %74, i32 0, i32 3
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  %77 = load %struct.mddev*, %struct.mddev** %9, align 8
  %78 = call i32 @md_reap_sync_thread(%struct.mddev* %77)
  br label %79

79:                                               ; preds = %72, %67
  br label %154

80:                                               ; preds = %61
  %81 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %82 = load %struct.mddev*, %struct.mddev** %9, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 3
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %88 = load %struct.mddev*, %struct.mddev** %9, align 8
  %89 = getelementptr inbounds %struct.mddev, %struct.mddev* %88, i32 0, i32 3
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86, %80
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %187

95:                                               ; preds = %86
  %96 = load i8**, i8*** %7, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %103 = load %struct.mddev*, %struct.mddev** %9, align 8
  %104 = getelementptr inbounds %struct.mddev, %struct.mddev* %103, i32 0, i32 3
  %105 = call i32 @set_bit(i32 %102, i32* %104)
  br label %152

106:                                              ; preds = %95
  %107 = load i8**, i8*** %7, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strcasecmp(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %114 = load %struct.mddev*, %struct.mddev** %9, align 8
  %115 = getelementptr inbounds %struct.mddev, %struct.mddev* %114, i32 0, i32 3
  %116 = call i32 @set_bit(i32 %113, i32* %115)
  %117 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %118 = load %struct.mddev*, %struct.mddev** %9, align 8
  %119 = getelementptr inbounds %struct.mddev, %struct.mddev* %118, i32 0, i32 3
  %120 = call i32 @set_bit(i32 %117, i32* %119)
  br label %151

121:                                              ; preds = %106
  %122 = load i8**, i8*** %7, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strcasecmp(i8* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %129 = load %struct.mddev*, %struct.mddev** %9, align 8
  %130 = getelementptr inbounds %struct.mddev, %struct.mddev* %129, i32 0, i32 3
  %131 = call i32 @set_bit(i32 %128, i32* %130)
  br label %142

132:                                              ; preds = %121
  %133 = load i8**, i8*** %7, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %187

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141, %127
  %143 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %144 = load %struct.mddev*, %struct.mddev** %9, align 8
  %145 = getelementptr inbounds %struct.mddev, %struct.mddev* %144, i32 0, i32 3
  %146 = call i32 @set_bit(i32 %143, i32* %145)
  %147 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %148 = load %struct.mddev*, %struct.mddev** %9, align 8
  %149 = getelementptr inbounds %struct.mddev, %struct.mddev* %148, i32 0, i32 3
  %150 = call i32 @set_bit(i32 %147, i32* %149)
  br label %151

151:                                              ; preds = %142, %112
  br label %152

152:                                              ; preds = %151, %101
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %79
  %155 = load %struct.mddev*, %struct.mddev** %9, align 8
  %156 = getelementptr inbounds %struct.mddev, %struct.mddev* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %172

159:                                              ; preds = %154
  %160 = load %struct.mddev*, %struct.mddev** %9, align 8
  %161 = getelementptr inbounds %struct.mddev, %struct.mddev* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  %162 = load %struct.mddev*, %struct.mddev** %9, align 8
  %163 = getelementptr inbounds %struct.mddev, %struct.mddev* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %159
  %167 = load %struct.mddev*, %struct.mddev** %9, align 8
  %168 = getelementptr inbounds %struct.mddev, %struct.mddev* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @md_wakeup_thread(i64 %169)
  br label %171

171:                                              ; preds = %166, %159
  br label %172

172:                                              ; preds = %171, %154
  %173 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %174 = load %struct.mddev*, %struct.mddev** %9, align 8
  %175 = getelementptr inbounds %struct.mddev, %struct.mddev* %174, i32 0, i32 3
  %176 = call i32 @set_bit(i32 %173, i32* %175)
  %177 = load %struct.mddev*, %struct.mddev** %9, align 8
  %178 = getelementptr inbounds %struct.mddev, %struct.mddev* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %172
  %182 = load %struct.mddev*, %struct.mddev** %9, align 8
  %183 = getelementptr inbounds %struct.mddev, %struct.mddev* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @md_wakeup_thread(i64 %184)
  br label %186

186:                                              ; preds = %181, %172
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %138, %92, %36, %20
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @md_reap_sync_thread(%struct.mddev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
