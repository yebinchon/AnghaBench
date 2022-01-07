; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_point.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.map_info* }
%struct.map_info = type { i64, %struct.lpddr_private* }
%struct.lpddr_private = type { i64, i32, %struct.flchip* }
%struct.flchip = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FL_POINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i32*)* @lpddr_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr_point(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.map_info*, align 8
  %15 = alloca %struct.lpddr_private*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.flchip*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 1
  %24 = load %struct.map_info*, %struct.map_info** %23, align 8
  store %struct.map_info* %24, %struct.map_info** %14, align 8
  %25 = load %struct.map_info*, %struct.map_info** %14, align 8
  %26 = getelementptr inbounds %struct.map_info, %struct.map_info* %25, i32 0, i32 1
  %27 = load %struct.lpddr_private*, %struct.lpddr_private** %26, align 8
  store %struct.lpddr_private* %27, %struct.lpddr_private** %15, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %30 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = ashr i64 %28, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %16, align 4
  store i64 0, i64* %18, align 8
  %34 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %35 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %34, i32 0, i32 2
  %36 = load %struct.flchip*, %struct.flchip** %35, align 8
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.flchip, %struct.flchip* %36, i64 %38
  store %struct.flchip* %39, %struct.flchip** %19, align 8
  store i32 0, i32* %20, align 4
  %40 = load %struct.map_info*, %struct.map_info** %14, align 8
  %41 = getelementptr inbounds %struct.map_info, %struct.map_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %6
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %45, %46
  %48 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ugt i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44, %6
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %171

55:                                               ; preds = %44
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %59 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %57, %61
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %56, %63
  store i64 %64, i64* %17, align 8
  %65 = load %struct.map_info*, %struct.map_info** %14, align 8
  %66 = getelementptr inbounds %struct.map_info, %struct.map_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.flchip*, %struct.flchip** %19, align 8
  %70 = getelementptr inbounds %struct.flchip, %struct.flchip* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr i8, i8* %68, i64 %71
  %73 = load i64, i64* %17, align 8
  %74 = getelementptr i8, i8* %72, i64 %73
  %75 = load i8**, i8*** %12, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i64*, i64** %11, align 8
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %139, %55
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %170

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %83 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %170

87:                                               ; preds = %80
  %88 = load i64, i64* %18, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load %struct.flchip*, %struct.flchip** %19, align 8
  %92 = getelementptr inbounds %struct.flchip, %struct.flchip* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %18, align 8
  br label %102

94:                                               ; preds = %87
  %95 = load %struct.flchip*, %struct.flchip** %19, align 8
  %96 = getelementptr inbounds %struct.flchip, %struct.flchip* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %18, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %170

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %90
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %17, align 8
  %105 = add i64 %103, %104
  %106 = sub i64 %105, 1
  %107 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %108 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = lshr i64 %106, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %102
  %113 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %114 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = shl i32 1, %116
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %17, align 8
  %120 = sub i64 %118, %119
  store i64 %120, i64* %21, align 8
  br label %123

121:                                              ; preds = %102
  %122 = load i64, i64* %10, align 8
  store i64 %122, i64* %21, align 8
  br label %123

123:                                              ; preds = %121, %112
  %124 = load %struct.flchip*, %struct.flchip** %19, align 8
  %125 = getelementptr inbounds %struct.flchip, %struct.flchip* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @spin_lock(i32 %126)
  %128 = load %struct.map_info*, %struct.map_info** %14, align 8
  %129 = load %struct.flchip*, %struct.flchip** %19, align 8
  %130 = load i32, i32* @FL_POINT, align 4
  %131 = call i32 @get_chip(%struct.map_info* %128, %struct.flchip* %129, i32 %130)
  store i32 %131, i32* %20, align 4
  %132 = load %struct.flchip*, %struct.flchip** %19, align 8
  %133 = getelementptr inbounds %struct.flchip, %struct.flchip* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @spin_unlock(i32 %134)
  %136 = load i32, i32* %20, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %123
  br label %170

139:                                              ; preds = %123
  %140 = load i32, i32* @FL_POINT, align 4
  %141 = load %struct.flchip*, %struct.flchip** %19, align 8
  %142 = getelementptr inbounds %struct.flchip, %struct.flchip* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load %struct.flchip*, %struct.flchip** %19, align 8
  %144 = getelementptr inbounds %struct.flchip, %struct.flchip* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load i64, i64* %21, align 8
  %148 = load i64*, i64** %11, align 8
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, %147
  store i64 %150, i64* %148, align 8
  %151 = load i64, i64* %21, align 8
  %152 = load i64, i64* %10, align 8
  %153 = sub i64 %152, %151
  store i64 %153, i64* %10, align 8
  store i64 0, i64* %17, align 8
  %154 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %155 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = shl i32 1, %157
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %18, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %18, align 8
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  %164 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %165 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %164, i32 0, i32 2
  %166 = load %struct.flchip*, %struct.flchip** %165, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.flchip, %struct.flchip* %166, i64 %168
  store %struct.flchip* %169, %struct.flchip** %19, align 8
  br label %77

170:                                              ; preds = %138, %100, %86, %77
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %170, %52
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @get_chip(%struct.map_info*, %struct.flchip*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
