; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_mirror_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64 }
%struct.mirror_set = type { i32, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.dm_dirty_log*, i32, i8*, i32)*, i64 (%struct.dm_dirty_log*)* }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%llu/%llu 1 %s \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" %s %llu\00", align 1
@DM_RAID1_HANDLE_ERRORS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c" 1 handle_errors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8*, i32)* @mirror_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_status(%struct.dm_target* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mirror_set*, align 8
  %12 = alloca %struct.dm_dirty_log*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mirror_set*
  store %struct.mirror_set* %18, %struct.mirror_set** %11, align 8
  %19 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %20 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %21)
  store %struct.dm_dirty_log* %22, %struct.dm_dirty_log** %12, align 8
  %23 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %24 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %153 [
    i32 129, label %31
    i32 128, label %99
  ]

31:                                               ; preds = %4
  %32 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %33 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %64, %31
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %39 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %44 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %55 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = call signext i8 @device_status_char(%struct.TYPE_6__* %59)
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %29, i64 %62
  store i8 %60, i8* %63, align 1
  br label %64

64:                                               ; preds = %42
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %36

67:                                               ; preds = %36
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %29, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %72 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %74, align 8
  %76 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %77 = call i64 %75(%struct.dm_dirty_log* %76)
  %78 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %79 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %77, i64 %80, i8* %29)
  %82 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %83 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (%struct.dm_dirty_log*, i32, i8*, i32)*, i32 (%struct.dm_dirty_log*, i32, i8*, i32)** %85, align 8
  %87 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sub i32 %93, %94
  %96 = call i32 %86(%struct.dm_dirty_log* %87, i32 %88, i8* %92, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %153

99:                                               ; preds = %4
  %100 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %101 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32 (%struct.dm_dirty_log*, i32, i8*, i32)*, i32 (%struct.dm_dirty_log*, i32, i8*, i32)** %103, align 8
  %105 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %12, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 %104(%struct.dm_dirty_log* %105, i32 %106, i8* %107, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %111 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %140, %99
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %117 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ult i32 %115, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %114
  %121 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %122 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %121, i32 0, i32 2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %132 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %131, i32 0, i32 2
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %130, i64 %138)
  br label %140

140:                                              ; preds = %120
  %141 = load i32, i32* %9, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %114

143:                                              ; preds = %114
  %144 = load %struct.mirror_set*, %struct.mirror_set** %11, align 8
  %145 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DM_RAID1_HANDLE_ERRORS, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %143
  br label %153

153:                                              ; preds = %152, %4, %67
  %154 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %154)
  ret i32 0
}

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local signext i8 @device_status_char(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
