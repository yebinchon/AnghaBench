; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_check_offset_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_check_offset_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_iso*, i32, i16, i32*, i16*)* @hpsb_iso_check_offset_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsb_iso_check_offset_len(%struct.hpsb_iso* %0, i32 %1, i16 zeroext %2, i32* %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpsb_iso*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32*, align 8
  %11 = alloca i16*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store i32* %3, i32** %10, align 8
  store i16* %4, i16** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %14 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp uge i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %47

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load i16, i16* %9, align 2
  %23 = zext i16 %22 to i32
  %24 = add i32 %21, %23
  %25 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %26 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %47

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = load i16, i16* %9, align 2
  %35 = zext i16 %34 to i32
  %36 = add i32 %33, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %47

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i16, i16* %9, align 2
  %46 = load i16*, i16** %11, align 8
  store i16 %45, i16* %46, align 2
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %39, %29, %17
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
