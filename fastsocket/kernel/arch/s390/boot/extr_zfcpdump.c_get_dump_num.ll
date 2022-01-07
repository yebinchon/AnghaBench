; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_get_dump_num.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_get_dump_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Cannot evalute dump number\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dump.%ui\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dump.%s\00", align 1
@DUMP_LAST = common dso_local global i32 0, align 4
@DUMP_FIRST = common dso_local global i32 0, align 4
@NO_DUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @get_dump_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dump_num(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @opendir(i8* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @PRINT_PERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %3, align 4
  br label %86

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %76, %51, %40, %18
  %20 = load i32*, i32** %6, align 8
  %21 = call %struct.dirent* @readdir(i32* %20)
  store %struct.dirent* %21, %struct.dirent** %7, align 8
  %22 = icmp ne %struct.dirent* %21, null
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  %24 = load %struct.dirent*, %struct.dirent** %7, align 8
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @sscanf(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %76

29:                                               ; preds = %23
  %30 = bitcast [1024 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 1024, i1 false)
  %31 = load %struct.dirent*, %struct.dirent** %7, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %35 = call i32 (i32, i8*, ...) @sscanf(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %19

41:                                               ; preds = %29
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 48
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @isdigit(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %19

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %9, align 4
  br label %75

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @DUMP_LAST, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @MAX(i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %74

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @DUMP_FIRST, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @MIN(i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74, %55
  br label %76

76:                                               ; preds = %75, %23
  br label %19

77:                                               ; preds = %19
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @NO_DUMP, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @closedir(i32* %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @PRINT_PERR(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @sscanf(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
