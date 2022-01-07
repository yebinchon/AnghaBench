; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_rtl8225.c_rtl8225_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_rtl8225.c_rtl8225_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @rtl8225_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8225_read(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8180_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %13, align 8
  store %struct.rtl8180_priv* %14, %struct.rtl8180_priv** %5, align 8
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %16 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %17 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %15, i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %22 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %21, i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %28 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %29 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %27, i32* %31)
  %33 = or i32 %32, 1024
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, -16
  store i32 %35, i32* %6, align 4
  %36 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %37 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %38 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, 15
  %43 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %36, i32* %40, i32 %42)
  %44 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %45 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %46 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, 15
  %51 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %44, i32* %48, i32 %50)
  %52 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %53 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %54 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, 4
  %59 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %52, i32* %56, i32 %58)
  %60 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %61 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %62 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %60, i32* %64)
  %66 = call i32 @udelay(i32 4)
  %67 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %68 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %69 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %67, i32* %71, i32 %72)
  %74 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %75 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %76 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %74, i32* %78)
  %80 = call i32 @udelay(i32 5)
  store i32 4, i32* %10, align 4
  br label %81

81:                                               ; preds = %159, %2
  %82 = load i32, i32* %10, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %162

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %86, %87
  %89 = and i32 %88, 1
  %90 = or i32 %85, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %84
  %95 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %96 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %97 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %95, i32* %99, i32 %100)
  %102 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %103 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %104 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %102, i32* %106)
  %108 = call i32 @udelay(i32 1)
  br label %109

109:                                              ; preds = %94, %84
  %110 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %111 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %112 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, 2
  %117 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %110, i32* %114, i32 %116)
  %118 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %119 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %120 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %118, i32* %122)
  %124 = call i32 @udelay(i32 2)
  %125 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %126 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %127 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, 2
  %132 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %125, i32* %129, i32 %131)
  %133 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %134 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %135 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %133, i32* %137)
  %139 = call i32 @udelay(i32 2)
  %140 = load i32, i32* %10, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %109
  %144 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %145 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %146 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %144, i32* %148, i32 %149)
  %151 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %152 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %153 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  %156 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %151, i32* %155)
  %157 = call i32 @udelay(i32 1)
  br label %158

158:                                              ; preds = %143, %109
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %10, align 4
  br label %81

162:                                              ; preds = %81
  %163 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %164 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %165 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 2
  %168 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %163, i32* %167, i32 14)
  %169 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %170 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %171 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %169, i32* %173, i32 1038)
  %175 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %176 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %177 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 3
  %180 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %175, i32* %179)
  %181 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %182 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %183 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %182, i32 0, i32 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %6, align 4
  %187 = or i32 %186, 8
  %188 = or i32 %187, 2
  %189 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %181, i32* %185, i32 %188)
  %190 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %191 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %192 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %191, i32 0, i32 0
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 3
  %195 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %190, i32* %194)
  %196 = call i32 @udelay(i32 2)
  %197 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %198 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %199 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %198, i32 0, i32 0
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %6, align 4
  %203 = or i32 %202, 8
  %204 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %197, i32* %201, i32 %203)
  %205 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %206 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %207 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %206, i32 0, i32 0
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 3
  %210 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %205, i32* %209)
  %211 = call i32 @udelay(i32 2)
  %212 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %213 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %214 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %213, i32 0, i32 0
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32, i32* %6, align 4
  %218 = or i32 %217, 8
  %219 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %212, i32* %216, i32 %218)
  %220 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %221 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %222 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %221, i32 0, i32 0
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 3
  %225 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %220, i32* %224)
  %226 = call i32 @udelay(i32 2)
  store i32 0, i32* %9, align 4
  store i32 11, i32* %10, align 4
  br label %227

227:                                              ; preds = %323, %162
  %228 = load i32, i32* %10, align 4
  %229 = icmp sge i32 %228, 0
  br i1 %229, label %230, label %326

230:                                              ; preds = %227
  %231 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %232 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %233 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %232, i32 0, i32 0
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32, i32* %6, align 4
  %237 = or i32 %236, 8
  %238 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %231, i32* %235, i32 %237)
  %239 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %240 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %241 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %240, i32 0, i32 0
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 3
  %244 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %239, i32* %243)
  %245 = call i32 @udelay(i32 1)
  %246 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %247 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %248 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %247, i32 0, i32 0
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %6, align 4
  %252 = or i32 %251, 8
  %253 = or i32 %252, 2
  %254 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %246, i32* %250, i32 %253)
  %255 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %256 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %257 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %256, i32 0, i32 0
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 3
  %260 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %255, i32* %259)
  %261 = call i32 @udelay(i32 2)
  %262 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %263 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %264 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %263, i32 0, i32 0
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i32, i32* %6, align 4
  %268 = or i32 %267, 8
  %269 = or i32 %268, 2
  %270 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %262, i32* %266, i32 %269)
  %271 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %272 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %273 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %272, i32 0, i32 0
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 3
  %276 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %271, i32* %275)
  %277 = call i32 @udelay(i32 2)
  %278 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %279 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %280 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %279, i32 0, i32 0
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %6, align 4
  %284 = or i32 %283, 8
  %285 = or i32 %284, 2
  %286 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %278, i32* %282, i32 %285)
  %287 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %288 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %289 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %288, i32 0, i32 0
  %290 = load %struct.TYPE_2__*, %struct.TYPE_2__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 3
  %292 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %287, i32* %291)
  %293 = call i32 @udelay(i32 2)
  %294 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %295 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %296 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %295, i32 0, i32 0
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 4
  %299 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %294, i32* %298)
  %300 = and i32 %299, 2
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %230
  %303 = load i32, i32* %10, align 4
  %304 = shl i32 1, %303
  %305 = load i32, i32* %9, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %9, align 4
  br label %307

307:                                              ; preds = %302, %230
  %308 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %309 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %310 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %309, i32 0, i32 0
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 0
  %313 = load i32, i32* %6, align 4
  %314 = or i32 %313, 8
  %315 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %308, i32* %312, i32 %314)
  %316 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %317 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %318 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %317, i32 0, i32 0
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 3
  %321 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %316, i32* %320)
  %322 = call i32 @udelay(i32 2)
  br label %323

323:                                              ; preds = %307
  %324 = load i32, i32* %10, align 4
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %10, align 4
  br label %227

326:                                              ; preds = %227
  %327 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %328 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %329 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %328, i32 0, i32 0
  %330 = load %struct.TYPE_2__*, %struct.TYPE_2__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  %332 = load i32, i32* %6, align 4
  %333 = or i32 %332, 8
  %334 = or i32 %333, 4
  %335 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %327, i32* %331, i32 %334)
  %336 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %337 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %338 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %337, i32 0, i32 0
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 3
  %341 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %336, i32* %340)
  %342 = call i32 @udelay(i32 2)
  %343 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %344 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %345 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %344, i32 0, i32 0
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 2
  %348 = load i32, i32* %7, align 4
  %349 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %343, i32* %347, i32 %348)
  %350 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %351 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %352 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %351, i32 0, i32 0
  %353 = load %struct.TYPE_2__*, %struct.TYPE_2__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 1
  %355 = load i32, i32* %8, align 4
  %356 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %350, i32* %354, i32 %355)
  %357 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %358 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %359 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %358, i32 0, i32 0
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 0
  %362 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %357, i32* %361, i32 928)
  %363 = load i32, i32* %9, align 4
  ret i32 %363
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
