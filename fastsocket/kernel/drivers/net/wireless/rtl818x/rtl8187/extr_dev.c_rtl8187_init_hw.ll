; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { {}* }

@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8187_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187_init_hw(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8187_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %8, align 8
  store %struct.rtl8187_priv* %9, %struct.rtl8187_priv** %4, align 8
  %10 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %11 = call i32 @rtl8187_set_anaparam(%struct.rtl8187_priv* %10, i32 1)
  %12 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %13 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %14 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 17
  %17 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %12, i32* %16, i32 0)
  %18 = call i32 @msleep(i32 200)
  %19 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %20 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %19, i32* inttoptr (i64 65048 to i32*), i32 16)
  %21 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %22 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %21, i32* inttoptr (i64 65048 to i32*), i32 17)
  %23 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %24 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %23, i32* inttoptr (i64 65048 to i32*), i32 0)
  %25 = call i32 @msleep(i32 200)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %27 = call i32 @rtl8187_cmd_reset(%struct.ieee80211_hw* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %274

32:                                               ; preds = %1
  %33 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %34 = call i32 @rtl8187_set_anaparam(%struct.rtl8187_priv* %33, i32 1)
  %35 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %37 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 14
  %40 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %35, i32* %39, i32 0)
  %41 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %42 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %43 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %41, i32* %45, i32 0)
  %47 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %48 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %49 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 14
  %52 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %47, i32* %51, i32 1024)
  %53 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %54 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %55 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %53, i32* %57, i32 1)
  %59 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %60 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %61 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %59, i32* %63, i32 0)
  %65 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %66 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %67 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %71 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %65, i32* %69, i32 %70)
  %72 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %73 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %72, i32* inttoptr (i64 65524 to i32*), i32 65535)
  %74 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %75 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %76 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %74, i32* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, 63
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, 128
  store i32 %83, i32* %5, align 4
  %84 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %85 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %86 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %84, i32* %88, i32 %89)
  %91 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %92 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %93 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %97 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %91, i32* %95, i32 %96)
  %98 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %99 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %100 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 16
  %103 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %98, i32* %102, i32 0)
  %104 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %105 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %106 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %104, i32* %108, i32 0)
  %110 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %111 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %112 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  %115 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %110, i32* %114, i32 0)
  %116 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %117 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %118 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 6
  %121 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %116, i32* %120, i32 128)
  %122 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %123 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %124 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 10
  %127 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %122, i32* %126, i32 499)
  %128 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %129 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %130 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 14
  %133 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %128, i32* %132, i32 0)
  %134 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %135 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %136 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %134, i32* %138, i32 0)
  %140 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %141 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %140, i32* inttoptr (i64 65107 to i32*))
  store i32 %141, i32* %5, align 4
  %142 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, 128
  %145 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %142, i32* inttoptr (i64 65107 to i32*), i32 %144)
  %146 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %147 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %148 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 14
  %151 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %146, i32* %150, i32 1024)
  %152 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %153 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %154 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %152, i32* %156, i32 32)
  %158 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %159 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %160 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %158, i32* %162, i32 0)
  %164 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %165 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %166 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %165, i32 0, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 15
  %169 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %164, i32* %168, i32 128)
  %170 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %171 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %172 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 14
  %175 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %170, i32* %174, i32 128)
  %176 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %177 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %178 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 11
  %181 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %176, i32* %180, i32 128)
  %182 = call i32 @msleep(i32 100)
  %183 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %184 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %185 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %184, i32 0, i32 0
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 13
  %188 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %183, i32* %187, i32 688136)
  %189 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %190 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %191 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %190, i32 0, i32 0
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 10
  %194 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %189, i32* %193, i32 65535)
  %195 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %196 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %197 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %196, i32 0, i32 0
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 12
  %200 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %195, i32* %199, i32 1048644)
  %201 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %202 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %203 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %202, i32 0, i32 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 2
  %206 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %207 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %201, i32* %205, i32 %206)
  %208 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %209 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %210 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %209, i32 0, i32 0
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 7
  %213 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %208, i32* %212, i32 68)
  %214 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %215 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %216 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %215, i32 0, i32 0
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  %219 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %220 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %214, i32* %218, i32 %219)
  %221 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %222 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %223 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %222, i32 0, i32 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 11
  %226 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %221, i32* %225, i32 8183)
  %227 = call i32 @msleep(i32 100)
  %228 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %229 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %228, i32 0, i32 1
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = bitcast {}** %231 to i32 (%struct.ieee80211_hw*)**
  %233 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %232, align 8
  %234 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %235 = call i32 %233(%struct.ieee80211_hw* %234)
  %236 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %237 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %238 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %237, i32 0, i32 0
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 10
  %241 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %236, i32* %240, i32 499)
  %242 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %243 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %244 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %243, i32 0, i32 0
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 8
  %247 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %242, i32* %246)
  %248 = and i32 %247, -2
  store i32 %248, i32* %5, align 4
  %249 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %250 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %251 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %250, i32 0, i32 0
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 8
  %254 = load i32, i32* %5, align 4
  %255 = or i32 %254, 1
  %256 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %249, i32* %253, i32 %255)
  %257 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %258 = call i32 @rtl818x_iowrite16(%struct.rtl8187_priv* %257, i32* inttoptr (i64 65534 to i32*), i32 16)
  %259 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %260 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %261 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %260, i32 0, i32 0
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 9
  %264 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %259, i32* %263, i32 128)
  %265 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %266 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %265, i32* inttoptr (i64 65535 to i32*), i32 96)
  %267 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %268 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %269 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %268, i32 0, i32 0
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 8
  %272 = load i32, i32* %5, align 4
  %273 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %267, i32* %271, i32 %272)
  store i32 0, i32* %2, align 4
  br label %274

274:                                              ; preds = %32, %30
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local i32 @rtl8187_set_anaparam(%struct.rtl8187_priv*, i32) #1

declare dso_local i32 @rtl818x_iowrite16(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl8187_cmd_reset(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
