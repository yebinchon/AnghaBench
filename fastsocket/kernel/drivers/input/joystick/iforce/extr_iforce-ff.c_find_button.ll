; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-ff.c_find_button.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-ff.c_find_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.iforce*, i16)* @find_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @find_button(%struct.iforce* %0, i16 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.iforce*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.iforce* %0, %struct.iforce** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load %struct.iforce*, %struct.iforce** %4, align 8
  %9 = getelementptr inbounds %struct.iforce, %struct.iforce* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i16*, i16** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %12, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %7
  %20 = load %struct.iforce*, %struct.iforce** %4, align 8
  %21 = getelementptr inbounds %struct.iforce, %struct.iforce* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i16*, i16** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %24, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* %5, align 2
  %31 = sext i16 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %3, align 1
  br label %42

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %7

41:                                               ; preds = %7
  store i8 0, i8* %3, align 1
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i8, i8* %3, align 1
  ret i8 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
