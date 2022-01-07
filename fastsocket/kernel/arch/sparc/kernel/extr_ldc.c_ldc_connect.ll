; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@LDC_MODE_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LDC_FLAG_ALLOCED_QUEUES = common dso_local global i32 0, align 4
@LDC_FLAG_REGISTERED_QUEUES = common dso_local global i32 0, align 4
@LDC_HS_OPEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldc_connect(%struct.ldc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ldc_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %3, align 8
  %6 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LDC_MODE_RAW, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %17 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %16, i32 0, i32 2
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %21 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @LDC_FLAG_ALLOCED_QUEUES, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %15
  %27 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %28 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %35 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LDC_HS_OPEN, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %26, %15
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %44 = call i32 @start_handshake(%struct.ldc_channel* %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %47 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %46, i32 0, i32 2
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @start_handshake(%struct.ldc_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
