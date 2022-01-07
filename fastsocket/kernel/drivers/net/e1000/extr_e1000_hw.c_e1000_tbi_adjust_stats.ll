; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_tbi_adjust_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_tbi_adjust_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }
%struct.e1000_hw_stats = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_tbi_adjust_stats(%struct.e1000_hw* %0, %struct.e1000_hw_stats* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.e1000_hw_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store %struct.e1000_hw_stats* %1, %struct.e1000_hw_stats** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %7, align 4
  %12 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %13 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %17 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %21 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 -2147483648, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %26 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %4
  %32 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %33 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, -2147483648
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %39 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %31, %4
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 255
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i64*, i64** %8, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 255
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %54 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %68

57:                                               ; preds = %47, %42
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %59, 1
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %64 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %76 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %81 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %79, %74
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 64
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %90 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %94 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 8
  br label %158

97:                                               ; preds = %85
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 127
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %102 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %106 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  br label %157

109:                                              ; preds = %97
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 255
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %114 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %118 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %118, align 8
  br label %156

121:                                              ; preds = %109
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %122, 511
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %126 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %130 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %130, align 4
  br label %155

133:                                              ; preds = %121
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 1023
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %138 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %142 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %142, align 8
  br label %154

145:                                              ; preds = %133
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 1522
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.e1000_hw_stats*, %struct.e1000_hw_stats** %6, align 8
  %150 = getelementptr inbounds %struct.e1000_hw_stats, %struct.e1000_hw_stats* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %148, %145
  br label %154

154:                                              ; preds = %153, %136
  br label %155

155:                                              ; preds = %154, %124
  br label %156

156:                                              ; preds = %155, %112
  br label %157

157:                                              ; preds = %156, %100
  br label %158

158:                                              ; preds = %157, %88
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
