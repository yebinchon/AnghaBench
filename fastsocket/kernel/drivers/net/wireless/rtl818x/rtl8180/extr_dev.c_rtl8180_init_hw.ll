; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_6__*, i64, %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_5__ = type { i32 }

@RTL818X_CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"reset timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_LOAD = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8180_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8180_init_hw(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8180_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 1
  %8 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %7, align 8
  store %struct.rtl8180_priv* %8, %struct.rtl8180_priv** %4, align 8
  %9 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %10 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %11 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 19
  %14 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %9, i32* %13, i32 0)
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %16 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %17 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 19
  %20 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %15, i32* %19)
  %21 = call i32 @msleep(i32 10)
  %22 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %23 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 20
  %27 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %22, i32* %26, i32 0)
  %28 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %29 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %30 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 19
  %33 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %28, i32* %32)
  %34 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %35 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %36 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 19
  %39 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %34, i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 2
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @RTL818X_CMD_RESET, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %46 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %47 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 19
  %50 = load i32, i32* @RTL818X_CMD_RESET, align 4
  %51 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %45, i32* %49, i32 %50)
  %52 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %53 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %54 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 19
  %57 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %52, i32* %56)
  %58 = call i32 @msleep(i32 200)
  %59 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %60 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %61 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 19
  %64 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %59, i32* %63)
  %65 = load i32, i32* @RTL818X_CMD_RESET, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %1
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @wiphy_err(i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %375

75:                                               ; preds = %1
  %76 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %77 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %78 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i32, i32* @RTL818X_EEPROM_CMD_LOAD, align 4
  %82 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %76, i32* %80, i32 %81)
  %83 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %84 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %85 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 19
  %88 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %83, i32* %87)
  %89 = call i32 @msleep(i32 200)
  %90 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %91 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %92 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %90, i32* %94)
  %96 = and i32 %95, 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %129

98:                                               ; preds = %75
  %99 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %100 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %101 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 5
  %104 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %99, i32* %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, 2
  store i32 %106, i32* %5, align 4
  %107 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %108 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %109 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 5
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %107, i32* %111, i32 %112)
  %114 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %115 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %116 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 18
  %119 = call i32 @rtl818x_ioread16(%struct.rtl8180_priv* %114, i32* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = or i32 %120, 49168
  store i32 %121, i32* %5, align 4
  %122 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %123 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %124 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 18
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %122, i32* %126, i32 %127)
  br label %129

129:                                              ; preds = %98, %75
  %130 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %131 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %132 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 17
  %135 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %130, i32* %134, i32 0)
  %136 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %137 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %129
  %141 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %142 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %143 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @rtl8180_set_anaparam(%struct.rtl8180_priv* %141, i32 %144)
  br label %146

146:                                              ; preds = %140, %129
  %147 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %148 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %149 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 16
  %152 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %153 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %147, i32* %151, i32 %154)
  %156 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %157 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %158 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 15
  %161 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %162 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %161, i32 0, i32 3
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 3
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %156, i32* %160, i32 %166)
  %168 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %169 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %170 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %169, i32 0, i32 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 14
  %173 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %174 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %173, i32 0, i32 3
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i64 2
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %168, i32* %172, i32 %178)
  %180 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %181 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %182 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %181, i32 0, i32 0
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 13
  %185 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %186 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %185, i32 0, i32 3
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %180, i32* %184, i32 %190)
  %192 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %193 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %194 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %193, i32 0, i32 0
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 12
  %197 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %198 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %197, i32 0, i32 3
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %192, i32* %196, i32 %202)
  %204 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %205 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %206 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %205, i32 0, i32 0
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 4
  %209 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %210 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %204, i32* %208, i32 %209)
  %211 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %212 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %213 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %212, i32 0, i32 0
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 11
  %216 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %211, i32* %215)
  store i32 %216, i32* %5, align 4
  %217 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %218 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %219 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %218, i32 0, i32 0
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 11
  %222 = load i32, i32* %5, align 4
  %223 = and i32 %222, -9
  %224 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %217, i32* %221, i32 %223)
  %225 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %226 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %244

