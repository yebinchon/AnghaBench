; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-vbi.c_cx231xx_copy_vbi_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-vbi.c_cx231xx_copy_vbi_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { i32 }
%struct.cx231xx_dmaqueue = type { i32, i64, i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cx231xx_copy_vbi_line(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca %struct.cx231xx_dmaqueue*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.cx231xx_buffer*, align 8
  %14 = alloca i64, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %16 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %14, align 8
  %20 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %21 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %26 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %27 = call i32 @cx231xx_reset_vbi_buffer(%struct.cx231xx* %25, %struct.cx231xx_dmaqueue* %26)
  br label %28

28:                                               ; preds = %24, %5
  %29 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %30 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %36 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %39 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %41, align 8
  store %struct.cx231xx_buffer* %42, %struct.cx231xx_buffer** %13, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %45 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %47 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %52, %37
  %55 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %56 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %59 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %54
  %63 = load i64, i64* %12, align 8
  %64 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %65 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %69 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 0, i32 1
  %74 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %75 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  store i64 0, i64* %6, align 8
  br label %148

76:                                               ; preds = %54
  %77 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %78 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %77, i32 0, i32 4
  store i32 1, i32* %78, align 8
  %79 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %13, align 8
  %80 = icmp ne %struct.cx231xx_buffer* %79, null
  br i1 %80, label %96, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %84 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %88 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 0, i32 1
  %93 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %94 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %6, align 8
  br label %148

96:                                               ; preds = %76
  %97 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %98 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @cx231xx_do_vbi_copy(%struct.cx231xx* %97, %struct.cx231xx_dmaqueue* %98, i32* %99, i64 %100)
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %104 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %109 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %113 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %96
  %117 = load i64, i64* %14, align 8
  %118 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %119 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %121 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %125 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %124, i32 0, i32 4
  store i32 0, i32* %125, align 8
  %126 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %127 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %128 = call i64 @cx231xx_is_vbi_buffer_done(%struct.cx231xx* %126, %struct.cx231xx_dmaqueue* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %116
  %131 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %13, align 8
  %132 = icmp ne %struct.cx231xx_buffer* %131, null
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %135 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %136 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %13, align 8
  %137 = call i32 @vbi_buffer_filled(%struct.cx231xx* %134, %struct.cx231xx_dmaqueue* %135, %struct.cx231xx_buffer* %136)
  %138 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %139 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %138, i32 0, i32 5
  store i64 0, i64* %139, align 8
  %140 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %141 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %143 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %144 = call i32 @cx231xx_reset_vbi_buffer(%struct.cx231xx* %142, %struct.cx231xx_dmaqueue* %143)
  br label %145

145:                                              ; preds = %133, %130, %116
  br label %146

146:                                              ; preds = %145, %96
  %147 = load i64, i64* %12, align 8
  store i64 %147, i64* %6, align 8
  br label %148

148:                                              ; preds = %146, %81, %62
  %149 = load i64, i64* %6, align 8
  ret i64 %149
}

declare dso_local i32 @cx231xx_reset_vbi_buffer(%struct.cx231xx*, %struct.cx231xx_dmaqueue*) #1

declare dso_local i32 @cx231xx_do_vbi_copy(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, i32*, i64) #1

declare dso_local i64 @cx231xx_is_vbi_buffer_done(%struct.cx231xx*, %struct.cx231xx_dmaqueue*) #1

declare dso_local i32 @vbi_buffer_filled(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, %struct.cx231xx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
