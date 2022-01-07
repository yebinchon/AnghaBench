; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meth_private = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PHY code: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Oopsie! PHY is not known!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meth_private*)* @mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_probe(%struct.meth_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.meth_private* %0, %struct.meth_private** %3, align 8
  %8 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %9 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %14 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %66

18:                                               ; preds = %12, %1
  %19 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %20 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %19, i32 0, i32 1
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %47, %18
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 32
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %29 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %31 = call i64 @mdio_read(%struct.meth_private* %30, i32 2)
  store i64 %31, i64* %5, align 8
  %32 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %33 = call i64 @mdio_read(%struct.meth_private* %32, i32 3)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 65535
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = shl i64 %40, 12
  %42 = load i64, i64* %6, align 8
  %43 = lshr i64 %42, 4
  %44 = or i64 %41, %43
  %45 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %50

46:                                               ; preds = %36, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %23

50:                                               ; preds = %39, %23
  %51 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %52 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %51, i32 0, i32 1
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %56 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 32
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %66

60:                                               ; preds = %50
  %61 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %63 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 4
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %59, %17
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mdio_read(%struct.meth_private*, i32) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
