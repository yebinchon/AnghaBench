; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_run_guest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_run_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lguest_fd = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Notify on address %#lx\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ERESTART = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Running guest failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_guest to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @run_guest() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i32, i32* @lguest_fd, align 4
  %6 = load i32, i32* @cpu_id, align 4
  %7 = call i32 (i32, ...) @pread(i32 %5, i64* %1, i64 8, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp eq i64 %9, 8
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @verbose(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @handle_output(i64 %14)
  br label %38

16:                                               ; preds = %4
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENOENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = bitcast [1024 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 1024, i1 false)
  %22 = load i32, i32* @lguest_fd, align 4
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %24 = load i32, i32* @cpu_id, align 4
  %25 = call i32 (i32, ...) @pread(i32 %22, i8* %23, i64 1023, i32 %24)
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %37

28:                                               ; preds = %16
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ERESTART, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @restart_guest()
  br label %36

34:                                               ; preds = %28
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %11
  br label %4
}

declare dso_local i32 @pread(i32, ...) #1

declare dso_local i32 @verbose(i8*, i64) #1

declare dso_local i32 @handle_output(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @restart_guest(...) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
