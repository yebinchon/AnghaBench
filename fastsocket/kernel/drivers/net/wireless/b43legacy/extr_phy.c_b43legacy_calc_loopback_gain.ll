; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_calc_loopback_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_calc_loopback_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_6__*, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_phy = type { i32, i32, i64, i32, i32, i32* }

@B43legacy_BFL_EXTLNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_calc_loopback_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_calc_loopback_gain(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca [15 x i32], align 16
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %12, i32 0, i32 1
  store %struct.b43legacy_phy* %13, %struct.b43legacy_phy** %3, align 8
  %14 = bitcast [15 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 60, i1 false)
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %16 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %15, i32 1065)
  %17 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %19 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %18, i32 1)
  %20 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %22 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %21, i32 2065)
  %23 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %25 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %24, i32 2066)
  %26 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 3
  store i32 %25, i32* %26, align 4
  %27 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %28 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %33 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %32, i32 2068)
  %34 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 4
  store i32 %33, i32* %34, align 16
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %36 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %35, i32 2069)
  %37 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 5
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %1
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %40 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %39, i32 90)
  %41 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 6
  store i32 %40, i32* %41, align 8
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %43 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %42, i32 89)
  %44 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 7
  store i32 %43, i32* %44, align 4
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %46 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %45, i32 88)
  %47 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 8
  store i32 %46, i32* %47, align 16
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %49 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %48, i32 10)
  %50 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 9
  store i32 %49, i32* %50, align 4
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %52 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %51, i32 3)
  %53 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 10
  store i32 %52, i32* %53, align 8
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %55 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %54, i32 2063)
  %56 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 11
  store i32 %55, i32* %56, align 4
  %57 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %58 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %57, i32 2064)
  %59 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 12
  store i32 %58, i32* %59, align 16
  %60 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %61 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %60, i32 43)
  %62 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 13
  store i32 %61, i32* %62, align 4
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %64 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %63, i32 21)
  %65 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 14
  store i32 %64, i32* %65, align 8
  %66 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %67 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %66, i32 45)
  %68 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %69 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %72 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %71, i32 82)
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %72, i32* %73, align 4
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %75 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %74, i32 67)
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %78 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %77, i32 122)
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %81 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %82 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %81, i32 1065)
  %83 = and i32 %82, 16383
  %84 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %80, i32 1065, i32 %83)
  %85 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %87 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %86, i32 1)
  %88 = and i32 %87, 32768
  %89 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %85, i32 1, i32 %88)
  %90 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %92 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %91, i32 2065)
  %93 = or i32 %92, 2
  %94 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %90, i32 2065, i32 %93)
  %95 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %96 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %97 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %96, i32 2066)
  %98 = and i32 %97, 65533
  %99 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %95, i32 2066, i32 %98)
  %100 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %101 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %102 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %101, i32 2065)
  %103 = or i32 %102, 1
  %104 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %100, i32 2065, i32 %103)
  %105 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %106 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %107 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %106, i32 2066)
  %108 = and i32 %107, 65534
  %109 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %105, i32 2066, i32 %108)
  %110 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %111 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %135

114:                                              ; preds = %38
  %115 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %116 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %117 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %116, i32 2068)
  %118 = or i32 %117, 1
  %119 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %115, i32 2068, i32 %118)
  %120 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %121 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %122 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %121, i32 2069)
  %123 = and i32 %122, 65534
  %124 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %120, i32 2069, i32 %123)
  %125 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %126 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %127 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %126, i32 2068)
  %128 = or i32 %127, 2
  %129 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %125, i32 2068, i32 %128)
  %130 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %131 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %132 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %131, i32 2069)
  %133 = and i32 %132, 65533
  %134 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %130, i32 2069, i32 %133)
  br label %135

135:                                              ; preds = %114, %38
  %136 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %137 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %138 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %137, i32 2065)
  %139 = or i32 %138, 12
  %140 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %136, i32 2065, i32 %139)
  %141 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %142 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %143 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %142, i32 2066)
  %144 = or i32 %143, 12
  %145 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %141, i32 2066, i32 %144)
  %146 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %147 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %148 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %147, i32 2065)
  %149 = and i32 %148, 65487
  %150 = or i32 %149, 48
  %151 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %146, i32 2065, i32 %150)
  %152 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %153 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %154 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %153, i32 2066)
  %155 = and i32 %154, 65487
  %156 = or i32 %155, 16
  %157 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %152, i32 2066, i32 %156)
  %158 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %159 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %158, i32 90, i32 1920)
  %160 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %161 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %160, i32 89, i32 51216)
  %162 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %163 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %162, i32 88, i32 13)
  %164 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %165 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %135
  %169 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %170 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %169, i32 3, i32 290)
  br label %177

171:                                              ; preds = %135
  %172 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %173 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %174 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %173, i32 10)
  %175 = or i32 %174, 8192
  %176 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %172, i32 10, i32 %175)
  br label %177

