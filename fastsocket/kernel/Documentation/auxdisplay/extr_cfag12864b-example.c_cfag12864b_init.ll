; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_cfag12864b_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_cfag12864b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@cfag12864b_fd = common dso_local global i32 0, align 4
@CFAG12864B_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@cfag12864b_mem = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cfag12864b_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfag12864b_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i32, i32* @O_RDWR, align 4
  %6 = call i32 @open(i8* %4, i32 %5)
  store i32 %6, i32* @cfag12864b_fd, align 4
  %7 = load i32, i32* @cfag12864b_fd, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  %11 = load i32, i32* @CFAG12864B_SIZE, align 4
  %12 = load i32, i32* @PROT_READ, align 4
  %13 = load i32, i32* @PROT_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MAP_SHARED, align 4
  %16 = load i32, i32* @cfag12864b_fd, align 4
  %17 = call i64 @mmap(i32 0, i32 %11, i32 %14, i32 %15, i32 %16, i32 0)
  store i64 %17, i64* @cfag12864b_mem, align 8
  %18 = load i64, i64* @cfag12864b_mem, align 8
  %19 = load i64, i64* @MAP_FAILED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load i32, i32* @cfag12864b_fd, align 4
  %23 = call i32 @close(i32 %22)
  store i32 -2, i32* %2, align 4
  br label %25

24:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
