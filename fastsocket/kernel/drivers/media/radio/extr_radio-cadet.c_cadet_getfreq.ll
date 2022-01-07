; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_getfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_getfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cadet*)* @cadet_getfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cadet_getfreq(%struct.cadet* %0) #0 {
  %2 = alloca %struct.cadet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.cadet*, %struct.cadet** %2, align 8
  %8 = call i32 @cadet_gettune(%struct.cadet* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.cadet*, %struct.cadet** %2, align 8
  %10 = getelementptr inbounds %struct.cadet, %struct.cadet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  store i32 12500, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 14
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load i32, i32* %4, align 4
  %35 = sub i32 %34, 10700000
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = mul i32 %36, 16
  %38 = udiv i32 %37, 1000000
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %1
  %40 = load %struct.cadet*, %struct.cadet** %2, align 8
  %41 = getelementptr inbounds %struct.cadet, %struct.cadet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 32767
  %47 = sub i32 %46, 2010
  %48 = mul i32 %47, 16
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @cadet_gettune(%struct.cadet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
