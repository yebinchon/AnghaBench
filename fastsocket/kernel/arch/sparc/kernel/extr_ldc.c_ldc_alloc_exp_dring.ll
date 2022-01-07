; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_alloc_exp_dring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_alloc_exp_dring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32 }
%struct.ldc_trans_cookie = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ldc_alloc_exp_dring(%struct.ldc_channel* %0, i32 %1, %struct.ldc_trans_cookie* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ldc_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ldc_trans_cookie*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ldc_trans_cookie* %2, %struct.ldc_trans_cookie** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = zext i32 %14 to i64
  %16 = and i64 %15, 7
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %6, align 8
  br label %52

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 %23, i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i8* @ERR_PTR(i32 %30)
  store i8* %31, i8** %6, align 8
  br label %52

32:                                               ; preds = %22
  %33 = load %struct.ldc_channel*, %struct.ldc_channel** %7, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ldc_trans_cookie*, %struct.ldc_trans_cookie** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ldc_map_single(%struct.ldc_channel* %33, i8* %34, i32 %35, %struct.ldc_trans_cookie* %36, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @kfree(i8* %44)
  %46 = load i32, i32* %13, align 4
  %47 = call i8* @ERR_PTR(i32 %46)
  store i8* %47, i8** %6, align 8
  br label %52

48:                                               ; preds = %32
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i8*, i8** %12, align 8
  store i8* %51, i8** %6, align 8
  br label %52

52:                                               ; preds = %48, %43, %28, %18
  %53 = load i8*, i8** %6, align 8
  ret i8* %53
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ldc_map_single(%struct.ldc_channel*, i8*, i32, %struct.ldc_trans_cookie*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
