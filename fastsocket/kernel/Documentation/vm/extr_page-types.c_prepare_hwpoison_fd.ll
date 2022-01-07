; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_prepare_hwpoison_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_prepare_hwpoison_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_hwpoison = common dso_local global i64 0, align 8
@hwpoison_inject_fd = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s/corrupt-pfn\00", align 1
@hwpoison_debug_fs = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@opt_unpoison = common dso_local global i64 0, align 8
@hwpoison_forget_fd = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/unpoison-pfn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prepare_hwpoison_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_hwpoison_fd() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = load i64, i64* @opt_hwpoison, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load i8*, i8** @hwpoison_inject_fd, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %9 = load i8*, i8** @hwpoison_debug_fs, align 8
  %10 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %12 = load i32, i32* @O_WRONLY, align 4
  %13 = call i8* @checked_open(i8* %11, i32 %12)
  store i8* %13, i8** @hwpoison_inject_fd, align 8
  br label %14

14:                                               ; preds = %7, %4, %0
  %15 = load i64, i64* @opt_unpoison, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i8*, i8** @hwpoison_forget_fd, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %22 = load i8*, i8** @hwpoison_debug_fs, align 8
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %25 = load i32, i32* @O_WRONLY, align 4
  %26 = call i8* @checked_open(i8* %24, i32 %25)
  store i8* %26, i8** @hwpoison_forget_fd, align 8
  br label %27

27:                                               ; preds = %20, %17, %14
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @checked_open(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
