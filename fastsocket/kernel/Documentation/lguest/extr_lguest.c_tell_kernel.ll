; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_tell_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_tell_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LHREQ_INITIALIZE = common dso_local global i64 0, align 8
@guest_base = common dso_local global i64 0, align 8
@guest_limit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Guest: %p - %p (%#lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/lguest\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@lguest_fd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Writing to /dev/lguest\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tell_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tell_kernel(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [4 x i64], align 16
  store i64 %0, i64* %2, align 8
  %4 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %5 = load i64, i64* @LHREQ_INITIALIZE, align 8
  store i64 %5, i64* %4, align 8
  %6 = getelementptr inbounds i64, i64* %4, i64 1
  %7 = load i64, i64* @guest_base, align 8
  store i64 %7, i64* %6, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 1
  %9 = load i64, i64* @guest_limit, align 8
  %10 = call i64 (...) @getpagesize()
  %11 = udiv i64 %9, %10
  store i64 %11, i64* %8, align 8
  %12 = getelementptr inbounds i64, i64* %8, i64 1
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i64, i64* @guest_base, align 8
  %15 = load i64, i64* @guest_base, align 8
  %16 = load i64, i64* @guest_limit, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* @guest_limit, align 8
  %19 = call i32 @verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %17, i64 %18)
  %20 = load i32, i32* @O_RDWR, align 4
  %21 = call i32 @open_or_die(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 %21, i32* @lguest_fd, align 4
  %22 = load i32, i32* @lguest_fd, align 4
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %24 = call i64 @write(i32 %22, i64* %23, i32 32)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %1
  ret void
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @verbose(i8*, i64, i64, i64) #1

declare dso_local i32 @open_or_die(i8*, i32) #1

declare dso_local i64 @write(i32, i64*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
