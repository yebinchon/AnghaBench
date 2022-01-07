; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_event_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_event_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i8 }

@ati_remote_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@KIND_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8, i8)* @ati_remote_event_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote_event_lookup(i32 %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %60, %3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ati_remote_tbl, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KIND_END, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %9
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ati_remote_tbl, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 15
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 15
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %18
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ati_remote_tbl, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 4
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i32
  %40 = ashr i32 %39, 4
  %41 = sub nsw i32 %37, %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %41, %42
  %44 = and i32 %43, 15
  %45 = icmp eq i32 %44, 15
  br i1 %45, label %46, label %59

46:                                               ; preds = %30
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ati_remote_tbl, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i8, i8* %51, align 4
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %46, %30, %18
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %9

63:                                               ; preds = %9
  store i32 -1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
