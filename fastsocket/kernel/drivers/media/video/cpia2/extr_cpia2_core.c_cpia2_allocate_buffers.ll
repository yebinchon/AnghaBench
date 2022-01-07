; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_allocate_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_allocate_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, i64, i64, i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"couldn't kmalloc frame buffer structures\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"couldn't vmalloc frame buffer data area\0A\00", align 1
@FRAME_EMPTY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"buffers=%p, curbuff=%p, workbuff=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_allocate_buffers(%struct.camera_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camera_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %3, align 8
  %6 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %7 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %6, i32 0, i32 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %12 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_6__* @kmalloc(i32 %17, i32 %18)
  %20 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %21 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %20, i32 0, i32 4
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %21, align 8
  %22 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %23 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %22, i32 0, i32 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %10
  %27 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %215

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %33 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %31
  %37 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %38 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %41 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = call i64 @rvmalloc(i32 %43)
  %45 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %46 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %48 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %36
  %52 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %54 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %53, i32 0, i32 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @kfree(%struct.TYPE_6__* %55)
  %57 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %58 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %57, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %58, align 8
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %215

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61, %31
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %132, %62
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %66 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %135

70:                                               ; preds = %63
  %71 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %72 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %71, i32 0, i32 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %76
  %78 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %79 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %84, align 8
  %85 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %86 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %90 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %87, %93
  %95 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %96 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 5
  store i64 %94, i64* %101, align 8
  %102 = load i8*, i8** @FRAME_EMPTY, align 8
  %103 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %104 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %103, i32 0, i32 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  store i8* %102, i8** %109, align 8
  %110 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %111 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %110, i32 0, i32 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %118 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %117, i32 0, i32 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %126 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %125, i32 0, i32 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 %124, i32* %131, align 8
  br label %132

132:                                              ; preds = %70
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %63

135:                                              ; preds = %63
  %136 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %137 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %136, i32 0, i32 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %140 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %139, i32 0, i32 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %145, align 8
  %146 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %147 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %151 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %149, %152
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %148, %154
  %156 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %157 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %156, i32 0, i32 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 5
  store i64 %155, i64* %162, align 8
  %163 = load i8*, i8** @FRAME_EMPTY, align 8
  %164 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %165 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %164, i32 0, i32 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 4
  store i8* %163, i8** %170, align 8
  %171 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %172 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %171, i32 0, i32 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  store i64 0, i64* %177, align 8
  %178 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %179 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %178, i32 0, i32 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  store i64 0, i64* %184, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %187 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %186, i32 0, i32 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  store i32 %185, i32* %192, align 8
  %193 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %194 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %193, i32 0, i32 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %197 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %196, i32 0, i32 3
  store %struct.TYPE_6__* %195, %struct.TYPE_6__** %197, align 8
  %198 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %199 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %198, i32 0, i32 3
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %204 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %203, i32 0, i32 2
  store %struct.TYPE_6__* %202, %struct.TYPE_6__** %204, align 8
  %205 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %206 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %205, i32 0, i32 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %209 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %208, i32 0, i32 3
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %212 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %211, i32 0, i32 2
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = call i32 @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %207, %struct.TYPE_6__* %210, %struct.TYPE_6__* %213)
  store i32 0, i32* %2, align 4
  br label %215

215:                                              ; preds = %135, %51, %26
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.TYPE_6__* @kmalloc(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @rvmalloc(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @DBG(i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
