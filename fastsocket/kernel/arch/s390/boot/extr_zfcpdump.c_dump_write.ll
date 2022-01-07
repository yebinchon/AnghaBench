; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_dump_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_dump_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"No space left on device!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @dump_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dump_write(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %40, %34, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr i8, i8* %16, i64 %17
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub i64 %19, %20
  %22 = call i64 @write(i32 %15, i8* %18, i64 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %35

25:                                               ; preds = %14
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ENOSPC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = call i32 @PRINT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = call i64 (...) @erase_oldest_dump()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i64 -1, i64* %4, align 8
  br label %46

34:                                               ; preds = %29
  br label %10

35:                                               ; preds = %25, %14
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i64 -1, i64* %4, align 8
  br label %46

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %8, align 8
  br label %10

44:                                               ; preds = %10
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %44, %38, %33
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @PRINT_ERR(i8*) #1

declare dso_local i64 @erase_oldest_dump(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