229:                                              ; preds = %146
  %230 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %231 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %232 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %231, i32 0, i32 0
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 11
  %235 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %230, i32* %234)
  store i32 %235, i32* %5, align 4
  %236 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %237 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %238 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %237, i32 0, i32 0
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 11
  %241 = load i32, i32* %5, align 4
  %242 = or i32 %241, 16
  %243 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %236, i32* %240, i32 %242)
  br label %244

244:                                              ; preds = %229, %146
  %245 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %246 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %247 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %246, i32 0, i32 0
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 4
  %250 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %251 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %245, i32* %249, i32 %250)
  %252 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %253 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %254 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %253, i32 0, i32 0
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 10
  %257 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %252, i32* %256, i32 0)
  %258 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %259 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %329

262:                                              ; preds = %244
  %263 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %264 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %265 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %264, i32 0, i32 0
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 9
  %268 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %263, i32* %267, i32 0)
  %269 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %270 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %271 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %270, i32 0, i32 0
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 8
  %274 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %269, i32* %273, i32 129)
  %275 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %276 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %277 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %276, i32 0, i32 0
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 7
  %280 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %275, i32* %279, i32 128)
  %281 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %282 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %283 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %282, i32 0, i32 0
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %281, i32* %285, i32 499)
  %287 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %288 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %289 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %288, i32 0, i32 0
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 6
  %292 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %287, i32* %291)
  store i32 %292, i32* %5, align 4
  %293 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %294 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %295 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %294, i32 0, i32 0
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 6
  %298 = load i32, i32* %5, align 4
  %299 = and i32 %298, -65
  %300 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %293, i32* %297, i32 %299)
  %301 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %302 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %303 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %302, i32 0, i32 0
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 4
  %306 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %307 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %301, i32* %305, i32 %306)
  %308 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %309 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %310 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %309, i32 0, i32 0
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 5
  %313 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %308, i32* %312)
  store i32 %313, i32* %5, align 4
  %314 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %315 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %316 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %315, i32 0, i32 0
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 5
  %319 = load i32, i32* %5, align 4
  %320 = or i32 %319, 4
  %321 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %314, i32* %318, i32 %320)
  %322 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %323 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %324 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %323, i32 0, i32 0
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 4
  %327 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %328 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %322, i32* %326, i32 %327)
  br label %354

329:                                              ; preds = %244
  %330 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %331 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %332 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %331, i32 0, i32 0
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  %335 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %330, i32* %334, i32 1)
  %336 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %337 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %338 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %337, i32 0, i32 0
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 3
  %341 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %336, i32* %340, i32 0)
  %342 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %343 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %344 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %343, i32 0, i32 0
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 2
  %347 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %342, i32* %346, i32 6)
  %348 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %349 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %350 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %349, i32 0, i32 0
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 1
  %353 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %348, i32* %352, i32 76)
  br label %354

354:                                              ; preds = %329, %262
  %355 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %356 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %355, i32 0, i32 2
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 0
  %359 = bitcast {}** %358 to i32 (%struct.ieee80211_hw*)**
  %360 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %359, align 8
  %361 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %362 = call i32 %360(%struct.ieee80211_hw* %361)
  %363 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %364 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %354
  %368 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %369 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %4, align 8
  %370 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %369, i32 0, i32 0
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  %373 = call i32 @rtl818x_iowrite16(%struct.rtl8180_priv* %368, i32* %372, i32 499)
  br label %374

374:                                              ; preds = %367, %354
  store i32 0, i32* %2, align 4
  br label %375

375:                                              ; preds = %374, %68
  %376 = load i32, i32* %2, align 4
  ret i32 %376
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @rtl818x_ioread16(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl8180_set_anaparam(%struct.rtl8180_priv*, i32) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
