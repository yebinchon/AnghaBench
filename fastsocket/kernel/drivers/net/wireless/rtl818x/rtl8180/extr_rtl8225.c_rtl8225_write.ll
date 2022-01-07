; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_rtl8225.c_rtl8225_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_rtl8225.c_rtl8225_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @rtl8225_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_write(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8180_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %15, align 8
  store %struct.rtl8180_priv* %16, %struct.rtl8180_priv** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 15
  %21 = or i32 %18, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %23 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %24 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %22, i32* %26)
  %28 = and i32 %27, 65523
  store i32 %28, i32* %8, align 4
  %29 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %30 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %31 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %29, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %36 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %37 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, 7
  %42 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %35, i32* %39, i32 %41)
  %43 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %44 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %45 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %43, i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %50 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %51 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, 7
  %56 = or i32 %55, 1024
  %57 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %49, i32* %53, i32 %56)
  %58 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %59 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %60 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %58, i32* %62)
  %64 = call i32 @udelay(i32 10)
  %65 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %66 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %67 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, 4
  %72 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %65, i32* %69, i32 %71)
  %73 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %74 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %75 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %73, i32* %77)
  %79 = call i32 @udelay(i32 2)
  %80 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %81 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %82 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %80, i32* %84, i32 %85)
  %87 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %88 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %89 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %87, i32* %91)
  %93 = call i32 @udelay(i32 10)
  store i32 15, i32* %12, align 4
  br label %94

94:                                               ; preds = %148, %3
  %95 = load i32, i32* %12, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %151

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* %13, align 4
  %106 = or i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %104, %97
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %113 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %114 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %112, i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %107
  %120 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %121 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %122 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %13, align 4
  %126 = or i32 %125, 2
  %127 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %120, i32* %124, i32 %126)
  %128 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %129 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %130 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %13, align 4
  %134 = or i32 %133, 2
  %135 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %128, i32* %132, i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = and i32 %136, 1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %119
  %140 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %141 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %142 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %140, i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %119
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %12, align 4
  br label %94

151:                                              ; preds = %94
  %152 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %153 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %154 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, 4
  %159 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %152, i32* %156, i32 %158)
  %160 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %161 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %162 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 3
  %165 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %160, i32* %164)
  %166 = call i32 @udelay(i32 10)
  %167 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %168 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %169 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, 4
  %174 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %167, i32* %171, i32 %173)
  %175 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %176 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %177 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i32, i32* %9, align 4
  %181 = or i32 %180, 1024
  %182 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %175, i32* %179, i32 %181)
  %183 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %184 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  %185 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %183, i32* %187, i32 8191)
  ret void
}

declare dso_local i32 @rtl818x_ioread16(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
