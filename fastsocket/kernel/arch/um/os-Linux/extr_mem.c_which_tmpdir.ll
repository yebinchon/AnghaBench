; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_mem.c_which_tmpdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_mem.c_which_tmpdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@checked_tmpdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Checking for tmpfs mount on /dev/shm...\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to open /proc/mounts, errno = %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"/dev/shm\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"nothing mounted on /dev/shm\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"read returned errno %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"not tmpfs\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@default_tmpdir = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @which_tmpdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @which_tmpdir() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = bitcast [128 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 128, i1 false)
  %5 = load i32, i32* @checked_tmpdir, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %79

8:                                                ; preds = %0
  store i32 1, i32* @checked_tmpdir, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  br label %79

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %42
  %19 = load i32, i32* %1, align 4
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %22 = call i32 @ARRAY_SIZE(i8* %21)
  %23 = call i32 @next(i32 %19, i8* %20, i32 %22, i8 signext 32)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %43

27:                                               ; preds = %18
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %29 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %61

33:                                               ; preds = %27
  %34 = load i32, i32* %1, align 4
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %37 = call i32 @ARRAY_SIZE(i8* %36)
  %38 = call i32 @next(i32 %34, i8* %35, i32 %37, i8 signext 10)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %43

42:                                               ; preds = %33
  br label %18

43:                                               ; preds = %41, %26
  br label %44

44:                                               ; preds = %69, %43
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %57

49:                                               ; preds = %44
  %50 = load i32, i32* %2, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %2, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  br label %57

57:                                               ; preds = %56, %47
  br label %58

58:                                               ; preds = %77, %75, %57
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @close(i32 %59)
  br label %79

61:                                               ; preds = %32
  %62 = load i32, i32* %1, align 4
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %65 = call i32 @ARRAY_SIZE(i8* %64)
  %66 = call i32 @next(i32 %62, i8* %63, i32 %65, i8 signext 32)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %44

70:                                               ; preds = %61
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %72 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %73 = call i64 @strncmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %58

77:                                               ; preds = %70
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** @default_tmpdir, align 8
  br label %58

79:                                               ; preds = %58, %14, %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @next(i32, i8*, i32, i8 signext) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
