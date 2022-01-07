; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_uctrl.c_uctrl_do_txn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_uctrl.c_uctrl_do_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uctrl_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.uctrl_txn = type { i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [30 x i8] c"interrupt stat 0x%x int 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ack was %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"set byte to %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uctrl_driver*, %struct.uctrl_txn*)* @uctrl_do_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uctrl_do_txn(%struct.uctrl_driver* %0, %struct.uctrl_txn* %1) #0 {
  %3 = alloca %struct.uctrl_driver*, align 8
  %4 = alloca %struct.uctrl_txn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uctrl_driver* %0, %struct.uctrl_driver** %3, align 8
  store %struct.uctrl_txn* %1, %struct.uctrl_txn** %4, align 8
  %11 = load %struct.uctrl_driver*, %struct.uctrl_driver** %3, align 8
  %12 = getelementptr inbounds %struct.uctrl_driver, %struct.uctrl_driver* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @sbus_readl(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.uctrl_driver*, %struct.uctrl_driver** %3, align 8
  %17 = getelementptr inbounds %struct.uctrl_driver, %struct.uctrl_driver* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @sbus_readl(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.uctrl_driver*, %struct.uctrl_driver** %3, align 8
  %23 = getelementptr inbounds %struct.uctrl_driver, %struct.uctrl_driver* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @sbus_writel(i32 %21, i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @dprintk(i8* %30)
  %32 = load %struct.uctrl_txn*, %struct.uctrl_txn** %4, align 8
  %33 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  %35 = load %struct.uctrl_txn*, %struct.uctrl_txn** %4, align 8
  %36 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.uctrl_txn*, %struct.uctrl_txn** %4, align 8
  %39 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 8
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @WRITEUCTLDATA(i32 %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %47, %2
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load %struct.uctrl_txn*, %struct.uctrl_txn** %4, align 8
  %49 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @WRITEUCTLDATA(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @READUCTLDATA(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = ashr i32 %65, 8
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @dprintk(i8* %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %73, %62
  %71 = load i32, i32* %7, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @READUCTLDATA(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = ashr i32 %76, 8
  %78 = load %struct.uctrl_txn*, %struct.uctrl_txn** %4, align 8
  %79 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @dprintk(i8* %86)
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %70

92:                                               ; preds = %70
  ret void
}

declare dso_local i32 @sbus_readl(i32*) #1

declare dso_local i32 @sbus_writel(i32, i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @WRITEUCTLDATA(i32) #1

declare dso_local i32 @READUCTLDATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
