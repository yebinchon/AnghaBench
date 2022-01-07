; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_symbol_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_symbol_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symbol_lookup.tmp = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@termch = common dso_local global i32 0, align 4
@bus_error_jmp = common dso_local global i32 0, align 4
@catch_memory_errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s: %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Symbol '%s' not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @symbol_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symbol_lookup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i32 (...) @inchar()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  switch i32 %4, label %30 [
    i32 97, label %5
    i32 115, label %12
  ]

5:                                                ; preds = %0
  %6 = call i32 @scanhex(i64* %2)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @xmon_print_symbol(i64 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %5
  store i32 0, i32* @termch, align 4
  br label %30

12:                                               ; preds = %0
  %13 = call i32 @getstring(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @symbol_lookup.tmp, i64 0, i64 0), i32 64)
  %14 = load i32, i32* @bus_error_jmp, align 4
  %15 = call i32 @setjmp(i32 %14) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  store i32 1, i32* @catch_memory_errors, align 4
  %18 = call i32 (...) @sync()
  %19 = call i64 @kallsyms_lookup_name(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @symbol_lookup.tmp, i64 0, i64 0))
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %2, align 8
  %24 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @symbol_lookup.tmp, i64 0, i64 0), i64 %23)
  br label %27

25:                                               ; preds = %17
  %26 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @symbol_lookup.tmp, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = call i32 (...) @sync()
  br label %29

29:                                               ; preds = %27, %12
  store i32 0, i32* @catch_memory_errors, align 4
  store i32 0, i32* @termch, align 4
  br label %30

30:                                               ; preds = %0, %29, %11
  ret void
}

declare dso_local i32 @inchar(...) #1

declare dso_local i32 @scanhex(i64*) #1

declare dso_local i32 @xmon_print_symbol(i64, i8*, i8*) #1

declare dso_local i32 @getstring(i8*, i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @sync(...) #1

declare dso_local i64 @kallsyms_lookup_name(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
