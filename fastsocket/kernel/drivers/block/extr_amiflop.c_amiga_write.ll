; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_amiflop.c_amiga_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_amiflop.c_amiga_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@raw_buf = common dso_local global i64 0, align 8
@unit = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @amiga_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amiga_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @raw_buf, align 8
  %6 = inttoptr i64 %5 to i64*
  store i64* %6, i64** %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 3
  store i32 %8, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 415, %18
  %20 = icmp ult i32 %10, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %9
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %4, align 8
  store i64 2863311530, i64* %22, align 8
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %9

27:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @unit, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul i32 %37, %45
  %47 = icmp ult i32 %29, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %28
  %49 = load i32, i32* %2, align 4
  %50 = load i64*, i64** %4, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i64* @putsec(i32 %49, i64* %50, i32 %51)
  store i64* %52, i64** %4, align 8
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %28

56:                                               ; preds = %28
  %57 = load i64*, i64** %4, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 -1
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %59, 1
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 10920, i32 43688
  %64 = load i64*, i64** %4, align 8
  %65 = bitcast i64* %64 to i32*
  store i32 %63, i32* %65, align 4
  ret void
}

declare dso_local i64* @putsec(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
