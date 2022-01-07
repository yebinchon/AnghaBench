; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_io_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_io_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_thread_req = type { i32 }

@kernel_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"io_thread - read failed, fd = %d, err = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"io_thread - short read, fd = %d, length = %d\0A\00", align 1
@io_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"io_thread - write failed, fd = %d, err = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.io_thread_req*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @ignore_sigwinch_sig()
  br label %6

6:                                                ; preds = %1, %24, %40
  %7 = load i32, i32* @kernel_fd, align 4
  %8 = call i32 @os_read_file(i32 %7, %struct.io_thread_req** %3, i32 8)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 8
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* @kernel_fd, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  br label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @kernel_fd, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %15
  br label %6

25:                                               ; preds = %6
  %26 = load i32, i32* @io_count, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @io_count, align 4
  %28 = load %struct.io_thread_req*, %struct.io_thread_req** %3, align 8
  %29 = call i32 @do_io(%struct.io_thread_req* %28)
  %30 = load i32, i32* @kernel_fd, align 4
  %31 = call i32 @os_write_file(i32 %30, %struct.io_thread_req** %3, i32 8)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 8
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* @kernel_fd, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %25
  br label %6
}

declare dso_local i32 @ignore_sigwinch_sig(...) #1

declare dso_local i32 @os_read_file(i32, %struct.io_thread_req**, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @do_io(%struct.io_thread_req*) #1

declare dso_local i32 @os_write_file(i32, %struct.io_thread_req**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
