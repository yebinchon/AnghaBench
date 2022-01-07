; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_rng_device_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_rng_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zcrypt_rng_mutex = common dso_local global i32 0, align 4
@zcrypt_rng_device_count = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@zcrypt_rng_buffer = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@zcrypt_rng_buffer_index = common dso_local global i64 0, align 8
@zcrypt_rng_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @zcrypt_rng_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_rng_device_add() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @mutex_lock(i32* @zcrypt_rng_mutex)
  %4 = load i32, i32* @zcrypt_rng_device_count, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i64 @get_zeroed_page(i32 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** @zcrypt_rng_buffer, align 8
  %10 = load i32*, i32** @zcrypt_rng_buffer, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %6
  store i64 0, i64* @zcrypt_rng_buffer_index, align 8
  %16 = call i32 @hwrng_register(i32* @zcrypt_rng_dev)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %26

20:                                               ; preds = %15
  store i32 1, i32* @zcrypt_rng_device_count, align 4
  br label %24

21:                                               ; preds = %0
  %22 = load i32, i32* @zcrypt_rng_device_count, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @zcrypt_rng_device_count, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = call i32 @mutex_unlock(i32* @zcrypt_rng_mutex)
  store i32 0, i32* %1, align 4
  br label %33

26:                                               ; preds = %19
  %27 = load i32*, i32** @zcrypt_rng_buffer, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = call i32 @free_page(i64 %28)
  br label %30

30:                                               ; preds = %26, %12
  %31 = call i32 @mutex_unlock(i32* @zcrypt_rng_mutex)
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @hwrng_register(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
