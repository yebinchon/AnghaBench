; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capilib.c_mq_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capilib.c_mq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capilib_ncci = type { i32, %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue* }
%struct.capilib_msgidqueue = type { %struct.capilib_msgidqueue*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.capilib_ncci*, i32)* @mq_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_enqueue(%struct.capilib_ncci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.capilib_ncci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.capilib_msgidqueue*, align 8
  store %struct.capilib_ncci* %0, %struct.capilib_ncci** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %8 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %7, i32 0, i32 3
  %9 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %8, align 8
  store %struct.capilib_msgidqueue* %9, %struct.capilib_msgidqueue** %6, align 8
  %10 = icmp eq %struct.capilib_msgidqueue* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %6, align 8
  %14 = getelementptr inbounds %struct.capilib_msgidqueue, %struct.capilib_msgidqueue* %13, i32 0, i32 0
  %15 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %14, align 8
  %16 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %17 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %16, i32 0, i32 3
  store %struct.capilib_msgidqueue* %15, %struct.capilib_msgidqueue** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %6, align 8
  %20 = getelementptr inbounds %struct.capilib_msgidqueue, %struct.capilib_msgidqueue* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %6, align 8
  %22 = getelementptr inbounds %struct.capilib_msgidqueue, %struct.capilib_msgidqueue* %21, i32 0, i32 0
  store %struct.capilib_msgidqueue* null, %struct.capilib_msgidqueue** %22, align 8
  %23 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %24 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %23, i32 0, i32 2
  %25 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %24, align 8
  %26 = icmp ne %struct.capilib_msgidqueue* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %12
  %28 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %6, align 8
  %29 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %30 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %29, i32 0, i32 2
  %31 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %30, align 8
  %32 = getelementptr inbounds %struct.capilib_msgidqueue, %struct.capilib_msgidqueue* %31, i32 0, i32 0
  store %struct.capilib_msgidqueue* %28, %struct.capilib_msgidqueue** %32, align 8
  br label %33

33:                                               ; preds = %27, %12
  %34 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %6, align 8
  %35 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %36 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %35, i32 0, i32 2
  store %struct.capilib_msgidqueue* %34, %struct.capilib_msgidqueue** %36, align 8
  %37 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %38 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %37, i32 0, i32 1
  %39 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %38, align 8
  %40 = icmp ne %struct.capilib_msgidqueue* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load %struct.capilib_msgidqueue*, %struct.capilib_msgidqueue** %6, align 8
  %43 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %44 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %43, i32 0, i32 1
  store %struct.capilib_msgidqueue* %42, %struct.capilib_msgidqueue** %44, align 8
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.capilib_ncci*, %struct.capilib_ncci** %4, align 8
  %47 = getelementptr inbounds %struct.capilib_ncci, %struct.capilib_ncci* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
