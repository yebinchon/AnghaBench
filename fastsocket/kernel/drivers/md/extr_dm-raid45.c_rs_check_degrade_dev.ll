; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_rs_check_degrade_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_rs_check_degrade_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_10__, %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.stripe = type { i64 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"FATAL: too many devices failed -> RAID set broken\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"device /dev/%s failed\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"CRITICAL: %sio error on device /dev/%s in region=%llu; DEGRADING RAID set\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAKED \00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"further device error messages suppressed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raid_set*, %struct.stripe*, i32)* @rs_check_degrade_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_check_degrade_dev(%struct.raid_set* %0, %struct.stripe* %1, i32 %2) #0 {
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca %struct.stripe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store %struct.stripe* %1, %struct.stripe** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %13 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 %16
  %18 = call i64 @TestSetDevFailed(%struct.TYPE_11__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %125

21:                                               ; preds = %3
  %22 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %23 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = call i64 @atomic_inc_return(i32* %24)
  %26 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %27 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %25, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %21
  %34 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %35 = call i32 @TestSetRSDead(%struct.raid_set* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %78, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @BDEVNAME_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %8, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %9, align 8
  %42 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %73, %37
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %46 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %44, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %43
  %51 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %52 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %55
  %57 = call i64 @DevFailed(%struct.TYPE_11__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %50
  %60 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %61 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bdevname(i32 %69, i8* %41)
  %71 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %59, %50
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %43

76:                                               ; preds = %43
  %77 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %77)
  br label %78

78:                                               ; preds = %76, %33, %21
  %79 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %80 = call i32 @TestSetRSDegraded(%struct.raid_set* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %118, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @BDEVNAME_SIZE, align 4
  %84 = zext i32 %83 to i64
  %85 = call i8* @llvm.stacksave()
  store i8* %85, i8** %10, align 8
  %86 = alloca i8, i64 %84, align 16
  store i64 %84, i64* %11, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %89 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.stripe*, %struct.stripe** %5, align 8
  %92 = icmp ne %struct.stripe* %91, null
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %95 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %96 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bdevname(i32 %104, i8* %86)
  %106 = load %struct.stripe*, %struct.stripe** %5, align 8
  %107 = icmp ne %struct.stripe* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %82
  %109 = load %struct.stripe*, %struct.stripe** %5, align 8
  %110 = getelementptr inbounds %struct.stripe, %struct.stripe* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  br label %113

112:                                              ; preds = %82
  br label %113

113:                                              ; preds = %112, %108
  %114 = phi i64 [ %111, %108 ], [ 0, %112 ]
  %115 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* %94, i32 %105, i64 %114)
  %116 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %117 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %117)
  br label %118

118:                                              ; preds = %113, %78
  %119 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %120 = call i32 @SetRSProhibitWrites(%struct.raid_set* %119)
  %121 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %122 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = call i32 @schedule_work(i32* %123)
  br label %125

125:                                              ; preds = %118, %20
  ret void
}

declare dso_local i64 @TestSetDevFailed(%struct.TYPE_11__*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @TestSetRSDead(%struct.raid_set*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local i64 @DevFailed(%struct.TYPE_11__*) #1

declare dso_local i32 @bdevname(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @TestSetRSDegraded(%struct.raid_set*) #1

declare dso_local i32 @SetRSProhibitWrites(%struct.raid_set*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
