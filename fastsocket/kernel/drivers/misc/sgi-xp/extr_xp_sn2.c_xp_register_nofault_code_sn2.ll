; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xp_sn2.c_xp_register_nofault_code_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xp_sn2.c_xp_register_nofault_code_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xp_nofault_PIOR = common dso_local global i64 0, align 8
@xp_error_PIOR = common dso_local global i64 0, align 8
@xp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can't register nofault code, error=%d\0A\00", align 1
@xpSalError = common dso_local global i32 0, align 4
@SH1_IPI_ACCESS = common dso_local global i32 0, align 4
@xp_nofault_PIOR_target = common dso_local global i32 0, align 4
@SH2_IPI_ACCESS0 = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xp_register_nofault_code_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xp_register_nofault_code_sn2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @xp_nofault_PIOR, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* @xp_error_PIOR, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @sn_register_nofault_code(i32 %11, i32 %12, i32 %13, i32 1, i32 1)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load i32, i32* @xp, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @xpSalError, align 4
  store i32 %21, i32* %1, align 4
  br label %35

22:                                               ; preds = %0
  %23 = call i64 (...) @is_shub1()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @SH1_IPI_ACCESS, align 4
  store i32 %26, i32* @xp_nofault_PIOR_target, align 4
  br label %33

27:                                               ; preds = %22
  %28 = call i64 (...) @is_shub2()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @SH2_IPI_ACCESS0, align 4
  store i32 %31, i32* @xp_nofault_PIOR_target, align 4
  br label %32

32:                                               ; preds = %30, %27
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* @xpSuccess, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %33, %17
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @sn_register_nofault_code(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @is_shub1(...) #1

declare dso_local i64 @is_shub2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
