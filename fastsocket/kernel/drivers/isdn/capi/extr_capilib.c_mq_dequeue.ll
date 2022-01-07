; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capilib.c_mq_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capilib.c_mq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capilib_ncci = type { i32, %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue* }
%struct.capilib_msgidqueue = type { i64, %struct.capilib_msgidqueue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.capilib_ncci*, i64)* @mq_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_dequeue(%struct.capilib_ncci* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.capilib_ncci*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.capilib_msgidqueue**, align 8
  %7 = alloca %struct.capilib_msgidqueue*, align 8
  store %struct.capilib_ncci* %0, %struct.capilib_ncci** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %9 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %8, i32 0, i32 3
  store %struct.capilib_msgidqueue** %9, %struct.capilib_msgidqueue*** %6, align 8
  br label %10

10:                                               ; preds = %50, %2
  %11 = load %struct.capilib_msgidqueue**, %struct.capilib_msgidqueue*** %6, align 8
  %12 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %11, align 8
  %13 = icmp ne %struct.capilib_msgidqueue* %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = load %struct.capilib_msgidqueue**, %struct.capilib_msgidqueue*** %6, align 8
  %16 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %15, align 8
  %17 = getelementptr inbounds %struct.capilib_msgidqueue, %struct.capilib_msgidqueue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %14
  %22 = load %struct.capilib_msgidqueue**, %struct.capilib_msgidqueue*** %6, align 8
  %23 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %22, align 8
  store %struct.capilib_msgidqueue* %23, %struct.capilib_msgidqueue** %7, align 8
  %24 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %7, align 8
  %25 = getelementptr inbounds %struct.capilib_msgidqueue, %struct.capilib_msgidqueue* %24, i32 0, i32 1
  %26 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %25, align 8
  %27 = load %struct.capilib_msgidqueue**, %struct.capilib_msgidqueue*** %6, align 8
  store %struct.capilib_msgidqueue* %26, %struct.capilib_msgidqueue** %27, align 8
  %28 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %7, align 8
  %29 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %30 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %29, i32 0, i32 2
  %31 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %30, align 8
  %32 = icmp eq %struct.capilib_msgidqueue* %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %35 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %34, i32 0, i32 2
  store %struct.capilib_msgidqueue* null, %struct.capilib_msgidqueue** %35, align 8
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %38 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %37, i32 0, i32 1
  %39 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %38, align 8
  %40 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %7, align 8
  %41 = getelementptr inbounds %struct.capilib_msgidqueue, %struct.capilib_msgidqueue* %40, i32 0, i32 1
  store %struct.capilib_msgidqueue* %39, %struct.capilib_msgidqueue** %41, align 8
  %42 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %7, align 8
  %43 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %44 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %43, i32 0, i32 1
  store %struct.capilib_msgidqueue* %42, %struct.capilib_msgidqueue** %44, align 8
  %45 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %46 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  store i32 1, i32* %3, align 4
  br label %55

49:                                               ; preds = %14
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.capilib_msgidqueue**, %struct.capilib_msgidqueue*** %6, align 8
  %52 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %51, align 8
  %53 = getelementptr inbounds %struct.capilib_msgidqueue, %struct.capilib_msgidqueue* %52, i32 0, i32 1
  store %struct.capilib_msgidqueue** %53, %struct.capilib_msgidqueue*** %6, align 8
  br label %10

54:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
