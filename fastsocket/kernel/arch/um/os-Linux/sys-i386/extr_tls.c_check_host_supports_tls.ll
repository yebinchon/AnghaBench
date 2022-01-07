; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/sys-i386/extr_tls.c_check_host_supports_tls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/sys-i386/extr_tls.c_check_host_supports_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GDT_ENTRY_TLS_MIN_I386 = common dso_local global i32 0, align 4
@GDT_ENTRY_TLS_MIN_X86_64 = common dso_local global i32 0, align 4
@__NR_get_thread_area = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_host_supports_tls(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %9 = load i32, i32* @GDT_ENTRY_TLS_MIN_I386, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @GDT_ENTRY_TLS_MIN_X86_64, align 4
  store i32 %11, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %46, %2
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @__NR_get_thread_area, align 4
  %24 = call i64 @syscall(i32 %23, %struct.TYPE_3__* %7)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %3, align 8
  store i32 1, i32* %32, align 4
  br label %51

33:                                               ; preds = %17
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EINVAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %46

38:                                               ; preds = %33
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOSYS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32*, i32** %3, align 8
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44
  br label %51

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %12

49:                                               ; preds = %12
  %50 = load i32*, i32** %3, align 8
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %45, %26
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @syscall(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
