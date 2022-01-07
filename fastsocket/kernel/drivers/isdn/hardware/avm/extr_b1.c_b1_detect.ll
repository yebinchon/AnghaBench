; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_b1.c_b1_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_b1.c_b1_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B1_INSTAT = common dso_local global i64 0, align 8
@B1_OUTSTAT = common dso_local global i64 0, align 8
@avm_m1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b1_detect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = load i64, i64* @B1_INSTAT, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @inb(i64 %11)
  %13 = and i32 %12, 252
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* @B1_OUTSTAT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @inb(i64 %19)
  %21 = and i32 %20, 252
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %2
  store i32 1, i32* %3, align 4
  br label %96

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* @B1_INSTAT, align 8
  %27 = call i32 @b1outp(i32 %25, i64 %26, i32 2)
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* @B1_INSTAT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inb(i64 %31)
  %33 = and i32 %32, 254
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 2, i32* %3, align 4
  br label %96

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* @B1_INSTAT, align 8
  %39 = call i32 @b1outp(i32 %37, i64 %38, i32 0)
  %40 = load i32, i32* %4, align 4
  %41 = load i64, i64* @B1_OUTSTAT, align 8
  %42 = call i32 @b1outp(i32 %40, i64 %41, i32 0)
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* @B1_INSTAT, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @inb(i64 %46)
  %48 = and i32 %47, 254
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @B1_OUTSTAT, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @inb(i64 %54)
  %56 = and i32 %55, 254
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50, %36
  store i32 3, i32* %3, align 4
  br label %96

59:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %79, %59
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 10
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @b1_set_test_bit(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @b1_get_test_bit(i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i32 4, i32* %3, align 4
  br label %96

74:                                               ; preds = %63
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %60

82:                                               ; preds = %60
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @avm_m1, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %96

87:                                               ; preds = %82
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @B1_STAT1(i32 %89)
  %91 = call i32 @b1_rd_reg(i32 %88, i32 %90)
  %92 = and i32 %91, 15
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 5, i32* %3, align 4
  br label %96

95:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %94, %86, %73, %58, %35, %23
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @b1outp(i32, i64, i32) #1

declare dso_local i32 @b1_set_test_bit(i32, i32, i32) #1

declare dso_local i32 @b1_get_test_bit(i32, i32) #1

declare dso_local i32 @b1_rd_reg(i32, i32) #1

declare dso_local i32 @B1_STAT1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
