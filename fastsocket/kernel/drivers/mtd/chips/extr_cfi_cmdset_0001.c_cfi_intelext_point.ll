; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0001.c_cfi_intelext_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0001.c_cfi_intelext_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.map_info* }
%struct.map_info = type { i64, i8*, %struct.cfi_private* }
%struct.cfi_private = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)* @cfi_intelext_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_intelext_point(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.map_info*, align 8
  %15 = alloca %struct.cfi_private*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 1
  %23 = load %struct.map_info*, %struct.map_info** %22, align 8
  store %struct.map_info* %23, %struct.map_info** %14, align 8
  %24 = load %struct.map_info*, %struct.map_info** %14, align 8
  %25 = getelementptr inbounds %struct.map_info, %struct.map_info* %24, i32 0, i32 2
  %26 = load %struct.cfi_private*, %struct.cfi_private** %25, align 8
  store %struct.cfi_private* %26, %struct.cfi_private** %15, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.map_info*, %struct.map_info** %14, align 8
  %28 = getelementptr inbounds %struct.map_info, %struct.map_info* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %6
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %32, %33
  %35 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31, %6
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %182

42:                                               ; preds = %31
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %45 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = lshr i64 %43, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %18, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %52 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %50, %54
  %56 = sext i32 %55 to i64
  %57 = sub i64 %49, %56
  store i64 %57, i64* %16, align 8
  %58 = load %struct.map_info*, %struct.map_info** %14, align 8
  %59 = getelementptr inbounds %struct.map_info, %struct.map_info* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %62 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr i8, i8* %60, i64 %68
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr i8, i8* %69, i64 %70
  %72 = load i8**, i8*** %12, align 8
  store i8* %71, i8** %72, align 8
  %73 = load i64*, i64** %11, align 8
  store i64 0, i64* %73, align 8
  %74 = load i64*, i64** %13, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %92

76:                                               ; preds = %42
  %77 = load %struct.map_info*, %struct.map_info** %14, align 8
  %78 = getelementptr inbounds %struct.map_info, %struct.map_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %81 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %79, %87
  %89 = load i64, i64* %16, align 8
  %90 = add i64 %88, %89
  %91 = load i64*, i64** %13, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %76, %42
  br label %93

93:                                               ; preds = %163, %92
  %94 = load i64, i64* %10, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %181

96:                                               ; preds = %93
  %97 = load i32, i32* %18, align 4
  %98 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %99 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %181

103:                                              ; preds = %96
  %104 = load i64, i64* %17, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %108 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %17, align 8
  br label %128

115:                                              ; preds = %103
  %116 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %117 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %17, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %181

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %106
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* %16, align 8
  %131 = add i64 %129, %130
  %132 = sub i64 %131, 1
  %133 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %134 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = lshr i64 %132, %135
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %128
  %139 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %140 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = shl i32 1, %142
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %16, align 8
  %146 = sub i64 %144, %145
  store i64 %146, i64* %20, align 8
  br label %149

147:                                              ; preds = %128
  %148 = load i64, i64* %10, align 8
  store i64 %148, i64* %20, align 8
  br label %149

149:                                              ; preds = %147, %138
  %150 = load %struct.map_info*, %struct.map_info** %14, align 8
  %151 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %152 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* %20, align 8
  %159 = call i32 @do_point_onechip(%struct.map_info* %150, %struct.TYPE_2__* %156, i64 %157, i64 %158)
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %19, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  br label %181

163:                                              ; preds = %149
  %164 = load i64, i64* %20, align 8
  %165 = load i64*, i64** %11, align 8
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, %164
  store i64 %167, i64* %165, align 8
  %168 = load i64, i64* %20, align 8
  %169 = load i64, i64* %10, align 8
  %170 = sub i64 %169, %168
  store i64 %170, i64* %10, align 8
  store i64 0, i64* %16, align 8
  %171 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %172 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = shl i32 1, %174
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %17, align 8
  %178 = add i64 %177, %176
  store i64 %178, i64* %17, align 8
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %18, align 4
  br label %93

181:                                              ; preds = %162, %126, %102, %93
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %181, %39
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @do_point_onechip(%struct.map_info*, %struct.TYPE_2__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
