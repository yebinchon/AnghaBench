; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_w6692_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_w6692_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, i32, i32, i32 }

@W_ISTA = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: ista %02x\0A\00", align 1
@W_INT_B1_EXI = common dso_local global i32 0, align 4
@W_INT_B2_EXI = common dso_local global i32 0, align 4
@W_INT_D_RME = common dso_local global i32 0, align 4
@W_INT_D_RMR = common dso_local global i32 0, align 4
@W_D_FIFO_THRESH = common dso_local global i32 0, align 4
@W_INT_D_XFR = common dso_local global i32 0, align 4
@W_INT_D_EXI = common dso_local global i32 0, align 4
@W_INT_XINT0 = common dso_local global i32 0, align 4
@W_INT_XINT1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: W6692 spurious XINT!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @w6692_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w6692_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.w6692_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.w6692_hw*
  store %struct.w6692_hw* %9, %struct.w6692_hw** %6, align 8
  %10 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %11 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %14 = load i32, i32* @W_ISTA, align 4
  %15 = call i32 @ReadW6692(%struct.w6692_hw* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %18 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %22 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %27 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %111

30:                                               ; preds = %2
  %31 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %32 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %36 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %41 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @W_INT_B1_EXI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %52 = call i32 @W6692B_interrupt(%struct.w6692_hw* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %30
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @W_INT_B2_EXI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %60 = call i32 @W6692B_interrupt(%struct.w6692_hw* %59, i32 1)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @W_INT_D_RME, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %68 = call i32 @handle_rxD(%struct.w6692_hw* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @W_INT_D_RMR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %76 = load i32, i32* @W_D_FIFO_THRESH, align 4
  %77 = call i32 @W6692_empty_Dfifo(%struct.w6692_hw* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @W_INT_D_XFR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %85 = call i32 @handle_txD(%struct.w6692_hw* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @W_INT_D_EXI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %93 = call i32 @handle_statusD(%struct.w6692_hw* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @W_INT_XINT0, align 4
  %97 = load i32, i32* @W_INT_XINT1, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %103 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %94
  %107 = load %struct.w6692_hw*, %struct.w6692_hw** %6, align 8
  %108 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %107, i32 0, i32 1
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %25
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ReadW6692(%struct.w6692_hw*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @W6692B_interrupt(%struct.w6692_hw*, i32) #1

declare dso_local i32 @handle_rxD(%struct.w6692_hw*) #1

declare dso_local i32 @W6692_empty_Dfifo(%struct.w6692_hw*, i32) #1

declare dso_local i32 @handle_txD(%struct.w6692_hw*) #1

declare dso_local i32 @handle_statusD(%struct.w6692_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
