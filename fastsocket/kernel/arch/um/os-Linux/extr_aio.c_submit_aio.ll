; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_aio.c_submit_aio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_aio.c_submit_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_context = type { i32 }

@aio_24 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @submit_aio(i32 %0, i32 %1, i8* %2, i32 %3, i64 %4, i32 %5, %struct.aio_context* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.aio_context*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.aio_context* %6, %struct.aio_context** %15, align 8
  %16 = load i32, i32* %14, align 4
  %17 = load %struct.aio_context*, %struct.aio_context** %15, align 8
  %18 = getelementptr inbounds %struct.aio_context, %struct.aio_context* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* @aio_24, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %7
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load %struct.aio_context*, %struct.aio_context** %15, align 8
  %28 = call i32 @submit_aio_24(i32 %22, i32 %23, i8* %24, i32 %25, i64 %26, %struct.aio_context* %27)
  store i32 %28, i32* %8, align 4
  br label %37

29:                                               ; preds = %7
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.aio_context*, %struct.aio_context** %15, align 8
  %36 = call i32 @submit_aio_26(i32 %30, i32 %31, i8* %32, i32 %33, i64 %34, %struct.aio_context* %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %29, %21
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @submit_aio_24(i32, i32, i8*, i32, i64, %struct.aio_context*) #1

declare dso_local i32 @submit_aio_26(i32, i32, i8*, i32, i64, %struct.aio_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
