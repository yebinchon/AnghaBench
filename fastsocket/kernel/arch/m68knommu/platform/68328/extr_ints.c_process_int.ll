; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68328/extr_ints.c_process_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68328/extr_ints.c_process_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@ISR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_int(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %8 = load i64, i64* @ISR, align 8
  store i64 %8, i64* %7, align 8
  br label %9

9:                                                ; preds = %67, %2
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %76

12:                                               ; preds = %9
  %13 = load i64, i64* %7, align 8
  %14 = and i64 %13, 65535
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i64, i64* %7, align 8
  %18 = and i64 %17, 255
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %21, 15
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %26

25:                                               ; preds = %20
  store i32 16, i32* %6, align 4
  store i32 4, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %24
  br label %34

27:                                               ; preds = %16
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %28, 3840
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 256, i32* %6, align 4
  store i32 8, i32* %5, align 4
  br label %33

32:                                               ; preds = %27
  store i32 4096, i32* %6, align 4
  store i32 12, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %26
  br label %54

35:                                               ; preds = %12
  %36 = load i64, i64* %7, align 8
  %37 = and i64 %36, 16711680
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = and i64 %40, 983040
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 65536, i32* %6, align 4
  store i32 16, i32* %5, align 4
  br label %45

44:                                               ; preds = %39
  store i32 1048576, i32* %6, align 4
  store i32 20, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43
  br label %53

46:                                               ; preds = %35
  %47 = load i64, i64* %7, align 8
  %48 = and i64 %47, 251658240
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 16777216, i32* %6, align 4
  store i32 24, i32* %5, align 4
  br label %52

51:                                               ; preds = %46
  store i32 268435456, i32* %6, align 4
  store i32 28, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %45
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %62, %54
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %7, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %55

67:                                               ; preds = %55
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %70 = call i32 @do_IRQ(i32 %68, %struct.pt_regs* %69)
  %71 = load i32, i32* %6, align 4
  %72 = xor i32 %71, -1
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %7, align 8
  %75 = and i64 %74, %73
  store i64 %75, i64* %7, align 8
  br label %9

76:                                               ; preds = %9
  ret void
}

declare dso_local i32 @do_IRQ(i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
