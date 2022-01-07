; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_uengine.c_ixp2000_uengine_load_microcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_uengine.c_ixp2000_uengine_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USTORE_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixp2000_uengine_load_microcode(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @USTORE_ADDRESS, align 4
  %12 = call i32 @ixp2000_uengine_csr_write(i32 %10, i32 %11, i32 -2147483648)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %51, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 32
  %23 = load i64*, i64** %5, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 24
  %28 = or i32 %22, %27
  %29 = load i64*, i64** %5, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 16
  %34 = or i32 %28, %33
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 3
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 8
  %40 = or i32 %34, %39
  %41 = load i64*, i64** %5, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 4
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = or i32 %40, %44
  store i32 %45, i32* %8, align 4
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 5
  store i64* %47, i64** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ustore_write(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %17
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %13

54:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @USTORE_ADDRESS, align 4
  %61 = call i32 @ixp2000_uengine_csr_read(i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, -2147483648
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %71

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @ustore_write(i32 %66, i32 787200)
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %55

71:                                               ; preds = %64, %55
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @USTORE_ADDRESS, align 4
  %74 = call i32 @ixp2000_uengine_csr_write(i32 %72, i32 %73, i32 0)
  ret void
}

declare dso_local i32 @ixp2000_uengine_csr_write(i32, i32, i32) #1

declare dso_local i32 @ustore_write(i32, i32) #1

declare dso_local i32 @ixp2000_uengine_csr_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
