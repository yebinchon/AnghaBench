; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_dump_log_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_dump_log_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bus_error_jmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to lookup symbol __log_buf!\0A\00", align 1
@catch_memory_errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"__log_buf\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Symbol __log_buf not found!\0A\00", align 1
@CONFIG_LOG_BUF_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Can't read memory at address 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_log_buf() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [129 x i8], align 16
  store i64 128, i64* %1, align 8
  store i64 0, i64* %3, align 8
  %5 = getelementptr inbounds [129 x i8], [129 x i8]* %4, i64 0, i64 128
  store i8 0, i8* %5, align 16
  %6 = load i32, i32* @bus_error_jmp, align 4
  %7 = call i64 @setjmp(i32 %6) #3
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %50

11:                                               ; preds = %0
  store i32 1, i32* @catch_memory_errors, align 4
  %12 = call i32 (...) @sync()
  %13 = call i64 @kallsyms_lookup_name(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %47

18:                                               ; preds = %11
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @CONFIG_LOG_BUF_SHIFT, align 4
  %21 = shl i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = add i64 %19, %22
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %43, %18
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %2, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds [129 x i8], [129 x i8]* %4, i64 0, i64 0
  %31 = call i32 @mread(i64 %29, i8* %30, i64 128)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %34)
  br label %46

36:                                               ; preds = %28
  %37 = getelementptr inbounds [129 x i8], [129 x i8]* %4, i64 0, i64 0
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [129 x i8], [129 x i8]* %4, i64 0, i64 0
  %40 = call i64 @strlen(i8* %39)
  %41 = icmp ult i64 %40, 128
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %46

43:                                               ; preds = %36
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 128
  store i64 %45, i64* %3, align 8
  br label %24

46:                                               ; preds = %42, %33, %24
  br label %47

47:                                               ; preds = %46, %16
  %48 = call i32 (...) @sync()
  %49 = call i32 @__delay(i32 200)
  store i32 0, i32* @catch_memory_errors, align 4
  br label %50

50:                                               ; preds = %47, %9
  ret void
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sync(...) #2

declare dso_local i64 @kallsyms_lookup_name(i8*) #2

declare dso_local i32 @mread(i64, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @__delay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
