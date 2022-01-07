; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_mem_detect.c_create_mem_hole.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_mem_detect.c_create_mem_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_chunk = type { i64, i64, i32 }

@MEMORY_CHUNKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_mem_hole(%struct.mem_chunk* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mem_chunk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mem_chunk* %0, %struct.mem_chunk** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %199, %4
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* @MEMORY_CHUNKS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %202

21:                                               ; preds = %17
  %22 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %23 = load i32, i32* %15, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %22, i64 %24
  %26 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %199

30:                                               ; preds = %21
  %31 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %31, i64 %33
  %35 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %37, i64 %39
  %41 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %43, %44
  %46 = sub i64 %45, 1
  store i64 %46, i64* %13, align 8
  %47 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %47, i64 %49
  %51 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %16, align 4
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %12, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %30
  br label %199

59:                                               ; preds = %30
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %199

64:                                               ; preds = %59
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %66, i64 %68
  %70 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @max(i64 %65, i64 %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %73, %74
  %76 = sub i64 %75, 1
  %77 = load i64, i64* %13, align 8
  %78 = call i64 @min(i64 %76, i64 %77)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %79, %80
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %64
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %91, i64 %93
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @mem_chunk_init(%struct.mem_chunk* %94, i64 %95, i64 %96, i32 %97)
  br label %198

99:                                               ; preds = %86, %64
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %13, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @mem_chunk_move(%struct.mem_chunk* %104, i32 %106, i32 %107)
  %109 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %109, i64 %111
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %11, align 8
  %116 = sub i64 %114, %115
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @mem_chunk_init(%struct.mem_chunk* %112, i64 %113, i64 %116, i32 %117)
  %119 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %119, i64 %122
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @mem_chunk_init(%struct.mem_chunk* %123, i64 %124, i64 %125, i32 %126)
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %197

130:                                              ; preds = %99
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %12, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %130
  %135 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @mem_chunk_move(%struct.mem_chunk* %135, i32 %137, i32 %138)
  %140 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %140, i64 %142
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %11, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @mem_chunk_init(%struct.mem_chunk* %143, i64 %144, i64 %145, i32 %146)
  %148 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %148, i64 %151
  %153 = load i64, i64* %10, align 8
  %154 = add i64 %153, 1
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %11, align 8
  %157 = sub i64 %155, %156
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @mem_chunk_init(%struct.mem_chunk* %152, i64 %154, i64 %157, i32 %158)
  br label %202

160:                                              ; preds = %130
  %161 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 2
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @mem_chunk_move(%struct.mem_chunk* %161, i32 %163, i32 %164)
  %166 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %166, i64 %168
  %170 = load i64, i64* %12, align 8
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* %12, align 8
  %173 = sub i64 %171, %172
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @mem_chunk_init(%struct.mem_chunk* %169, i64 %170, i64 %173, i32 %174)
  %176 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %176, i64 %179
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* %11, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @mem_chunk_init(%struct.mem_chunk* %180, i64 %181, i64 %182, i32 %183)
  %185 = load %struct.mem_chunk*, %struct.mem_chunk** %5, align 8
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 2
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.mem_chunk, %struct.mem_chunk* %185, i64 %188
  %190 = load i64, i64* %10, align 8
  %191 = add i64 %190, 1
  %192 = load i64, i64* %13, align 8
  %193 = load i64, i64* %10, align 8
  %194 = sub i64 %192, %193
  %195 = load i32, i32* %16, align 4
  %196 = call i32 @mem_chunk_init(%struct.mem_chunk* %189, i64 %191, i64 %194, i32 %195)
  br label %202

197:                                              ; preds = %103
  br label %198

198:                                              ; preds = %197, %90
  br label %199

199:                                              ; preds = %198, %63, %58, %29
  %200 = load i32, i32* %15, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %15, align 4
  br label %17

202:                                              ; preds = %160, %134, %17
  ret void
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @mem_chunk_init(%struct.mem_chunk*, i64, i64, i32) #1

declare dso_local i32 @mem_chunk_move(%struct.mem_chunk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
