; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slb.c_esids_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slb.c_esids_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_FTR_1T_SEGMENT = common dso_local global i32 0, align 4
@SID_SHIFT_1T = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @esids_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esids_match(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @CPU_FTR_1T_SEGMENT, align 4
  %8 = call i32 @cpu_has_feature(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @GET_ESID(i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @GET_ESID(i64 %13)
  %15 = icmp eq i64 %12, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @SID_SHIFT_1T, align 8
  %20 = lshr i64 %18, %19
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @SID_SHIFT_1T, align 8
  %25 = lshr i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add nsw i32 %22, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %17
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @GET_ESID(i64 %32)
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @GET_ESID(i64 %34)
  %36 = icmp eq i64 %33, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %17
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %49

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @GET_ESID_1T(i64 %43)
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @GET_ESID_1T(i64 %45)
  %47 = icmp eq i64 %44, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %41, %31, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i64 @GET_ESID(i64) #1

declare dso_local i64 @GET_ESID_1T(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
