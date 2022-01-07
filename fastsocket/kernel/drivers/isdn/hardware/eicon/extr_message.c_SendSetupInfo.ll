; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_SendSetupInfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_SendSetupInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64* }

@.str = private unnamed_addr constant [10 x i8] c"SetupInfo\00", align 1
@MAXPARMSIDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"CPN \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"display(%d)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CHI\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RDN\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RDX\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RIN\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_INFO_I = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"wS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i8**, i8)* @SendSetupInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendSetupInfo(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2, i8** %3, i8 signext %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i8 %4, i8* %10, align 1
  store i64 0, i64* %15, align 8
  %16 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @dbug(i32 1, i32 %16)
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %96, %5
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @MAXPARMSIDS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %99

22:                                               ; preds = %18
  %23 = load i8**, i8*** %9, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %22
  %33 = load i64, i64* %11, align 8
  switch i64 %33, label %56 [
    i64 0, label %34
    i64 8, label %37
    i64 16, label %41
    i64 19, label %47
    i64 20, label %50
    i64 22, label %53
  ]

34:                                               ; preds = %32
  %35 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @dbug(i32 1, i32 %35)
  store i64 112, i64* %13, align 8
  store i64 128, i64* %15, align 8
  store i8 1, i8* %10, align 1
  br label %57

37:                                               ; preds = %32
  %38 = load i64, i64* %11, align 8
  %39 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = call i32 @dbug(i32 1, i32 %39)
  store i64 40, i64* %13, align 8
  store i64 4, i64* %15, align 8
  store i8 1, i8* %10, align 1
  br label %57

41:                                               ; preds = %32
  %42 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @dbug(i32 1, i32 %42)
  store i64 24, i64* %13, align 8
  store i64 256, i64* %15, align 8
  store i8 1, i8* %10, align 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @mixer_set_bchannel_id(%struct.TYPE_9__* %44, i8* %45)
  br label %57

47:                                               ; preds = %32
  %48 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 @dbug(i32 1, i32 %48)
  store i64 116, i64* %13, align 8
  store i64 1024, i64* %15, align 8
  store i8 1, i8* %10, align 1
  br label %57

50:                                               ; preds = %32
  %51 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %52 = call i32 @dbug(i32 1, i32 %51)
  store i64 115, i64* %13, align 8
  store i64 1024, i64* %15, align 8
  store i8 1, i8* %10, align 1
  br label %57

53:                                               ; preds = %32
  %54 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %55 = call i32 @dbug(i32 1, i32 %54)
  store i64 118, i64* %13, align 8
  store i64 1024, i64* %15, align 8
  store i8 1, i8* %10, align 1
  br label %57

56:                                               ; preds = %32
  store i64 0, i64* %13, align 8
  br label %57

57:                                               ; preds = %56, %53, %50, %47, %41, %37, %34
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @MAXPARMSIDS, align 8
  %61 = sub i64 %60, 2
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i64 32773, i64* %13, align 8
  store i64 16, i64* %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load i64, i64* %13, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %76, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %15, align 8
  %85 = and i64 %83, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %71
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = load i32, i32* @_INFO_I, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i64, i64* %13, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @sendf(%struct.TYPE_10__* %88, i32 %89, i32 %90, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 %91, i8* %92)
  br label %94

94:                                               ; preds = %87, %71
  br label %95

95:                                               ; preds = %94, %68, %64
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %11, align 8
  br label %18

99:                                               ; preds = %18
  ret void
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @mixer_set_bchannel_id(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @sendf(%struct.TYPE_10__*, i32, i32, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
