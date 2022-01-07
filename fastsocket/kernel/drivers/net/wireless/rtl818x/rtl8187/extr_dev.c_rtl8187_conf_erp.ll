; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_conf_erp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_conf_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8187_priv = type { i32, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@rtl8187b_ac_addr = common dso_local global i64* null, align 8
@SIFS_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8187_priv*, i32, i32)* @rtl8187_conf_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187_conf_erp(%struct.rtl8187_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8187_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtl8187_priv* %0, %struct.rtl8187_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %12 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %103

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %20 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %19, i32 0, i32 0
  store i32 9, i32* %20, align 8
  store i32 28, i32* %7, align 4
  store i32 83, i32* %8, align 4
  br label %24

21:                                               ; preds = %15
  %22 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %23 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %22, i32 0, i32 0
  store i32 20, i32* %23, align 8
  store i32 50, i32* %7, align 4
  store i32 91, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %26 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %25, i32* %29, i32 34)
  %31 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %32 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %33 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %37 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %31, i32* %35, i32 %38)
  %40 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %41 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %42 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %40, i32* %44, i32 %45)
  %47 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %48 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %49 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %47, i32* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 160, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %24
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 72
  store i32 %61, i32* %9, align 4
  br label %65

62:                                               ; preds = %24
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 144
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %67 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %68 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @DIV_ROUND_UP(i32 %71, i32 4)
  %73 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %66, i32* %70, i32 %72)
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %99, %65
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %102

77:                                               ; preds = %74
  %78 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %79 = load i64*, i64** @rtl8187b_ac_addr, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %86 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %93 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %91, %94
  %96 = load i32, i32* @SIFS_TIME, align 4
  %97 = add nsw i32 %95, %96
  %98 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %78, i32* %84, i32 %97)
  br label %99

99:                                               ; preds = %77
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %74

102:                                              ; preds = %74
  br label %151

103:                                              ; preds = %3
  %104 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %105 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %106 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %104, i32* %108, i32 34)
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %103
  %113 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %114 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %115 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %113, i32* %117, i32 9)
  %119 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %120 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %121 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %119, i32* %123, i32 20)
  %125 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %126 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %127 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  %130 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %125, i32* %129, i32 71)
  br label %150

131:                                              ; preds = %103
  %132 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %133 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %134 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %132, i32* %136, i32 20)
  %138 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %139 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %140 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %138, i32* %142, i32 36)
  %144 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %145 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %146 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 4
  %149 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %144, i32* %148, i32 55)
  br label %150

150:                                              ; preds = %131, %112
  br label %151

151:                                              ; preds = %150, %102
  ret void
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
