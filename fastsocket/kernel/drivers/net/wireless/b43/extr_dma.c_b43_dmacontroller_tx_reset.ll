; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dmacontroller_tx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dmacontroller_tx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_DMA_64BIT = common dso_local global i32 0, align 4
@B43_DMA64_TXSTATUS = common dso_local global i64 0, align 8
@B43_DMA32_TXSTATUS = common dso_local global i64 0, align 8
@B43_DMA64_TXSTAT = common dso_local global i32 0, align 4
@B43_DMA64_TXSTAT_DISABLED = common dso_local global i32 0, align 4
@B43_DMA64_TXSTAT_IDLEWAIT = common dso_local global i32 0, align 4
@B43_DMA64_TXSTAT_STOPPED = common dso_local global i32 0, align 4
@B43_DMA32_TXSTATE = common dso_local global i32 0, align 4
@B43_DMA32_TXSTAT_DISABLED = common dso_local global i32 0, align 4
@B43_DMA32_TXSTAT_IDLEWAIT = common dso_local global i32 0, align 4
@B43_DMA32_TXSTAT_STOPPED = common dso_local global i32 0, align 4
@B43_DMA64_TXCTL = common dso_local global i64 0, align 8
@B43_DMA32_TXCTL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"DMA TX reset timed out\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i64, i32)* @b43_dmacontroller_tx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_dmacontroller_tx_reset(%struct.b43_wldev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @might_sleep()
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %69, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %72

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @B43_DMA_64BIT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @B43_DMA64_TXSTATUS, align 8
  br label %23

21:                                               ; preds = %15
  %22 = load i64, i64* @B43_DMA32_TXSTATUS, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  store i64 %24, i64* %10, align 8
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @b43_read32(%struct.b43_wldev* %25, i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @B43_DMA_64BIT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %23
  %34 = load i32, i32* @B43_DMA64_TXSTAT, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @B43_DMA64_TXSTAT_DISABLED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @B43_DMA64_TXSTAT_IDLEWAIT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @B43_DMA64_TXSTAT_STOPPED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40, %33
  br label %72

49:                                               ; preds = %44
  br label %67

50:                                               ; preds = %23
  %51 = load i32, i32* @B43_DMA32_TXSTATE, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @B43_DMA32_TXSTAT_DISABLED, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @B43_DMA32_TXSTAT_IDLEWAIT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @B43_DMA32_TXSTAT_STOPPED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57, %50
  br label %72

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %49
  %68 = call i32 @msleep(i32 1)
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %12

72:                                               ; preds = %65, %48, %12
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @B43_DMA_64BIT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* @B43_DMA64_TXCTL, align 8
  br label %80

78:                                               ; preds = %72
  %79 = load i64, i64* @B43_DMA32_TXCTL, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i64 [ %77, %76 ], [ %79, %78 ]
  store i64 %81, i64* %10, align 8
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @b43_write32(%struct.b43_wldev* %82, i64 %85, i32 0)
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %128, %80
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 10
  br i1 %89, label %90, label %131

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @B43_DMA_64BIT, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* @B43_DMA64_TXSTATUS, align 8
  br label %98

96:                                               ; preds = %90
  %97 = load i64, i64* @B43_DMA32_TXSTATUS, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i64 [ %95, %94 ], [ %97, %96 ]
  store i64 %99, i64* %10, align 8
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @b43_read32(%struct.b43_wldev* %100, i64 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @B43_DMA_64BIT, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %98
  %109 = load i32, i32* @B43_DMA64_TXSTAT, align 4
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @B43_DMA64_TXSTAT_DISABLED, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 -1, i32* %8, align 4
  br label %131

116:                                              ; preds = %108
  br label %126

117:                                              ; preds = %98
  %118 = load i32, i32* @B43_DMA32_TXSTATE, align 4
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @B43_DMA32_TXSTAT_DISABLED, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 -1, i32* %8, align 4
  br label %131

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %116
  %127 = call i32 @msleep(i32 1)
  br label %128

128:                                              ; preds = %126
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %87

131:                                              ; preds = %124, %115, %87
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, -1
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %136 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @b43err(i32 %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %139 = load i32, i32* @ENODEV, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %143

141:                                              ; preds = %131
  %142 = call i32 @msleep(i32 1)
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %134
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i64, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