177:                                              ; preds = %171, %168
  %178 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %179 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 1
  br i1 %181, label %182, label %193

182:                                              ; preds = %177
  %183 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %184 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %185 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %184, i32 2068)
  %186 = or i32 %185, 4
  %187 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %183, i32 2068, i32 %186)
  %188 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %189 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %190 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %189, i32 2069)
  %191 = and i32 %190, 65531
  %192 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %188, i32 2069, i32 %191)
  br label %193

193:                                              ; preds = %182, %177
  %194 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %195 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %196 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %195, i32 3)
  %197 = and i32 %196, 65439
  %198 = or i32 %197, 64
  %199 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %194, i32 3, i32 %198)
  %200 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %201 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 8272
  br i1 %203, label %204, label %218

204:                                              ; preds = %193
  %205 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %206 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 2
  br i1 %208, label %209, label %218

209:                                              ; preds = %204
  %210 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %211 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %210, i32 82, i32 0)
  %212 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %213 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %214 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %213, i32 67)
  %215 = and i32 %214, 65520
  %216 = or i32 %215, 9
  %217 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %212, i32 67, i32 %216)
  store i32 9, i32* %8, align 4
  br label %228

218:                                              ; preds = %204, %193
  %219 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %220 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 8
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %225 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %224, i32 67, i32 15)
  store i32 15, i32* %8, align 4
  br label %227

226:                                              ; preds = %218
  store i32 0, i32* %8, align 4
  br label %227

227:                                              ; preds = %226, %223
  br label %228

228:                                              ; preds = %227, %209
  %229 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %230 = call i32 @b43legacy_phy_set_baseband_attenuation(%struct.b43legacy_wldev* %229, i32 11)
  %231 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %232 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp sge i32 %233, 3
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %237 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %236, i32 2063, i32 49184)
  br label %241

238:                                              ; preds = %228
  %239 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %240 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %239, i32 2063, i32 32800)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %243 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %242, i32 2064, i32 0)
  %244 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %245 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %246 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %245, i32 43)
  %247 = and i32 %246, 65472
  %248 = or i32 %247, 1
  %249 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %244, i32 43, i32 %248)
  %250 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %251 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %252 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %251, i32 43)
  %253 = and i32 %252, 49407
  %254 = or i32 %253, 2048
  %255 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %250, i32 43, i32 %254)
  %256 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %257 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %258 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %257, i32 2065)
  %259 = or i32 %258, 256
  %260 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %256, i32 2065, i32 %259)
  %261 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %262 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %263 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %262, i32 2066)
  %264 = and i32 %263, 53247
  %265 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %261, i32 2066, i32 %264)
  %266 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %267 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %266, i32 0, i32 0
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @B43legacy_BFL_EXTLNA, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %294

277:                                              ; preds = %241
  %278 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %279 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp sge i32 %280, 7
  br i1 %281, label %282, label %293

282:                                              ; preds = %277
  %283 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %284 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %285 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %284, i32 2065)
  %286 = or i32 %285, 2048
  %287 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %283, i32 2065, i32 %286)
  %288 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %289 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %290 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %289, i32 2066)
  %291 = or i32 %290, 32768
  %292 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %288, i32 2066, i32 %291)
  br label %293

293:                                              ; preds = %282, %277
  br label %294

294:                                              ; preds = %293, %241
  %295 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %296 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %297 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %296, i32 122)
  %298 = and i32 %297, 247
  %299 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %295, i32 122, i32 %298)
  store i32 0, i32* %7, align 4
  br label %300

300:                                              ; preds = %334, %294
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %337

304:                                              ; preds = %300
  %305 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %306 = load i32, i32* %8, align 4
  %307 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %305, i32 67, i32 %306)
  %308 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %309 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %310 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %309, i32 2066)
  %311 = and i32 %310, 61695
  %312 = load i32, i32* %7, align 4
  %313 = shl i32 %312, 8
  %314 = or i32 %311, %313
  %315 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %308, i32 2066, i32 %314)
  %316 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %317 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %318 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %317, i32 21)
  %319 = and i32 %318, 4095
  %320 = or i32 %319, 40960
  %321 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %316, i32 21, i32 %320)
  %322 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %323 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %324 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %323, i32 21)
  %325 = and i32 %324, 4095
  %326 = or i32 %325, 61440
  %327 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %322, i32 21, i32 %326)
  %328 = call i32 @udelay(i32 20)
  %329 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %330 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %329, i32 45)
  %331 = icmp sge i32 %330, 3580
  br i1 %331, label %332, label %333

332:                                              ; preds = %304
  br label %337

333:                                              ; preds = %304
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %7, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %7, align 4
  br label %300

