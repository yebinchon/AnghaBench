; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/spi/extr_spidev_fdx.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/spi/extr_spidev_fdx.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"hm:r:v\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"usage: %s [-h] [-m N] [-r N] /dev/spidevB.D\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %43, %33, %32, %25, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %43 [
    i32 109, label %19
    i32 114, label %26
    i32 118, label %33
    i32 104, label %36
    i32 63, label %36
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @optarg, align 4
  %21 = call i32 @atoi(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %37

25:                                               ; preds = %19
  br label %11

26:                                               ; preds = %17
  %27 = load i32, i32* @optarg, align 4
  %28 = call i32 @atoi(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %37

32:                                               ; preds = %26
  br label %11

33:                                               ; preds = %17
  %34 = load i32, i32* @verbose, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @verbose, align 4
  br label %11

36:                                               ; preds = %17, %17
  br label %37

37:                                               ; preds = %49, %36, %31, %24
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i32 1, i32* %3, align 4
  br label %83

43:                                               ; preds = %17
  br label %11

44:                                               ; preds = %11
  %45 = load i32, i32* @optind, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %37

50:                                               ; preds = %44
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* @optind, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @O_RDWR, align 4
  %58 = call i32 @open(i8* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %83

63:                                               ; preds = %50
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @dumpstat(i8* %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @do_msg(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @do_read(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @close(i32 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %61, %37
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @dumpstat(i8*, i32) #1

declare dso_local i32 @do_msg(i32, i32) #1

declare dso_local i32 @do_read(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
