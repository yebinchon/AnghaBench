; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_print_binder_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_print_binder_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_buffer = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s %d: %p size %zd:%zd %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"delivered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, %struct.binder_buffer*)* @print_binder_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_binder_buffer(i8* %0, i8* %1, i8* %2, %struct.binder_buffer* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.binder_buffer*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.binder_buffer* %3, %struct.binder_buffer** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = ptrtoint i8* %10 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.binder_buffer*, %struct.binder_buffer** %8, align 8
  %18 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.binder_buffer*, %struct.binder_buffer** %8, align 8
  %21 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.binder_buffer*, %struct.binder_buffer** %8, align 8
  %24 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.binder_buffer*, %struct.binder_buffer** %8, align 8
  %27 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.binder_buffer*, %struct.binder_buffer** %8, align 8
  %30 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @snprintf(i8* %9, i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19, i32 %22, i32 %25, i32 %28, i8* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  ret i8* %39
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
