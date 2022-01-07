; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-add.c_mpi_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-add.c_mpi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_add(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %15, align 4
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %13, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @RESIZE_IF_NEEDED(%struct.TYPE_6__* %40, i64 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %178

47:                                               ; preds = %25
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  store i64* %50, i64** %9, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  store i64* %53, i64** %10, align 8
  br label %83

54:                                               ; preds = %3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %14, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %12, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %15, align 4
  %67 = load i64, i64* %11, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %13, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i64 @RESIZE_IF_NEEDED(%struct.TYPE_6__* %69, i64 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %54
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %178

76:                                               ; preds = %54
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  store i64* %79, i64** %9, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  store i64* %82, i64** %10, align 8
  br label %83

83:                                               ; preds = %76, %47
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  store i64* %86, i64** %8, align 8
  store i32 0, i32* %16, align 4
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %83
  %90 = load i64*, i64** %8, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @MPN_COPY(i64* %90, i64* %91, i64 %92)
  %94 = load i64, i64* %11, align 8
  store i64 %94, i64* %13, align 8
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %16, align 4
  br label %171

96:                                               ; preds = %83
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %152

100:                                              ; preds = %96
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %12, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i64*, i64** %8, align 8
  %106 = load i64*, i64** %9, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @mpihelp_sub(i64* %105, i64* %106, i64 %107, i64* %108, i64 %109)
  %111 = load i64, i64* %11, align 8
  store i64 %111, i64* %13, align 8
  %112 = load i64*, i64** %8, align 8
  %113 = load i64, i64* %13, align 8
  %114 = call i32 @MPN_NORMALIZE(i64* %112, i64 %113)
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %16, align 4
  br label %151

116:                                              ; preds = %100
  %117 = load i64*, i64** %9, align 8
  %118 = load i64*, i64** %10, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i64 @mpihelp_cmp(i64* %117, i64* %118, i64 %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %116
  %123 = load i64*, i64** %8, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @mpihelp_sub_n(i64* %123, i64* %124, i64* %125, i64 %126)
  %128 = load i64, i64* %11, align 8
  store i64 %128, i64* %13, align 8
  %129 = load i64*, i64** %8, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @MPN_NORMALIZE(i64* %129, i64 %130)
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %122
  store i32 1, i32* %16, align 4
  br label %135

135:                                              ; preds = %134, %122
  br label %150

136:                                              ; preds = %116
  %137 = load i64*, i64** %8, align 8
  %138 = load i64*, i64** %9, align 8
  %139 = load i64*, i64** %10, align 8
  %140 = load i64, i64* %11, align 8
  %141 = call i32 @mpihelp_sub_n(i64* %137, i64* %138, i64* %139, i64 %140)
  %142 = load i64, i64* %11, align 8
  store i64 %142, i64* %13, align 8
  %143 = load i64*, i64** %8, align 8
  %144 = load i64, i64* %13, align 8
  %145 = call i32 @MPN_NORMALIZE(i64* %143, i64 %144)
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  store i32 1, i32* %16, align 4
  br label %149

149:                                              ; preds = %148, %136
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150, %104
  br label %170

152:                                              ; preds = %96
  %153 = load i64*, i64** %8, align 8
  %154 = load i64*, i64** %9, align 8
  %155 = load i64, i64* %11, align 8
  %156 = load i64*, i64** %10, align 8
  %157 = load i64, i64* %12, align 8
  %158 = call i64 @mpihelp_add(i64* %153, i64* %154, i64 %155, i64* %156, i64 %157)
  store i64 %158, i64* %17, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load i64*, i64** %8, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  store i64 %159, i64* %162, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load i64, i64* %17, align 8
  %165 = add nsw i64 %163, %164
  store i64 %165, i64* %13, align 8
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %152
  store i32 1, i32* %16, align 4
  br label %169

169:                                              ; preds = %168, %152
  br label %170

170:                                              ; preds = %169, %151
  br label %171

171:                                              ; preds = %170, %89
  %172 = load i64, i64* %13, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load i32, i32* %16, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %171, %73, %44
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i64 @RESIZE_IF_NEEDED(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @MPN_COPY(i64*, i64*, i64) #1

declare dso_local i32 @mpihelp_sub(i64*, i64*, i64, i64*, i64) #1

declare dso_local i32 @MPN_NORMALIZE(i64*, i64) #1

declare dso_local i64 @mpihelp_cmp(i64*, i64*, i64) #1

declare dso_local i32 @mpihelp_sub_n(i64*, i64*, i64*, i64) #1

declare dso_local i64 @mpihelp_add(i64*, i64*, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
