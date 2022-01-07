; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_lo.c_lo_probe_possible_loctls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_lo.c_lo_probe_possible_loctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_loctl = type { i32, i32 }
%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32, i32 }
%struct.b43_lo_g_statemachine = type { i32, i32, i64, i32 }

@__const.lo_probe_possible_loctls.prev_loctl = private unnamed_addr constant %struct.b43_loctl { i32 -100, i32 -100 }, align 4
@lo_probe_possible_loctls.modifiers = internal constant [8 x %struct.b43_loctl] [%struct.b43_loctl { i32 1, i32 1 }, %struct.b43_loctl { i32 1, i32 0 }, %struct.b43_loctl { i32 1, i32 -1 }, %struct.b43_loctl { i32 0, i32 -1 }, %struct.b43_loctl { i32 -1, i32 -1 }, %struct.b43_loctl { i32 -1, i32 0 }, %struct.b43_loctl { i32 -1, i32 1 }, %struct.b43_loctl { i32 0, i32 1 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, %struct.b43_loctl*, %struct.b43_lo_g_statemachine*)* @lo_probe_possible_loctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lo_probe_possible_loctls(%struct.b43_wldev* %0, %struct.b43_loctl* %1, %struct.b43_lo_g_statemachine* %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca %struct.b43_loctl*, align 8
  %6 = alloca %struct.b43_lo_g_statemachine*, align 8
  %7 = alloca %struct.b43_phy*, align 8
  %8 = alloca %struct.b43_phy_g*, align 8
  %9 = alloca %struct.b43_loctl, align 4
  %10 = alloca %struct.b43_loctl, align 4
  %11 = alloca %struct.b43_loctl, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store %struct.b43_loctl* %1, %struct.b43_loctl** %5, align 8
  store %struct.b43_lo_g_statemachine* %2, %struct.b43_lo_g_statemachine** %6, align 8
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 0
  store %struct.b43_phy* %18, %struct.b43_phy** %7, align 8
  %19 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %20 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %19, i32 0, i32 0
  %21 = load %struct.b43_phy_g*, %struct.b43_phy_g** %20, align 8
  store %struct.b43_phy_g* %21, %struct.b43_phy_g** %8, align 8
  %22 = bitcast %struct.b43_loctl* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.b43_loctl* @__const.lo_probe_possible_loctls.prev_loctl to i8*), i64 8, i1 false)
  store i32 0, i32* %15, align 4
  %23 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %24 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  store i32 8, i32* %14, align 4
  br label %53

28:                                               ; preds = %3
  %29 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %30 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = srem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %36 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %40 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %52

43:                                               ; preds = %28
  %44 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %45 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 2
  store i32 %47, i32* %13, align 4
  %48 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %49 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %43, %34
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 8
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %14, align 4
  %61 = icmp sgt i32 %60, 8
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %63, 8
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.b43_loctl*, %struct.b43_loctl** %5, align 8
  %67 = call i32 @memcpy(%struct.b43_loctl* %10, %struct.b43_loctl* %66, i32 8)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %71 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %65, %182
  %73 = load i32, i32* %12, align 4
  %74 = icmp sge i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = icmp sle i32 %76, 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @B43_WARN_ON(i32 %81)
  %83 = call i32 @memcpy(%struct.b43_loctl* %9, %struct.b43_loctl* %10, i32 8)
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [8 x %struct.b43_loctl], [8 x %struct.b43_loctl]* @lo_probe_possible_loctls.modifiers, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %91 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %9, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %93
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x %struct.b43_loctl], [8 x %struct.b43_loctl]* @lo_probe_possible_loctls.modifiers, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %104 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %9, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %9, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %11, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %78
  %116 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %9, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %11, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %169

121:                                              ; preds = %115, %78
  %122 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %9, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = call i32 @abs(i64 %124)
  %126 = icmp sle i32 %125, 16
  br i1 %126, label %127, label %169

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.b43_loctl, %struct.b43_loctl* %9, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 @abs(i64 %130)
  %132 = icmp sle i32 %131, 16
  br i1 %132, label %133, label %169

133:                                              ; preds = %127
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %135 = call i32 @b43_lo_write(%struct.b43_wldev* %134, %struct.b43_loctl* %9)
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %137 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %138 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %141 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  %144 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @lo_measure_feedthrough(%struct.b43_wldev* %136, i32 %139, i32 %142, i32 %145)
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %16, align 8
  %148 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %149 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %147, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %133
  %153 = load %struct.b43_loctl*, %struct.b43_loctl** %5, align 8
  %154 = call i32 @memcpy(%struct.b43_loctl* %153, %struct.b43_loctl* %9, i32 8)
  store i32 1, i32* %15, align 4
  %155 = load i64, i64* %16, align 8
  %156 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %157 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  %158 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %159 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %160, 2
  br i1 %161, label %162, label %167

162:                                              ; preds = %152
  %163 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %164 = call i32 @has_loopback_gain(%struct.b43_phy* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  br label %186

167:                                              ; preds = %162, %152
  br label %168

168:                                              ; preds = %167, %133
  br label %169

169:                                              ; preds = %168, %127, %121, %115
  %170 = call i32 @memcpy(%struct.b43_loctl* %11, %struct.b43_loctl* %9, i32 8)
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %186

175:                                              ; preds = %169
  %176 = load i32, i32* %12, align 4
  %177 = icmp eq i32 %176, 8
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 1, i32* %12, align 4
  br label %182

179:                                              ; preds = %175
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %179, %178
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.b43_lo_g_statemachine*, %struct.b43_lo_g_statemachine** %6, align 8
  %185 = getelementptr inbounds %struct.b43_lo_g_statemachine, %struct.b43_lo_g_statemachine* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  br label %72

186:                                              ; preds = %174, %166
  %187 = load i32, i32* %15, align 4
  ret i32 %187
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.b43_loctl*, %struct.b43_loctl*, i32) #2

declare dso_local i32 @B43_WARN_ON(i32) #2

declare dso_local i32 @abs(i64) #2

declare dso_local i32 @b43_lo_write(%struct.b43_wldev*, %struct.b43_loctl*) #2

declare dso_local i64 @lo_measure_feedthrough(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @has_loopback_gain(%struct.b43_phy*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
