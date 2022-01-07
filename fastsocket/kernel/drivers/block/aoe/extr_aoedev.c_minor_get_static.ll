; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_minor_get_static.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_minor_get_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"aoe: %s %d slots per shelf\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"static minor device numbers support only\00", align 1
@N_DEVS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"aoe: %s with e%ld.%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot use static minor device numbers\00", align 1
@used_minors_lock = common dso_local global i32 0, align 4
@used_minors = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"aoe: %s %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"existing device already has static minor number\00", align 1
@AOE_PARTITIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @minor_get_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minor_get_static(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 16
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 (i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 16)
  store i32 -1, i32* %9, align 4
  br label %47

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 16
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @N_DEVS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %23, i32 %24)
  store i32 -1, i32* %9, align 4
  br label %47

26:                                               ; preds = %14
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @spin_lock_irqsave(i32* @used_minors_lock, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @used_minors, align 4
  %31 = call i64 @test_bit(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i8*, i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %9, align 4
  br label %40

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @used_minors, align 4
  %39 = call i32 @set_bit(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @spin_unlock_irqrestore(i32* @used_minors_lock, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @AOE_PARTITIONS, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %22, %12
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @pr_err(i8*, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
