; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_nibble_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_nibble_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i8*, i32)* @imm_nibble_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_nibble_in(i16 zeroext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i16, i16* %4, align 2
  %10 = call i32 @w_ctr(i16 zeroext %9, i32 4)
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %36, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i16, i16* %4, align 2
  %17 = call i32 @w_ctr(i16 zeroext %16, i32 6)
  %18 = load i16, i16* %4, align 2
  %19 = call i32 @r_str(i16 zeroext %18)
  %20 = and i32 %19, 240
  %21 = ashr i32 %20, 4
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = load i16, i16* %4, align 2
  %24 = call i32 @w_ctr(i16 zeroext %23, i32 5)
  %25 = load i16, i16* %4, align 2
  %26 = call i32 @r_str(i16 zeroext %25)
  %27 = and i32 %26, 240
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  store i8 %31, i8* %32, align 1
  %34 = load i16, i16* %4, align 2
  %35 = call i32 @w_ctr(i16 zeroext %34, i32 4)
  br label %36

36:                                               ; preds = %15
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  br label %12

39:                                               ; preds = %12
  ret i32 1
}

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local i32 @r_str(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
