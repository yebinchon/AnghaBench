; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_mark_bbt_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_mark_bbt_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.nand_chip* }
%struct.nand_chip = type { i32, i32, i32, i32, i32* }
%struct.nand_bbt_descr = type { i32, i32*, i32, i64 }

@NAND_BBT_PERCHIP = common dso_local global i32 0, align 4
@NAND_BBT_ABSPAGE = common dso_local global i32 0, align 4
@NAND_BBT_WRITE = common dso_local global i32 0, align 4
@NAND_BBT_LASTBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, %struct.nand_bbt_descr*)* @mark_bbt_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_bbt_region(%struct.mtd_info* %0, %struct.nand_bbt_descr* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_bbt_descr*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.nand_bbt_descr* %1, %struct.nand_bbt_descr** %4, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 1
  %16 = load %struct.nand_chip*, %struct.nand_chip** %15, align 8
  store %struct.nand_chip* %16, %struct.nand_chip** %5, align 8
  %17 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %18 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %29, %32
  store i32 %33, i32* %10, align 4
  br label %42

34:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %35 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %37, %40
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %34, %23
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %208, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %211

47:                                               ; preds = %43
  %48 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %49 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NAND_BBT_ABSPAGE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %56 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NAND_BBT_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %128, label %61

61:                                               ; preds = %54, %47
  %62 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %63 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %208

71:                                               ; preds = %61
  %72 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %73 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %83 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  %86 = ashr i32 %78, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = shl i32 %87, 1
  store i32 %88, i32* %9, align 4
  %89 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 3
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 6
  %100 = shl i32 2, %99
  %101 = or i32 %97, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %104 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = ashr i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 %102, i32* %109, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %71
  %114 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %115 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %122 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 %120, %124
  %126 = call i32 @nand_update_bbt(%struct.mtd_info* %119, i32 %125)
  br label %127

127:                                              ; preds = %118, %113, %71
  br label %208

128:                                              ; preds = %54
  store i32 0, i32* %11, align 4
  %129 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %130 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @NAND_BBT_LASTBLOCK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* %10, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %141 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %139, %142
  store i32 %143, i32* %9, align 4
  br label %148

144:                                              ; preds = %128
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %10, align 4
  %147 = mul nsw i32 %145, %146
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %144, %135
  %149 = load i32, i32* %9, align 4
  %150 = shl i32 %149, 1
  store i32 %150, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %186, %148
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %154 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %189

157:                                              ; preds = %151
  %158 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %159 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = ashr i32 %161, 3
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %9, align 4
  %168 = and i32 %167, 6
  %169 = shl i32 2, %168
  %170 = or i32 %166, %169
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %173 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = ashr i32 %175, 3
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %171, i32* %178, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %157
  store i32 1, i32* %11, align 4
  br label %183

183:                                              ; preds = %182, %157
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 2
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %151

189:                                              ; preds = %151
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %189
  %193 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %4, align 8
  %194 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sub nsw i32 %199, 2
  %201 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %202 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = sub nsw i32 %203, 1
  %205 = shl i32 %200, %204
  %206 = call i32 @nand_update_bbt(%struct.mtd_info* %198, i32 %205)
  br label %207

207:                                              ; preds = %197, %192, %189
  br label %208

208:                                              ; preds = %207, %127, %70
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %43

211:                                              ; preds = %43
  ret void
}

declare dso_local i32 @nand_update_bbt(%struct.mtd_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
