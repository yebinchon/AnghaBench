; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/prom/extr_ranges.c_prom_adjust_ranges.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/prom/extr_ranges.c_prom_adjust_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_prom_ranges = type { i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"adjust_ranges: Could not find matching bus type...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prom_adjust_ranges(%struct.linux_prom_ranges* %0, i32 %1, %struct.linux_prom_ranges* %2, i32 %3) #0 {
  %5 = alloca %struct.linux_prom_ranges*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.linux_prom_ranges*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.linux_prom_ranges* %0, %struct.linux_prom_ranges** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.linux_prom_ranges* %2, %struct.linux_prom_ranges** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %166, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %169

15:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %73, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %21, i64 %23
  %25 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %27, i64 %29
  %31 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %26, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %20
  %35 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %35, i64 %37
  %39 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %41, i64 %43
  %45 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %40, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %34
  %49 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %49, i64 %51
  %53 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %55, i64 %57
  %59 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %54, %61
  %63 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %63, i64 %65
  %67 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %62, %68
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %48
  br label %76

72:                                               ; preds = %48, %34, %20
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %16

76:                                               ; preds = %71, %16
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @prom_printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %141

82:                                               ; preds = %76
  %83 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %83, i64 %85
  %87 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %89, i64 %91
  %93 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = zext i32 %94 to i64
  %96 = add nsw i64 %88, %95
  %97 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %97, i64 %99
  %101 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %103, i64 %105
  %107 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = zext i32 %108 to i64
  %110 = add nsw i64 %102, %109
  %111 = icmp sgt i64 %96, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %82
  %113 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %113, i64 %115
  %117 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %119, i64 %121
  %123 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = zext i32 %124 to i64
  %126 = add nsw i64 %118, %125
  %127 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %127, i64 %129
  %131 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %126, %132
  %134 = trunc i64 %133 to i32
  %135 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %135, i64 %137
  %139 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %138, i32 0, i32 4
  store i32 %134, i32* %139, align 8
  br label %140

140:                                              ; preds = %112, %82
  br label %141

141:                                              ; preds = %140, %80
  %142 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %142, i64 %144
  %146 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %5, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %148, i64 %150
  %152 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %151, i32 0, i32 0
  store i64 %147, i64* %152, align 8
  %153 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %7, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %153, i64 %155
  %157 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.linux_prom_ranges*, %struct.linux_prom_ranges** %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %159, i64 %161
  %163 = getelementptr inbounds %struct.linux_prom_ranges, %struct.linux_prom_ranges* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %158
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %141
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %11

169:                                              ; preds = %11
  ret void
}

declare dso_local i32 @prom_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
