; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_find_virt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_find_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { %struct.geom }
%struct.geom = type { i32, i32, i64, i64, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.r10conf*, i64, i32)* @raid10_find_virt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @raid10_find_virt(%struct.r10conf* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.r10conf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.geom*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.r10conf* %0, %struct.r10conf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %16 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %15, i32 0, i32 0
  store %struct.geom* %16, %struct.geom** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.geom*, %struct.geom** %10, align 8
  %19 = getelementptr inbounds %struct.geom, %struct.geom* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %17, %20
  %22 = load %struct.geom*, %struct.geom** %10, align 8
  %23 = getelementptr inbounds %struct.geom, %struct.geom* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.geom*, %struct.geom** %10, align 8
  %27 = getelementptr inbounds %struct.geom, %struct.geom* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.geom*, %struct.geom** %10, align 8
  %30 = getelementptr inbounds %struct.geom, %struct.geom* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.geom*, %struct.geom** %10, align 8
  %33 = getelementptr inbounds %struct.geom, %struct.geom* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %3
  %38 = load %struct.geom*, %struct.geom** %10, align 8
  %39 = getelementptr inbounds %struct.geom, %struct.geom* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.geom*, %struct.geom** %10, align 8
  %42 = getelementptr inbounds %struct.geom, %struct.geom* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %40, %43
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  %46 = load %struct.geom*, %struct.geom** %10, align 8
  %47 = getelementptr inbounds %struct.geom, %struct.geom* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %37
  %55 = load %struct.geom*, %struct.geom** %10, align 8
  %56 = getelementptr inbounds %struct.geom, %struct.geom* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %12, align 4
  %58 = load %struct.geom*, %struct.geom** %10, align 8
  %59 = getelementptr inbounds %struct.geom, %struct.geom* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.geom*, %struct.geom** %10, align 8
  %62 = getelementptr inbounds %struct.geom, %struct.geom* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = srem i32 %60, %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %54, %37
  br label %69

69:                                               ; preds = %68, %3
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.geom*, %struct.geom** %10, align 8
  %72 = getelementptr inbounds %struct.geom, %struct.geom* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %70, %73
  store i64 %74, i64* %7, align 8
  %75 = load %struct.geom*, %struct.geom** %10, align 8
  %76 = getelementptr inbounds %struct.geom, %struct.geom* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %69
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.geom*, %struct.geom** %10, align 8
  %82 = getelementptr inbounds %struct.geom, %struct.geom* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = ashr i64 %80, %83
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.geom*, %struct.geom** %10, align 8
  %87 = getelementptr inbounds %struct.geom, %struct.geom* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @sector_div(i64 %85, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.geom*, %struct.geom** %10, align 8
  %92 = getelementptr inbounds %struct.geom, %struct.geom* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %79
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %79
  br label %146

105:                                              ; preds = %69
  br label %106

106:                                              ; preds = %139, %105
  %107 = load i64, i64* %5, align 8
  %108 = load %struct.geom*, %struct.geom** %10, align 8
  %109 = getelementptr inbounds %struct.geom, %struct.geom* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp sge i64 %107, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %106
  %113 = load %struct.geom*, %struct.geom** %10, align 8
  %114 = getelementptr inbounds %struct.geom, %struct.geom* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = sub nsw i64 %116, %115
  store i64 %117, i64* %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.geom*, %struct.geom** %10, align 8
  %120 = getelementptr inbounds %struct.geom, %struct.geom* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %121, %122
  %124 = icmp slt i32 %118, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %112
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.geom*, %struct.geom** %10, align 8
  %128 = getelementptr inbounds %struct.geom, %struct.geom* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %126, %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %139

133:                                              ; preds = %112
  %134 = load %struct.geom*, %struct.geom** %10, align 8
  %135 = getelementptr inbounds %struct.geom, %struct.geom* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %133, %125
  br label %106

140:                                              ; preds = %106
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.geom*, %struct.geom** %10, align 8
  %143 = getelementptr inbounds %struct.geom, %struct.geom* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = ashr i64 %141, %144
  store i64 %145, i64* %8, align 8
  br label %146

146:                                              ; preds = %140, %104
  %147 = load i64, i64* %8, align 8
  %148 = load %struct.geom*, %struct.geom** %10, align 8
  %149 = getelementptr inbounds %struct.geom, %struct.geom* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %147, %151
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  store i64 %155, i64* %9, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load %struct.geom*, %struct.geom** %10, align 8
  %158 = getelementptr inbounds %struct.geom, %struct.geom* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @sector_div(i64 %156, i32 %159)
  %161 = load i64, i64* %9, align 8
  %162 = load %struct.geom*, %struct.geom** %10, align 8
  %163 = getelementptr inbounds %struct.geom, %struct.geom* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = shl i64 %161, %164
  %166 = load i64, i64* %7, align 8
  %167 = add nsw i64 %165, %166
  ret i64 %167
}

declare dso_local i32 @sector_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
