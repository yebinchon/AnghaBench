; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_fifo_txwait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_fifo_txwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stir_cb = type { i64*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@REG_FIFOCTL = common dso_local global i32 0, align 4
@FIFO_REGS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"FIFO register read error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"fifo status 0x%lx count %lu\0A\00", align 1
@FIFOCTL_DIR = common dso_local global i64 0, align 8
@FIFOCTL_EMPTY = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@STIR_FIFO_SIZE = common dso_local global i32 0, align 4
@FIFOCTL_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stir_cb*, i32)* @fifo_txwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_txwait(%struct.stir_cb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stir_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.stir_cb* %0, %struct.stir_cb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 8191, i64* %9, align 8
  br label %10

10:                                               ; preds = %114, %2
  %11 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %12 = load i32, i32* @REG_FIFOCTL, align 4
  %13 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %14 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* @FIFO_REGS_SIZE, align 4
  %17 = call i32 @read_reg(%struct.stir_cb* %11, i32 %12, i64* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FIFO_REGS_SIZE, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %10
  %25 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %26 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %134

32:                                               ; preds = %10
  %33 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %34 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %39 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %42, 31
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 8
  %46 = zext i32 %45 to i64
  %47 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %48 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %46, %51
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @FIFOCTL_DIR, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %32
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @FIFOCTL_EMPTY, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %32
  store i32 0, i32* %3, align 4
  br label %134

66:                                               ; preds = %60
  %67 = load i32, i32* @current, align 4
  %68 = call i64 @signal_pending(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @EINTR, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %134

73:                                               ; preds = %66
  %74 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %75 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = call i32 @netif_running(%struct.TYPE_3__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %81 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = call i32 @netif_device_present(%struct.TYPE_3__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79, %73
  %86 = load i32, i32* @ESHUTDOWN, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %134

88:                                               ; preds = %79
  %89 = load i32, i32* %5, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* @STIR_FIFO_SIZE, align 4
  %93 = sub nsw i32 %92, 4
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %96, %97
  %99 = icmp ugt i64 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %134

101:                                              ; preds = %91, %88
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %7, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %116

106:                                              ; preds = %101
  %107 = load i64, i64* %7, align 8
  %108 = mul i64 %107, 8000
  %109 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %110 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = udiv i64 %108, %111
  %113 = call i32 @msleep(i64 %112)
  br label %114

114:                                              ; preds = %106
  %115 = load i64, i64* %7, align 8
  store i64 %115, i64* %9, align 8
  br label %10

116:                                              ; preds = %105
  %117 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %118 = load i32, i32* @REG_FIFOCTL, align 4
  %119 = load i32, i32* @FIFOCTL_CLR, align 4
  %120 = call i32 @write_reg(%struct.stir_cb* %117, i32 %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %134

125:                                              ; preds = %116
  %126 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %127 = load i32, i32* @REG_FIFOCTL, align 4
  %128 = call i32 @write_reg(%struct.stir_cb* %126, i32 %127, i32 0)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %3, align 4
  br label %134

133:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %131, %123, %100, %85, %70, %65, %24
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @read_reg(%struct.stir_cb*, i32, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @netif_running(%struct.TYPE_3__*) #1

declare dso_local i32 @netif_device_present(%struct.TYPE_3__*) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @write_reg(%struct.stir_cb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