337:                                              ; preds = %332, %300
  %338 = load i32, i32* %7, align 4
  store i32 %338, i32* %9, align 4
  %339 = load i32, i32* %8, align 4
  %340 = load i32, i32* %9, align 4
  %341 = sub nsw i32 %339, %340
  store i32 %341, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %342 = load i32, i32* %9, align 4
  %343 = icmp sge i32 %342, 8
  br i1 %343, label %344, label %386

344:                                              ; preds = %337
  %345 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %346 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %347 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %346, i32 2066)
  %348 = or i32 %347, 48
  %349 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %345, i32 2066, i32 %348)
  %350 = load i32, i32* %9, align 4
  %351 = sub nsw i32 %350, 8
  store i32 %351, i32* %7, align 4
  br label %352

352:                                              ; preds = %382, %344
  %353 = load i32, i32* %7, align 4
  %354 = icmp slt i32 %353, 16
  br i1 %354, label %355, label %385

355:                                              ; preds = %352
  %356 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %357 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %358 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %357, i32 2066)
  %359 = and i32 %358, 61695
  %360 = load i32, i32* %7, align 4
  %361 = shl i32 %360, 8
  %362 = or i32 %359, %361
  %363 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %356, i32 2066, i32 %362)
  %364 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %365 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %366 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %365, i32 21)
  %367 = and i32 %366, 4095
  %368 = or i32 %367, 40960
  %369 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %364, i32 21, i32 %368)
  %370 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %371 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %372 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %371, i32 21)
  %373 = and i32 %372, 4095
  %374 = or i32 %373, 61440
  %375 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %370, i32 21, i32 %374)
  %376 = call i32 @udelay(i32 20)
  %377 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %378 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %377, i32 45)
  %379 = icmp sge i32 %378, 3580
  br i1 %379, label %380, label %381

380:                                              ; preds = %355
  br label %385

381:                                              ; preds = %355
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %7, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %7, align 4
  br label %352

385:                                              ; preds = %380, %352
  br label %386

386:                                              ; preds = %385, %337
  %387 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %388 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %389, 1
  br i1 %390, label %391, label %400

391:                                              ; preds = %386
  %392 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %393 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 4
  %394 = load i32, i32* %393, align 16
  %395 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %392, i32 2068, i32 %394)
  %396 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %397 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 5
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %396, i32 2069, i32 %398)
  br label %400

400:                                              ; preds = %391, %386
  %401 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %402 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 6
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %401, i32 90, i32 %403)
  %405 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %406 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 7
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %405, i32 89, i32 %407)
  %409 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %410 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 8
  %411 = load i32, i32* %410, align 16
  %412 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %409, i32 88, i32 %411)
  %413 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %414 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 9
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %413, i32 10, i32 %415)
  %417 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %418 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 10
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %417, i32 3, i32 %419)
  %421 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %422 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 11
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %421, i32 2063, i32 %423)
  %425 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %426 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 12
  %427 = load i32, i32* %426, align 16
  %428 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %425, i32 2064, i32 %427)
  %429 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %430 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 13
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %429, i32 43, i32 %431)
  %433 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %434 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 14
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %433, i32 21, i32 %435)
  %437 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %438 = load i32, i32* %6, align 4
  %439 = call i32 @b43legacy_phy_set_baseband_attenuation(%struct.b43legacy_wldev* %437, i32 %438)
  %440 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %441 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %440, i32 82, i32 %442)
  %444 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %445 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %444, i32 67, i32 %446)
  %448 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %449 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %448, i32 122, i32 %450)
  %452 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %453 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 2
  %454 = load i32, i32* %453, align 8
  %455 = or i32 %454, 3
  %456 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %452, i32 2065, i32 %455)
  %457 = call i32 @udelay(i32 10)
  %458 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %459 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 2
  %460 = load i32, i32* %459, align 8
  %461 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %458, i32 2065, i32 %460)
  %462 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %463 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 3
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %462, i32 2066, i32 %464)
  %466 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %467 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 0
  %468 = load i32, i32* %467, align 16
  %469 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %466, i32 1065, i32 %468)
  %470 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %471 = getelementptr inbounds [15 x i32], [15 x i32]* %4, i64 0, i64 1
  %472 = load i32, i32* %471, align 4
  %473 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %470, i32 1, i32 %472)
  %474 = load i32, i32* %9, align 4
  %475 = mul nsw i32 %474, 6
  %476 = load i32, i32* %10, align 4
  %477 = mul nsw i32 %476, 4
  %478 = sub nsw i32 %475, %477
  %479 = sub nsw i32 %478, 11
  %480 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %481 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %480, i32 0, i32 5
  %482 = load i32*, i32** %481, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 0
  store i32 %479, i32* %483, align 4
  %484 = load i32, i32* %11, align 4
  %485 = mul nsw i32 3, %484
  %486 = sub nsw i32 24, %485
  %487 = mul nsw i32 %486, 2
  %488 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %489 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %488, i32 0, i32 5
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 1
  store i32 %487, i32* %491, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_phy_set_baseband_attenuation(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @udelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
