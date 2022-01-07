; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_5__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MGSL_MODE_ASYNC = common dso_local global i32 0, align 4
@DiagStatus_DmaFailure = common dso_local global i32 0, align 4
@TESTFRAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_test(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  store i32 20, i32* %4, align 4
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %13 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.tty_struct*, %struct.tty_struct** %14, align 8
  store %struct.tty_struct* %15, %struct.tty_struct** %8, align 8
  %16 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 4
  %18 = call i32 @memcpy(%struct.TYPE_6__* %9, %struct.TYPE_6__* %17, i32 12)
  %19 = load i32, i32* @MGSL_MODE_ASYNC, align 4
  %20 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %24 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 921600, i32* %25, align 8
  %26 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.tty_struct* null, %struct.tty_struct** %31, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %41, %1
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 20
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = trunc i32 %36 to i8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %39
  store i8 %37, i8* %40, align 1
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %32

44:                                               ; preds = %32
  %45 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %48 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memset(i32 %49, i32 0, i32 20)
  %51 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 5
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %56 = call i32 @async_mode(%struct.slgt_info* %55)
  %57 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %58 = call i32 @rx_start(%struct.slgt_info* %57)
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %61 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @tx_load(%struct.slgt_info* %62, i8* %63, i32 %64)
  %66 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %67 = call i32 @tx_start(%struct.slgt_info* %66)
  %68 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %69 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %68, i32 0, i32 5
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  store i64 100, i64* %3, align 8
  br label %72

72:                                               ; preds = %82, %44
  %73 = load i64, i64* %3, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = call i32 @msleep_interruptible(i32 10)
  %77 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %78 = call i64 @loopback_test_rx(%struct.slgt_info* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %85

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %3, align 8
  br label %72

85:                                               ; preds = %80, %72
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %85
  %89 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %90 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %102, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %96 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %97 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @memcmp(i8* %95, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94, %88
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %102, %94, %85
  %106 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %107 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %106, i32 0, i32 5
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @spin_lock_irqsave(i32* %107, i64 %108)
  %110 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %111 = call i32 @reset_adapter(%struct.slgt_info* %110)
  %112 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %113 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %112, i32 0, i32 5
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %117 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %116, i32 0, i32 4
  %118 = call i32 @memcpy(%struct.TYPE_6__* %117, %struct.TYPE_6__* %9, i32 12)
  %119 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %120 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %121 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store %struct.tty_struct* %119, %struct.tty_struct** %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %105
  %126 = load i32, i32* @DiagStatus_DmaFailure, align 4
  br label %128

127:                                              ; preds = %105
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ]
  %130 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %131 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @async_mode(%struct.slgt_info*) #1

declare dso_local i32 @rx_start(%struct.slgt_info*) #1

declare dso_local i32 @tx_load(%struct.slgt_info*, i8*, i32) #1

declare dso_local i32 @tx_start(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @loopback_test_rx(%struct.slgt_info*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @reset_adapter(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
