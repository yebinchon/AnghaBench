; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ppa.c_ppa_nibble_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ppa.c_ppa_nibble_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i8*, i32)* @ppa_nibble_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppa_nibble_in(i16 zeroext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i16 %0, i16* %4, align 2
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i16, i16* %4, align 2
  %13 = call i32 @w_ctr(i16 zeroext %12, i32 4)
  %14 = load i16, i16* %4, align 2
  %15 = call i32 @r_str(i16 zeroext %14)
  %16 = and i32 %15, 240
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %7, align 1
  %18 = load i16, i16* %4, align 2
  %19 = call i32 @w_ctr(i16 zeroext %18, i32 6)
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = load i16, i16* %4, align 2
  %23 = call i32 @r_str(i16 zeroext %22)
  %24 = and i32 %23, 240
  %25 = ashr i32 %24, 4
  %26 = or i32 %21, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i8 %27, i8* %28, align 1
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  br label %8

33:                                               ; preds = %8
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
