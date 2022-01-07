; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teles0.c_reset_teles0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teles0.c_reset_teles0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*)* @reset_teles0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_teles0(%struct.IsdnCardState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %1
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %23 [
    i32 2, label %15
    i32 9, label %15
    i32 3, label %16
    i32 4, label %17
    i32 5, label %18
    i32 10, label %19
    i32 11, label %20
    i32 12, label %21
    i32 15, label %22
  ]

15:                                               ; preds = %11, %11
  store i32 0, i32* %4, align 4
  br label %24

16:                                               ; preds = %11
  store i32 2, i32* %4, align 4
  br label %24

17:                                               ; preds = %11
  store i32 4, i32* %4, align 4
  br label %24

18:                                               ; preds = %11
  store i32 6, i32* %4, align 4
  br label %24

19:                                               ; preds = %11
  store i32 8, i32* %4, align 4
  br label %24

20:                                               ; preds = %11
  store i32 10, i32* %4, align 4
  br label %24

21:                                               ; preds = %11
  store i32 12, i32* %4, align 4
  br label %24

22:                                               ; preds = %11
  store i32 14, i32* %4, align 4
  br label %24

23:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %84

24:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 9
  %31 = and i32 %30, 240
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @byteout(i64 %39, i32 %40)
  %42 = load i32, i32* @HZ, align 4
  %43 = sdiv i32 %42, 10
  %44 = add nsw i32 %43, 1
  %45 = call i32 @HZDELAY(i32 %44)
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, 1
  %54 = call i32 @byteout(i64 %51, i32 %53)
  %55 = load i32, i32* @HZ, align 4
  %56 = sdiv i32 %55, 10
  %57 = add nsw i32 %56, 1
  %58 = call i32 @HZDELAY(i32 %57)
  br label %59

59:                                               ; preds = %24, %1
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %61 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 128
  %66 = call i32 @writeb(i32 0, i64 %65)
  %67 = call i32 (...) @mb()
  %68 = load i32, i32* @HZ, align 4
  %69 = sdiv i32 %68, 5
  %70 = add nsw i32 %69, 1
  %71 = call i32 @HZDELAY(i32 %70)
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %73 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 128
  %78 = call i32 @writeb(i32 1, i64 %77)
  %79 = call i32 (...) @mb()
  %80 = load i32, i32* @HZ, align 4
  %81 = sdiv i32 %80, 5
  %82 = add nsw i32 %81, 1
  %83 = call i32 @HZDELAY(i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %59, %23
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @byteout(i64, i32) #1

declare dso_local i32 @HZDELAY(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
