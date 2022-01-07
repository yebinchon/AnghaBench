; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c__convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c__convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i8* }

@.str = private unnamed_addr constant [26 x i8] c"Bad iovec size %zu for %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Bad alignment %p for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iovec*, i64, i64, i8*)* @_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_convert(%struct.iovec* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.iovec* %0, %struct.iovec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.iovec*, %struct.iovec** %5, align 8
  %10 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.iovec*, %struct.iovec** %5, align 8
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  br label %21

21:                                               ; preds = %14, %4
  %22 = load %struct.iovec*, %struct.iovec** %5, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = urem i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.iovec*, %struct.iovec** %5, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %33)
  br label %35

35:                                               ; preds = %29, %21
  %36 = load %struct.iovec*, %struct.iovec** %5, align 8
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  ret i8* %38
}

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
