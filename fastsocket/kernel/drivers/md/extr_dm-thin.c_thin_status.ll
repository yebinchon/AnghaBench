; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_thin_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_thin_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.thin_c* }
%struct.thin_c = type { %struct.TYPE_9__*, i64, %struct.TYPE_7__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@PM_FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"dm_thin_get_mapped_count returned %d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"dm_thin_get_highest_mapped_block returned %d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%llu \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8*, i32)* @thin_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thin_status(%struct.dm_target* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.thin_c*, align 8
  %17 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @BDEVNAME_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %23 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %22, i32 0, i32 0
  %24 = load %struct.thin_c*, %struct.thin_c** %23, align 8
  store %struct.thin_c* %24, %struct.thin_c** %16, align 8
  %25 = load %struct.thin_c*, %struct.thin_c** %16, align 8
  %26 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %25, i32 0, i32 3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = call i64 @get_pool_mode(%struct.TYPE_10__* %27)
  %29 = load i64, i64* @PM_FAIL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %119

33:                                               ; preds = %4
  %34 = load %struct.thin_c*, %struct.thin_c** %16, align 8
  %35 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %116

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %115 [
    i32 129, label %42
    i32 128, label %87
  ]

42:                                               ; preds = %40
  %43 = load %struct.thin_c*, %struct.thin_c** %16, align 8
  %44 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dm_thin_get_mapped_count(i32 %45, i32* %12)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @DMERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %117

52:                                               ; preds = %42
  %53 = load %struct.thin_c*, %struct.thin_c** %16, align 8
  %54 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dm_thin_get_highest_mapped_block(i32 %55, i32* %13)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @DMERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %117

62:                                               ; preds = %52
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.thin_c*, %struct.thin_c** %16, align 8
  %65 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %64, i32 0, i32 3
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %63, %68
  %70 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %62
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.thin_c*, %struct.thin_c** %16, align 8
  %77 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %75, %80
  %82 = sub nsw i32 %81, 1
  %83 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %86

84:                                               ; preds = %62
  %85 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %73
  br label %115

87:                                               ; preds = %40
  %88 = load %struct.thin_c*, %struct.thin_c** %16, align 8
  %89 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @format_dev_t(i8* %21, i32 %94)
  %96 = load %struct.thin_c*, %struct.thin_c** %16, align 8
  %97 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %95, i64 %98)
  %100 = load %struct.thin_c*, %struct.thin_c** %16, align 8
  %101 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = icmp ne %struct.TYPE_9__* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %87
  %105 = load %struct.thin_c*, %struct.thin_c** %16, align 8
  %106 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @format_dev_t(i8* %21, i32 %111)
  %113 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %104, %87
  br label %115

115:                                              ; preds = %40, %114, %86
  br label %116

116:                                              ; preds = %115, %38
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %119

117:                                              ; preds = %59, %49
  %118 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %119

119:                                              ; preds = %117, %116, %31
  %120 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_pool_mode(%struct.TYPE_10__*) #2

declare dso_local i32 @DMEMIT(i8*, ...) #2

declare dso_local i32 @dm_thin_get_mapped_count(i32, i32*) #2

declare dso_local i32 @DMERR(i8*, i32) #2

declare dso_local i32 @dm_thin_get_highest_mapped_block(i32, i32*) #2

declare dso_local i32 @format_dev_t(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
