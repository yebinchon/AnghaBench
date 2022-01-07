; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_err_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_err_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"error interrupt status=%#x\0A\00", align 1
@Y2_IS_HW_ERR = common dso_local global i32 0, align 4
@Y2_IS_IRQ_MAC1 = common dso_local global i32 0, align 4
@Y2_IS_IRQ_MAC2 = common dso_local global i32 0, align 4
@Y2_IS_CHK_RX1 = common dso_local global i32 0, align 4
@Q_R1 = common dso_local global i32 0, align 4
@Y2_IS_CHK_RX2 = common dso_local global i32 0, align 4
@Q_R2 = common dso_local global i32 0, align 4
@Y2_IS_CHK_TXA1 = common dso_local global i32 0, align 4
@Q_XA1 = common dso_local global i32 0, align 4
@Y2_IS_CHK_TXA2 = common dso_local global i32 0, align 4
@Q_XA2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_err_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_err_intr(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i64 (...) @net_ratelimit()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %9 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @dev_warn(i32* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %7, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @Y2_IS_HW_ERR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %21 = call i32 @sky2_hw_intr(%struct.sky2_hw* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @Y2_IS_IRQ_MAC1, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %29 = call i32 @sky2_mac_intr(%struct.sky2_hw* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @Y2_IS_IRQ_MAC2, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %37 = call i32 @sky2_mac_intr(%struct.sky2_hw* %36, i32 1)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @Y2_IS_CHK_RX1, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %45 = load i32, i32* @Q_R1, align 4
  %46 = call i32 @sky2_le_error(%struct.sky2_hw* %44, i32 0, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @Y2_IS_CHK_RX2, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %54 = load i32, i32* @Q_R2, align 4
  %55 = call i32 @sky2_le_error(%struct.sky2_hw* %53, i32 1, i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @Y2_IS_CHK_TXA1, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %63 = load i32, i32* @Q_XA1, align 4
  %64 = call i32 @sky2_le_error(%struct.sky2_hw* %62, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @Y2_IS_CHK_TXA2, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %72 = load i32, i32* @Q_XA2, align 4
  %73 = call i32 @sky2_le_error(%struct.sky2_hw* %71, i32 1, i32 %72)
  br label %74

74:                                               ; preds = %70, %65
  ret void
}

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @sky2_hw_intr(%struct.sky2_hw*) #1

declare dso_local i32 @sky2_mac_intr(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_le_error(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
