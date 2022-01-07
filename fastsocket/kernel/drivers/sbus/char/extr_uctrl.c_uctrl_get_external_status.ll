; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_uctrl.c_uctrl_get_external_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_uctrl.c_uctrl_get_external_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uctrl_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uctrl_txn = type { i32, i32*, i32*, i64, i32 }

@READ_EXTERNAL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bytes %x %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ex is %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@uctrl_extstatus = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uctrl_driver*)* @uctrl_get_external_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uctrl_get_external_status(%struct.uctrl_driver* %0) #0 {
  %2 = alloca %struct.uctrl_driver*, align 8
  %3 = alloca %struct.uctrl_txn, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uctrl_driver* %0, %struct.uctrl_driver** %2, align 8
  %7 = load i32, i32* @READ_EXTERNAL_STATUS, align 4
  %8 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %3, i32 0, i32 4
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %3, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %3, i32 0, i32 0
  store i32 2, i32* %10, align 8
  %11 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %3, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %13 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %3, i32 0, i32 1
  store i32* %12, i32** %13, align 8
  %14 = load %struct.uctrl_driver*, %struct.uctrl_driver** %2, align 8
  %15 = call i32 @uctrl_do_txn(%struct.uctrl_driver* %14, %struct.uctrl_txn* %3)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @dprintk(i8* %23)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 256
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %27, %29
  %31 = load %struct.uctrl_driver*, %struct.uctrl_driver** %2, align 8
  %32 = getelementptr inbounds %struct.uctrl_driver, %struct.uctrl_driver* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.uctrl_driver*, %struct.uctrl_driver** %2, align 8
  %35 = getelementptr inbounds %struct.uctrl_driver, %struct.uctrl_driver* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @dprintk(i8* %39)
  %41 = load %struct.uctrl_driver*, %struct.uctrl_driver** %2, align 8
  %42 = getelementptr inbounds %struct.uctrl_driver, %struct.uctrl_driver* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %62, %1
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32*, i32** @uctrl_extstatus, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @dprintk(i8* %59)
  br label %61

61:                                               ; preds = %52, %48
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %45

67:                                               ; preds = %45
  %68 = call i32 @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @uctrl_do_txn(%struct.uctrl_driver*, %struct.uctrl_txn*) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
