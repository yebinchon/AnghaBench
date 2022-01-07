; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nvram.c_pc_check_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nvram.c_pc_check_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PC_CKS_RANGE_START = common dso_local global i32 0, align 4
@PC_CKS_RANGE_END = common dso_local global i32 0, align 4
@PC_CKS_LOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pc_check_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pc_check_checksum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 0, i16* %2, align 2
  %4 = load i32, i32* @PC_CKS_RANGE_START, align 4
  store i32 %4, i32* %1, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @PC_CKS_RANGE_END, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @__nvram_read_byte(i32 %10)
  %12 = load i16, i16* %2, align 2
  %13 = zext i16 %12 to i32
  %14 = add nsw i32 %13, %11
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %2, align 2
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %5

19:                                               ; preds = %5
  %20 = load i32, i32* @PC_CKS_LOC, align 4
  %21 = call i32 @__nvram_read_byte(i32 %20)
  %22 = shl i32 %21, 8
  %23 = load i32, i32* @PC_CKS_LOC, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @__nvram_read_byte(i32 %24)
  %26 = or i32 %22, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %3, align 2
  %28 = load i16, i16* %2, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 65535
  %31 = load i16, i16* %3, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %30, %32
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @__nvram_read_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
