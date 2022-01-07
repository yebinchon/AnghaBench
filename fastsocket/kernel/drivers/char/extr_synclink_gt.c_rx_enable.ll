; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_rx_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_rx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s rx_enable(%08x)\0A\00", align 1
@DMABUFSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*, i32)* @rx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_enable(%struct.slgt_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slgt_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %9 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @DBGINFO(i8* %13)
  %15 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %16 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %15, i32 0, i32 2
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = lshr i32 %19, 16
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @DMABUFSIZE, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = urem i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27, %23
  %32 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %33 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %32, i32 0, i32 2
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %94

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %41 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %42, 128
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %50

47:                                               ; preds = %38
  %48 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %49 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %52 = call i32 @rx_stop(%struct.slgt_info* %51)
  br label %53

53:                                               ; preds = %50, %2
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 3
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %60 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %65 = call i32 @rx_start(%struct.slgt_info* %64)
  br label %79

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %71 = load i32, i32* @RCR, align 4
  %72 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %73 = load i32, i32* @RCR, align 4
  %74 = call i32 @rd_reg16(%struct.slgt_info* %72, i32 %73)
  %75 = load i32, i32* @BIT3, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @wr_reg16(%struct.slgt_info* %70, i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %69, %66
  br label %79

79:                                               ; preds = %78, %63
  br label %89

80:                                               ; preds = %53
  %81 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %82 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %87 = call i32 @rx_stop(%struct.slgt_info* %86)
  br label %88

88:                                               ; preds = %85, %80
  br label %89

89:                                               ; preds = %88, %79
  %90 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %91 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %90, i32 0, i32 2
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %31
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rx_stop(%struct.slgt_info*) #1

declare dso_local i32 @rx_start(%struct.slgt_info*) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i32) #1

declare dso_local i32 @rd_reg16(%struct.slgt_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
