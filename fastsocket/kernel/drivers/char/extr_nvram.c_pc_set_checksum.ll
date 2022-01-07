; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nvram.c_pc_set_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nvram.c_pc_set_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PC_CKS_RANGE_START = common dso_local global i32 0, align 4
@PC_CKS_RANGE_END = common dso_local global i32 0, align 4
@PC_CKS_LOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pc_set_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc_set_checksum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  store i16 0, i16* %2, align 2
  %3 = load i32, i32* @PC_CKS_RANGE_START, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @PC_CKS_RANGE_END, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @__nvram_read_byte(i32 %9)
  %11 = load i16, i16* %2, align 2
  %12 = zext i16 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i16
  store i16 %14, i16* %2, align 2
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %4

18:                                               ; preds = %4
  %19 = load i16, i16* %2, align 2
  %20 = zext i16 %19 to i32
  %21 = ashr i32 %20, 8
  %22 = trunc i32 %21 to i16
  %23 = load i64, i64* @PC_CKS_LOC, align 8
  %24 = call i32 @__nvram_write_byte(i16 zeroext %22, i64 %23)
  %25 = load i16, i16* %2, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i16
  %29 = load i64, i64* @PC_CKS_LOC, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @__nvram_write_byte(i16 zeroext %28, i64 %30)
  ret void
}

declare dso_local i64 @__nvram_read_byte(i32) #1

declare dso_local i32 @__nvram_write_byte(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
