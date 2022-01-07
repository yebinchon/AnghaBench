; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_ISARVersion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_ISARVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_hw = type { i32*, i64, i32, i32, i32 (i32, i32, i32)* }

@ISAR_IRQBIT = common dso_local global i32 0, align 4
@ISAR_MSG_HWVER = common dso_local global i32 0, align 4
@ISAR_HIS_VNR = common dso_local global i32 0, align 4
@ISAR_IIS_VNR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isar_hw*)* @ISARVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ISARVersion(%struct.isar_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isar_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.isar_hw* %0, %struct.isar_hw** %3, align 8
  %5 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %6 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %5, i32 0, i32 4
  %7 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %6, align 8
  %8 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %9 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ISAR_IRQBIT, align 4
  %12 = call i32 %7(i32 %10, i32 %11, i32 0)
  %13 = load i32, i32* @ISAR_MSG_HWVER, align 4
  %14 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %15 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %19 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %23 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 1, i32* %25, align 4
  %26 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %27 = load i32, i32* @ISAR_HIS_VNR, align 4
  %28 = call i32 @send_mbox(%struct.isar_hw* %26, i32 %27, i32 0, i32 3, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %57

31:                                               ; preds = %1
  %32 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %33 = call i32 @poll_mbox(%struct.isar_hw* %32, i32 1000)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 -2, i32* %2, align 4
  br label %57

36:                                               ; preds = %31
  %37 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %38 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ISAR_IIS_VNR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %44 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %49 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %42
  store i32 -3, i32* %2, align 4
  br label %57

56:                                               ; preds = %36
  store i32 -4, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55, %47, %35, %30
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @send_mbox(%struct.isar_hw*, i32, i32, i32, i32*) #1

declare dso_local i32 @poll_mbox(%struct.isar_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
