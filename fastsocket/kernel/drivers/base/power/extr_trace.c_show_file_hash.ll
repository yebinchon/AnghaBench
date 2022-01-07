; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_trace.c_show_file_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_trace.c_show_file_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__tracedata_start = common dso_local global i8 0, align 1
@__tracedata_end = common dso_local global i8 0, align 1
@FILEHASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"  hash matches %s:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @show_file_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_file_hash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i8* @__tracedata_start, i8** %4, align 8
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ult i8* %9, @__tracedata_end
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i16*
  %14 = load i16, i16* %13, align 2
  store i16 %14, i16* %5, align 2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  %17 = bitcast i8* %16 to i8**
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load i16, i16* %5, align 2
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @FILEHASH, align 4
  %22 = call i32 @hash_string(i16 zeroext %19, i8* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %33

27:                                               ; preds = %11
  %28 = load i8*, i8** %6, align 8
  %29 = load i16, i16* %5, align 2
  %30 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %28, i16 zeroext %29)
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %26
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 10
  store i8* %35, i8** %4, align 8
  br label %8

36:                                               ; preds = %8
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @hash_string(i16 zeroext, i8*, i32) #1

declare dso_local i32 @printk(i8*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
