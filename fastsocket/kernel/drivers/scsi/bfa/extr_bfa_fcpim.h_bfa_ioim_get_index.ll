; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.h_bfa_ioim_get_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.h_bfa_ioim_get_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BFA_IOBUCKET_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @bfa_ioim_get_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bfa_ioim_get_index(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = icmp uge i64 %5, 4194304
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @BFA_IOBUCKET_MAX, align 8
  %9 = sub i64 %8, 1
  store i64 %9, i64* %2, align 8
  br label %59

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = lshr i64 %11, 8
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp uge i64 %13, 65536
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = lshr i64 %16, 16
  store i64 %17, i64* %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 16
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i64, i64* %3, align 8
  %22 = icmp uge i64 %21, 256
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* %3, align 8
  %25 = lshr i64 %24, 8
  store i64 %25, i64* %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 8
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i64, i64* %3, align 8
  %30 = icmp uge i64 %29, 16
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i64, i64* %3, align 8
  %33 = lshr i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i64, i64* %3, align 8
  %38 = icmp uge i64 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i64, i64* %3, align 8
  %41 = lshr i64 %40, 2
  store i64 %41, i64* %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i64, i64* %3, align 8
  %46 = icmp uge i64 %45, 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* %3, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 0, %53 ], [ %55, %54 ]
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %2, align 8
  br label %59

59:                                               ; preds = %56, %7
  %60 = load i64, i64* %2, align 8
  ret i64 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
