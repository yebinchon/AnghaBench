; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_set_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reipl_capabilities = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@diag308_set_works = common dso_local global i32 0, align 4
@REIPL_METHOD_CCW_DIAG = common dso_local global i32 0, align 4
@reipl_method = common dso_local global i32 0, align 4
@MACHINE_IS_VM = common dso_local global i32 0, align 4
@REIPL_METHOD_CCW_VM = common dso_local global i32 0, align 4
@REIPL_METHOD_CCW_CIO = common dso_local global i32 0, align 4
@reipl_block_ccw = common dso_local global i32 0, align 4
@reipl_block_actual = common dso_local global i32 0, align 4
@REIPL_METHOD_FCP_RW_DIAG = common dso_local global i32 0, align 4
@REIPL_METHOD_FCP_RO_VM = common dso_local global i32 0, align 4
@REIPL_METHOD_FCP_RO_DIAG = common dso_local global i32 0, align 4
@reipl_block_fcp = common dso_local global i32 0, align 4
@REIPL_METHOD_FCP_DUMP = common dso_local global i32 0, align 4
@REIPL_METHOD_NSS_DIAG = common dso_local global i32 0, align 4
@REIPL_METHOD_NSS = common dso_local global i32 0, align 4
@reipl_block_nss = common dso_local global i32 0, align 4
@REIPL_METHOD_DEFAULT = common dso_local global i32 0, align 4
@reipl_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @reipl_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reipl_set_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @reipl_capabilities, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %60

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %56 [
    i32 132, label %13
    i32 131, label %28
    i32 130, label %43
    i32 129, label %45
    i32 128, label %54
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @diag308_set_works, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @REIPL_METHOD_CCW_DIAG, align 4
  store i32 %17, i32* @reipl_method, align 4
  br label %26

18:                                               ; preds = %13
  %19 = load i32, i32* @MACHINE_IS_VM, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @REIPL_METHOD_CCW_VM, align 4
  store i32 %22, i32* @reipl_method, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @REIPL_METHOD_CCW_CIO, align 4
  store i32 %24, i32* @reipl_method, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* @reipl_block_ccw, align 4
  store i32 %27, i32* @reipl_block_actual, align 4
  br label %58

28:                                               ; preds = %11
  %29 = load i32, i32* @diag308_set_works, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @REIPL_METHOD_FCP_RW_DIAG, align 4
  store i32 %32, i32* @reipl_method, align 4
  br label %41

33:                                               ; preds = %28
  %34 = load i32, i32* @MACHINE_IS_VM, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @REIPL_METHOD_FCP_RO_VM, align 4
  store i32 %37, i32* @reipl_method, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @REIPL_METHOD_FCP_RO_DIAG, align 4
  store i32 %39, i32* @reipl_method, align 4
  br label %40

40:                                               ; preds = %38, %36
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* @reipl_block_fcp, align 4
  store i32 %42, i32* @reipl_block_actual, align 4
  br label %58

43:                                               ; preds = %11
  %44 = load i32, i32* @REIPL_METHOD_FCP_DUMP, align 4
  store i32 %44, i32* @reipl_method, align 4
  br label %58

45:                                               ; preds = %11
  %46 = load i32, i32* @diag308_set_works, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @REIPL_METHOD_NSS_DIAG, align 4
  store i32 %49, i32* @reipl_method, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @REIPL_METHOD_NSS, align 4
  store i32 %51, i32* @reipl_method, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* @reipl_block_nss, align 4
  store i32 %53, i32* @reipl_block_actual, align 4
  br label %58

54:                                               ; preds = %11
  %55 = load i32, i32* @REIPL_METHOD_DEFAULT, align 4
  store i32 %55, i32* @reipl_method, align 4
  br label %58

56:                                               ; preds = %11
  %57 = call i32 (...) @BUG()
  br label %58

58:                                               ; preds = %56, %54, %52, %43, %41, %26
  %59 = load i32, i32* %3, align 4
  store i32 %59, i32* @reipl_type, align 4
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %8
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
