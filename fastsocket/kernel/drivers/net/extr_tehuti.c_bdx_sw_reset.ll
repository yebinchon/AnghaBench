; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_sw_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@regGMAC_RXF_A = common dso_local global i32 0, align 4
@regDIS_PORT = common dso_local global i32 0, align 4
@regDIS_QU = common dso_local global i32 0, align 4
@regRST_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: SW reset timeout. continuing anyway\0A\00", align 1
@regRDINTCM0 = common dso_local global i32 0, align 4
@regTDINTCM0 = common dso_local global i32 0, align 4
@regIMR = common dso_local global i32 0, align 4
@regISR = common dso_local global i32 0, align 4
@regRST_QU = common dso_local global i32 0, align 4
@regTXD_WPTR_0 = common dso_local global i32 0, align 4
@regTXF_RPTR_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%x = %x\0A\00", align 1
@TXF_WPTR_WR_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdx_priv*)* @bdx_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_sw_reset(%struct.bdx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  %5 = load i32, i32* @ENTER, align 4
  %6 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %7 = load i32, i32* @regGMAC_RXF_A, align 4
  %8 = call i32 @WRITE_REG(%struct.bdx_priv* %6, i32 %7, i32 0)
  %9 = call i32 @mdelay(i32 100)
  %10 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %11 = load i32, i32* @regDIS_PORT, align 4
  %12 = call i32 @WRITE_REG(%struct.bdx_priv* %10, i32 %11, i32 1)
  %13 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %14 = load i32, i32* @regDIS_QU, align 4
  %15 = call i32 @WRITE_REG(%struct.bdx_priv* %13, i32 %14, i32 1)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 50
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %21 = load i32, i32* @regRST_PORT, align 4
  %22 = call i32 @READ_REG(%struct.bdx_priv* %20, i32 %21)
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %31

26:                                               ; preds = %19
  %27 = call i32 @mdelay(i32 10)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %16

31:                                               ; preds = %25, %16
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 50
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %36 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %34, %31
  %42 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %43 = load i32, i32* @regRDINTCM0, align 4
  %44 = call i32 @WRITE_REG(%struct.bdx_priv* %42, i32 %43, i32 0)
  %45 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %46 = load i32, i32* @regTDINTCM0, align 4
  %47 = call i32 @WRITE_REG(%struct.bdx_priv* %45, i32 %46, i32 0)
  %48 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %49 = load i32, i32* @regIMR, align 4
  %50 = call i32 @WRITE_REG(%struct.bdx_priv* %48, i32 %49, i32 0)
  %51 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %52 = load i32, i32* @regISR, align 4
  %53 = call i32 @READ_REG(%struct.bdx_priv* %51, i32 %52)
  %54 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %55 = load i32, i32* @regRST_QU, align 4
  %56 = call i32 @WRITE_REG(%struct.bdx_priv* %54, i32 %55, i32 1)
  %57 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %58 = load i32, i32* @regRST_PORT, align 4
  %59 = call i32 @WRITE_REG(%struct.bdx_priv* %57, i32 %58, i32 1)
  %60 = load i32, i32* @regTXD_WPTR_0, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %73, %41
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @regTXF_RPTR_3, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @READ_REG(%struct.bdx_priv* %67, i32 %68)
  %70 = load i32, i32* @TXF_WPTR_WR_PTR, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 16
  store i32 %75, i32* %4, align 4
  br label %61

76:                                               ; preds = %61
  %77 = load i32, i32* @regTXD_WPTR_0, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %86, %76
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @regTXF_RPTR_3, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @WRITE_REG(%struct.bdx_priv* %83, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 16
  store i32 %88, i32* %4, align 4
  br label %78

89:                                               ; preds = %78
  %90 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %91 = load i32, i32* @regDIS_PORT, align 4
  %92 = call i32 @WRITE_REG(%struct.bdx_priv* %90, i32 %91, i32 0)
  %93 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %94 = load i32, i32* @regDIS_QU, align 4
  %95 = call i32 @WRITE_REG(%struct.bdx_priv* %93, i32 %94, i32 0)
  %96 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %97 = load i32, i32* @regRST_QU, align 4
  %98 = call i32 @WRITE_REG(%struct.bdx_priv* %96, i32 %97, i32 0)
  %99 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %100 = load i32, i32* @regRST_PORT, align 4
  %101 = call i32 @WRITE_REG(%struct.bdx_priv* %99, i32 %100, i32 0)
  %102 = load i32, i32* @regTXD_WPTR_0, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %115, %89
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @regTXF_RPTR_3, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @READ_REG(%struct.bdx_priv* %109, i32 %110)
  %112 = load i32, i32* @TXF_WPTR_WR_PTR, align 4
  %113 = and i32 %111, %112
  %114 = call i32 @DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %113)
  br label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 16
  store i32 %117, i32* %4, align 4
  br label %103

118:                                              ; preds = %103
  %119 = call i32 @RET(i32 0)
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
