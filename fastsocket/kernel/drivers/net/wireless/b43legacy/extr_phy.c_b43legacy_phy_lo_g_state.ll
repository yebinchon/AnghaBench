; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_lo_g_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_lo_g_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_lopair = type { i32, i32 }
%struct.b43legacy_wldev = type { i32 }

@b43legacy_phy_lo_g_state.transitions = internal constant [8 x %struct.b43legacy_lopair] [%struct.b43legacy_lopair { i32 1, i32 1 }, %struct.b43legacy_lopair { i32 1, i32 0 }, %struct.b43legacy_lopair { i32 1, i32 -1 }, %struct.b43legacy_lopair { i32 0, i32 -1 }, %struct.b43legacy_lopair { i32 -1, i32 -1 }, %struct.b43legacy_lopair { i32 -1, i32 0 }, %struct.b43legacy_lopair { i32 -1, i32 1 }, %struct.b43legacy_lopair { i32 0, i32 1 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, %struct.b43legacy_lopair*, %struct.b43legacy_lopair*, i32)* @b43legacy_phy_lo_g_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_phy_lo_g_state(%struct.b43legacy_wldev* %0, %struct.b43legacy_lopair* %1, %struct.b43legacy_lopair* %2, i32 %3) #0 {
  %5 = alloca %struct.b43legacy_wldev*, align 8
  %6 = alloca %struct.b43legacy_lopair*, align 8
  %7 = alloca %struct.b43legacy_lopair*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43legacy_lopair, align 4
  %10 = alloca %struct.b43legacy_lopair, align 4
  %11 = alloca %struct.b43legacy_lopair, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %5, align 8
  store %struct.b43legacy_lopair* %1, %struct.b43legacy_lopair** %6, align 8
  store %struct.b43legacy_lopair* %2, %struct.b43legacy_lopair** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 0
  %21 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %6, align 8
  %22 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 1
  %25 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %6, align 8
  %26 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  store i32 12, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %29 = call i32 @b43legacy_lo_write(%struct.b43legacy_wldev* %28, %struct.b43legacy_lopair* %9)
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @b43legacy_phy_lo_g_singledeviation(%struct.b43legacy_wldev* %30, i32 %31)
  store i64 %32, i64* %18, align 8
  br label %33

33:                                               ; preds = %162, %4
  store i32 0, i32* %14, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = icmp sle i32 %37, 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ false, %33 ], [ %38, %36 ]
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @B43legacy_WARN_ON(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %16, align 4
  store i32 8, i32* %17, align 4
  br label %62

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  %49 = srem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %17, align 4
  br label %61

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  %58 = sub nsw i32 %57, 2
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 8
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %17, align 4
  %70 = icmp sgt i32 %69, 8
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %17, align 4
  %73 = sub nsw i32 %72, 8
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %15, align 4
  %76 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %10, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %10, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %153
  %83 = load i32, i32* %15, align 4
  %84 = icmp sge i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %15, align 4
  %87 = icmp sle i32 %86, 8
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i1 [ false, %82 ], [ %87, %85 ]
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @B43legacy_WARN_ON(i32 %91)
  %93 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %10, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [8 x %struct.b43legacy_lopair], [8 x %struct.b43legacy_lopair]* @b43legacy_phy_lo_g_state.transitions, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %94, %100
  %102 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %11, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %10, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8 x %struct.b43legacy_lopair], [8 x %struct.b43legacy_lopair]* @b43legacy_phy_lo_g_state.transitions, i64 0, i64 %107
  %109 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %104, %110
  %112 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %11, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %11, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @abs(i32 %114) #3
  %116 = icmp slt i32 %115, 9
  br i1 %116, label %117, label %141

117:                                              ; preds = %88
  %118 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %11, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @abs(i32 %119) #3
  %121 = icmp slt i32 %120, 9
  br i1 %121, label %122, label %141

122:                                              ; preds = %117
  %123 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %124 = call i32 @b43legacy_lo_write(%struct.b43legacy_wldev* %123, %struct.b43legacy_lopair* %11)
  %125 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i64 @b43legacy_phy_lo_g_singledeviation(%struct.b43legacy_wldev* %125, i32 %126)
  store i64 %127, i64* %19, align 8
  %128 = load i64, i64* %19, align 8
  %129 = load i64, i64* %18, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %122
  %132 = load i64, i64* %19, align 8
  store i64 %132, i64* %18, align 8
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %134 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %11, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 0
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %11, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %131, %122
  br label %141

141:                                              ; preds = %140, %117, %88
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %154

146:                                              ; preds = %141
  %147 = load i32, i32* %15, align 4
  %148 = icmp eq i32 %147, 8
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 1, i32* %15, align 4
  br label %153

150:                                              ; preds = %146
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %150, %149
  br label %82

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %12, align 4
  %158 = icmp ne i32 %156, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br label %162

162:                                              ; preds = %159, %155
  %163 = phi i1 [ false, %155 ], [ %161, %159 ]
  br i1 %163, label %33, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %7, align 8
  %168 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %9, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %7, align 8
  %172 = getelementptr inbounds %struct.b43legacy_lopair, %struct.b43legacy_lopair* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  ret void
}

declare dso_local i32 @b43legacy_lo_write(%struct.b43legacy_wldev*, %struct.b43legacy_lopair*) #1

declare dso_local i64 @b43legacy_phy_lo_g_singledeviation(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
