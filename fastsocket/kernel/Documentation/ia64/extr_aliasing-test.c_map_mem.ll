; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/ia64/extr_aliasing-test.c_map_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/ia64/extr_aliasing-test.c_map_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/proc/bus/pci/*\00", align 1
@PCIIOC_MMAP_IS_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"PCIIOC_MMAP_IS_MEM ioctl\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@sum = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"munmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i32)* @map_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_mem(i8* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 @open(i8* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @perror(i8* %20)
  store i32 -1, i32* %5, align 4
  br label %79

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @fnmatch(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %23, i32 0)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PCIIOC_MMAP_IS_MEM, align 4
  %29 = call i32 @ioctl(i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @PROT_READ, align 4
  %38 = load i32, i32* @PROT_WRITE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MAP_SHARED, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @mmap(i32* null, i64 %36, i32 %39, i32 %40, i32 %41, i32 %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** @MAP_FAILED, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %79

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i8*, i8** %12, align 8
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %13, align 8
  br label %54

54:                                               ; preds = %61, %51
  %55 = load i32*, i32** %13, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr i8, i8* %56, i64 %57
  %59 = bitcast i8* %58 to i32*
  %60 = icmp ult i32* %55, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32*, i32** %13, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %13, align 8
  %64 = load i32, i32* %62, align 4
  %65 = load i32, i32* @sum, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* @sum, align 4
  br label %54

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i8*, i8** %12, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @munmap(i8* %69, i64 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @close(i32 %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %74, %47, %19
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fnmatch(i8*, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
