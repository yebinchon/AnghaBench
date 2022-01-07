; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nwflash.c_get_flash_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nwflash.c_get_flash_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLASH_BASE = common dso_local global i64 0, align 8
@KFLASH_ID4 = common dso_local global i32 0, align 4
@KFLASH_SIZE4 = common dso_local global i32 0, align 4
@gbFlashSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_flash_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_flash_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @kick_open()
  %4 = call i32 @inb(i32 128)
  store volatile i32 %4, i32* %2, align 4
  %5 = load i64, i64* @FLASH_BASE, align 8
  %6 = add nsw i64 %5, 32768
  %7 = inttoptr i64 %6 to i8*
  store volatile i8 -112, i8* %7, align 1
  %8 = call i32 @udelay(i32 15)
  %9 = load i64, i64* @FLASH_BASE, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load volatile i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  store volatile i32 %12, i32* %1, align 4
  %13 = call i32 @inb(i32 128)
  store volatile i32 %13, i32* %2, align 4
  %14 = load volatile i32, i32* %1, align 4
  %15 = icmp eq i32 %14, 176
  br i1 %15, label %16, label %22

16:                                               ; preds = %0
  %17 = load i64, i64* @FLASH_BASE, align 8
  %18 = add nsw i64 %17, 2
  %19 = inttoptr i64 %18 to i8*
  %20 = load volatile i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  store volatile i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %0
  %23 = load i64, i64* @FLASH_BASE, align 8
  %24 = add nsw i64 %23, 1
  %25 = inttoptr i64 %24 to i8*
  %26 = load volatile i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  store volatile i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load volatile i32, i32* %1, align 4
  %30 = shl i32 %29, 8
  %31 = load volatile i32, i32* %2, align 4
  %32 = add i32 %31, %30
  store volatile i32 %32, i32* %2, align 4
  %33 = load i64, i64* @FLASH_BASE, align 8
  %34 = add nsw i64 %33, 32768
  %35 = inttoptr i64 %34 to i8*
  store volatile i8 -1, i8* %35, align 1
  %36 = load volatile i32, i32* %2, align 4
  %37 = load volatile i32, i32* @KFLASH_ID4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @KFLASH_SIZE4, align 4
  store i32 %40, i32* @gbFlashSize, align 4
  br label %41

41:                                               ; preds = %39, %28
  %42 = load volatile i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @kick_open(...) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
