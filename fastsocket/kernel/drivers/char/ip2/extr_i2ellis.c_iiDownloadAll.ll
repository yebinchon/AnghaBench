; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2ellis.c_iiDownloadAll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2ellis.c_iiDownloadAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@II_STATE_READY = common dso_local global i64 0, align 8
@II_DOWN_BADSTATE = common dso_local global i32 0, align 4
@LOADWARE_BLOCK_SIZE = common dso_local global i64 0, align 8
@II_DOWN_OVER = common dso_local global i32 0, align 4
@II_DOWN_UNDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @iiDownloadAll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iiDownloadAll(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @II_STATE_READY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @II_DOWN_BADSTATE, align 4
  store i32 %17, i32* %5, align 4
  br label %48

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i64, i64* @LOADWARE_BLOCK_SIZE, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @iiDownloadBlock(%struct.TYPE_4__* %28, i32 %29, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %43 [
    i32 128, label %34
    i32 129, label %42
  ]

34:                                               ; preds = %22
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @II_DOWN_OVER, align 4
  br label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 128, %39 ]
  store i32 %41, i32* %5, align 4
  br label %48

42:                                               ; preds = %22
  br label %45

43:                                               ; preds = %22
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %42
  br label %19

46:                                               ; preds = %19
  %47 = load i32, i32* @II_DOWN_UNDER, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %43, %40, %16
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @iiDownloadBlock(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
