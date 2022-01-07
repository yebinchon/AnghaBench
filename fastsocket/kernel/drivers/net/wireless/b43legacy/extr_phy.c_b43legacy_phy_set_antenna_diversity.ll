; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_set_antenna_diversity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_phy.c_b43legacy_phy_set_antenna_diversity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_4__*, %struct.b43legacy_phy }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.b43legacy_phy = type { i32, i32, i32 }

@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_UCODEFLAGS_OFFSET = common dso_local global i32 0, align 4
@B43legacy_UCODEFLAG_AUTODIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_phy_set_antenna_diversity(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 1
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %3, align 8
  %10 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %11 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 65535
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 3
  %19 = zext i1 %18 to i32
  %20 = call i32 @B43legacy_WARN_ON(i32 %19)
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %22 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %23 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %24 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %26 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %27 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @B43legacy_UCODEFLAG_AUTODIV, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @b43legacy_shm_write32(%struct.b43legacy_wldev* %25, i32 %26, i32 %27, i32 %31)
  %33 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %34 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %197 [
    i32 128, label %36
    i32 129, label %177
  ]

36:                                               ; preds = %16
  store i32 1024, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 384, i32* %6, align 4
  br label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 %41, 7
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %47, i32 %49)
  %51 = and i32 %50, 32383
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %44, i32 %46, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 2
  br i1 %56, label %57, label %76

57:                                               ; preds = %43
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = shl i32 %61, 7
  store i32 %62, i32* %6, align 4
  br label %64

63:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 43
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 43
  %71 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %68, i32 %70)
  %72 = and i32 %71, 65279
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %65, i32 %67, i32 %74)
  br label %76

76:                                               ; preds = %64, %43
  %77 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %78 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %81, label %138

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  %83 = icmp sge i32 %82, 2
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %87 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %86, i32 1164)
  %88 = or i32 %87, 8192
  %89 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %85, i32 1164, i32 %88)
  br label %96

90:                                               ; preds = %81
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %93 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %92, i32 1164)
  %94 = and i32 %93, -8193
  %95 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %91, i32 1164, i32 %94)
  br label %96

96:                                               ; preds = %90, %84
  %97 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %98 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 2
  br i1 %100, label %101, label %128

101:                                              ; preds = %96
  %102 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %103 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %104 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %103, i32 1121)
  %105 = or i32 %104, 16
  %106 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %102, i32 1121, i32 %105)
  %107 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %109 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %108, i32 1197)
  %110 = and i32 %109, 255
  %111 = or i32 %110, 21
  %112 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %107, i32 1197, i32 %111)
  %113 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %114 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %120

117:                                              ; preds = %101
  %118 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %119 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %118, i32 1063, i32 8)
  br label %127

120:                                              ; preds = %101
  %121 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %122 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %123 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %122, i32 1063)
  %124 = and i32 %123, 255
  %125 = or i32 %124, 8
  %126 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %121, i32 1063, i32 %125)
  br label %127

127:                                              ; preds = %120, %117
  br label %137

128:                                              ; preds = %96
  %129 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %130 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %131, 6
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %135 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %134, i32 1179, i32 220)
  br label %136

136:                                              ; preds = %133, %128
  br label %137

137:                                              ; preds = %136, %127
  br label %176

138:                                              ; preds = %76
  %139 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %140 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %141, 3
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %145 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %146 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %145, i32 43)
  %147 = and i32 %146, 255
  %148 = or i32 %147, 36
  %149 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %144, i32 43, i32 %148)
  br label %175

150:                                              ; preds = %138
  %151 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %152 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %153 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %152, i32 97)
  %154 = or i32 %153, 16
  %155 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %151, i32 97, i32 %154)
  %156 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %157 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 3
  br i1 %159, label %160, label %165

160:                                              ; preds = %150
  %161 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %162 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %161, i32 147, i32 29)
  %163 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %164 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %163, i32 39, i32 8)
  br label %174

165:                                              ; preds = %150
  %166 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %167 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %166, i32 147, i32 58)
  %168 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %169 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %170 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %169, i32 39)
  %171 = and i32 %170, 255
  %172 = or i32 %171, 8
  %173 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %168, i32 39, i32 %172)
  br label %174

174:                                              ; preds = %165, %160
  br label %175

175:                                              ; preds = %174, %143
  br label %176

176:                                              ; preds = %175, %137
  br label %199

177:                                              ; preds = %16
  %178 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %179 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  store i32 384, i32* %6, align 4
  br label %189

186:                                              ; preds = %177
  %187 = load i32, i32* %4, align 4
  %188 = shl i32 %187, 7
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %186, %185
  %190 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %191 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %192 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %191, i32 994)
  %193 = and i32 %192, 65151
  %194 = load i32, i32* %6, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %190, i32 994, i32 %195)
  br label %199

197:                                              ; preds = %16
  %198 = call i32 @B43legacy_WARN_ON(i32 1)
  br label %199

199:                                              ; preds = %197, %189, %176
  %200 = load i32, i32* %4, align 4
  %201 = icmp sge i32 %200, 2
  br i1 %201, label %202, label %214

202:                                              ; preds = %199
  %203 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %204 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %205 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %206 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %203, i32 %204, i32 %205)
  store i32 %206, i32* %7, align 4
  %207 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %208 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %209 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @B43legacy_UCODEFLAG_AUTODIV, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @b43legacy_shm_write32(%struct.b43legacy_wldev* %207, i32 %208, i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %202, %199
  %215 = load i32, i32* %4, align 4
  %216 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %217 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_shm_read32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_write32(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
