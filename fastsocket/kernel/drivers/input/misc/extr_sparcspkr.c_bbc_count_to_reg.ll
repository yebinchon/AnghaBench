; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_sparcspkr.c_bbc_count_to_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_sparcspkr.c_bbc_count_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_beep_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bbc_beep_info*, i32)* @bbc_count_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbc_count_to_reg(%struct.bbc_beep_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bbc_beep_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bbc_beep_info* %0, %struct.bbc_beep_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bbc_beep_info*, %struct.bbc_beep_info** %4, align 8
  %10 = getelementptr inbounds %struct.bbc_beep_info, %struct.bbc_beep_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = lshr i32 %17, 20
  %19 = icmp ule i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 262144, i32* %3, align 4
  br label %46

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = lshr i32 %23, 12
  %25 = icmp uge i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1024, i32* %3, align 4
  br label %46

27:                                               ; preds = %21
  store i32 262144, i32* %6, align 4
  store i32 19, i32* %8, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 11
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = lshr i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = lshr i32 %35, %36
  %38 = icmp ule i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  br label %28

44:                                               ; preds = %39, %28
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %26, %20, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
