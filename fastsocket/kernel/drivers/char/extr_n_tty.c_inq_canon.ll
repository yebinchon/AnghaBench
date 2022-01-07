; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_inq_canon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_inq_canon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i64*, i32, i32 }

@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@__DISABLED_CHAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tty_struct*)* @inq_canon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @inq_canon(%struct.tty_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %49, %12
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @test_bit(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @__DISABLED_CHAR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %36, %29
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %51, %53
  store i32 %54, i32* %6, align 4
  br label %25

55:                                               ; preds = %25
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %2, align 8
  br label %58

58:                                               ; preds = %55, %11
  %59 = load i64, i64* %2, align 8
  ret i64 %59
}

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
