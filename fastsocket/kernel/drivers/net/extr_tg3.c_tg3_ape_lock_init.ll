; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_lock_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_lock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@ASIC_REV_5761 = common dso_local global i64 0, align 8
@TG3_APE_LOCK_GRANT = common dso_local global i32 0, align 4
@TG3_APE_PER_LOCK_GRANT = common dso_local global i32 0, align 4
@TG3_APE_LOCK_GPIO = common dso_local global i32 0, align 4
@APE_LOCK_GRANT_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_ape_lock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_ape_lock_init(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %6 = load %struct.tg3*, %struct.tg3** %2, align 8
  %7 = call i64 @tg3_asic_rev(%struct.tg3* %6)
  %8 = load i64, i64* @ASIC_REV_5761, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @TG3_APE_LOCK_GRANT, align 4
  store i32 %11, i32* %4, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @TG3_APE_PER_LOCK_GRANT, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %10
  store i32 131, i32* %3, align 4
  br label %15

15:                                               ; preds = %44, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @TG3_APE_LOCK_GPIO, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  switch i32 %20, label %23 [
    i32 131, label %21
    i32 130, label %21
    i32 129, label %21
    i32 128, label %21
  ]

21:                                               ; preds = %19, %19, %19, %19
  %22 = load i32, i32* @APE_LOCK_GRANT_DRIVER, align 4
  store i32 %22, i32* %5, align 4
  br label %36

23:                                               ; preds = %19
  %24 = load %struct.tg3*, %struct.tg3** %2, align 8
  %25 = getelementptr inbounds %struct.tg3, %struct.tg3* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @APE_LOCK_GRANT_DRIVER, align 4
  store i32 %29, i32* %5, align 4
  br label %35

30:                                               ; preds = %23
  %31 = load %struct.tg3*, %struct.tg3** %2, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %28
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.tg3*, %struct.tg3** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = mul nsw i32 4, %39
  %41 = add nsw i32 %38, %40
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @tg3_ape_write32(%struct.tg3* %37, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %15

47:                                               ; preds = %15
  ret void
}

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_ape_write32(%struct.tg3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
