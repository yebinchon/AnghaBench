; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_nphy.c_b43_nphy_get_gain_ctl_workaround_ent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_nphy.c_b43_nphy_get_gain_ctl_workaround_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nphy_gain_ctl_workaround_entry = type { i32, i32*, i32 }
%struct.b43_wldev = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@nphy_gain_ctl_wa_phy6_radio11_ghz2 = common dso_local global %struct.nphy_gain_ctl_workaround_entry zeroinitializer, align 8
@nphy_gain_ctl_workaround = common dso_local global %struct.nphy_gain_ctl_workaround_entry** null, align 8
@b43_nphy_get_gain_ctl_workaround_ent.gain_data = internal constant [8 x i32] [i32 98, i32 100, i32 106, i32 4202, i32 4204, i32 4212, i32 4220, i32 8316], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nphy_gain_ctl_workaround_entry* @b43_nphy_get_gain_ctl_workaround_ent(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nphy_gain_ctl_workaround_entry*, align 8
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nphy_gain_ctl_workaround_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 6
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 11
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.nphy_gain_ctl_workaround_entry* @nphy_gain_ctl_wa_phy6_radio11_ghz2, %struct.nphy_gain_ctl_workaround_entry** %4, align 8
  br label %223

26:                                               ; preds = %19, %13, %3
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %28 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 3
  %32 = zext i1 %31 to i32
  %33 = call i32 @B43_WARN_ON(i32 %32)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %35 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 6
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i64 3, i64* %9, align 8
  br label %57

40:                                               ; preds = %26
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %42 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i64 2, i64* %9, align 8
  br label %56

47:                                               ; preds = %40
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %49 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i64 1, i64* %9, align 8
  br label %55

54:                                               ; preds = %47
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %46
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.nphy_gain_ctl_workaround_entry**, %struct.nphy_gain_ctl_workaround_entry*** @nphy_gain_ctl_workaround, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %58, i64 %60
  %62 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %62, i64 %63
  store %struct.nphy_gain_ctl_workaround_entry* %64, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %57
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %69 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 6
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %75 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 11
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %81 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @b43_channel_type_is_40mhz(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %88 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %87, i32 0, i32 0
  store i32 45, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %79, %73
  br label %221

90:                                               ; preds = %67, %57
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %150, label %93

93:                                               ; preds = %90
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %95 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %97, 5
  br i1 %98, label %99, label %150

99:                                               ; preds = %93
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %101 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %10, align 8
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %99
  %112 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %113 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, -16385
  store i32 %117, i32* %115, align 4
  %118 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %119 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, -16385
  store i32 %123, i32* %121, align 4
  %124 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %125 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, -16385
  store i32 %129, i32* %127, align 4
  %130 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %131 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, -16385
  store i32 %135, i32* %133, align 4
  %136 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %137 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, -16385
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %111, %99
  %141 = load i64, i64* %10, align 8
  %142 = icmp ugt i64 %141, 7
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i64 3, i64* %10, align 8
  br label %144

144:                                              ; preds = %143, %140
  %145 = load i64, i64* %10, align 8
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* @b43_nphy_get_gain_ctl_workaround_ent.gain_data, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %149 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  br label %220

150:                                              ; preds = %93, %90
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %219

153:                                              ; preds = %150
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %155 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 4
  br i1 %158, label %159, label %219

159:                                              ; preds = %153
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %219

162:                                              ; preds = %159
  %163 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %164 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, -16385
  store i32 %168, i32* %166, align 4
  %169 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %170 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, -16385
  store i32 %174, i32* %172, align 4
  %175 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %176 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, -16385
  store i32 %180, i32* %178, align 4
  %181 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %182 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, -16385
  store i32 %186, i32* %184, align 4
  %187 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %188 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, -16385
  store i32 %190, i32* %188, align 8
  %191 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %192 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, 4096
  store i32 %196, i32* %194, align 4
  %197 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %198 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, 4096
  store i32 %202, i32* %200, align 4
  %203 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %204 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, 4096
  store i32 %208, i32* %206, align 4
  %209 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %210 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 3
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, 4096
  store i32 %214, i32* %212, align 4
  %215 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  %216 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, 4096
  store i32 %218, i32* %216, align 8
  br label %219

219:                                              ; preds = %162, %159, %153, %150
  br label %220

220:                                              ; preds = %219, %144
  br label %221

221:                                              ; preds = %220, %89
  %222 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %8, align 8
  store %struct.nphy_gain_ctl_workaround_entry* %222, %struct.nphy_gain_ctl_workaround_entry** %4, align 8
  br label %223

223:                                              ; preds = %221, %25
  %224 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %4, align 8
  ret %struct.nphy_gain_ctl_workaround_entry* %224
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_channel_type_is_40mhz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
