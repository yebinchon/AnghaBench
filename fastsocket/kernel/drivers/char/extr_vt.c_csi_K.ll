; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_csi_K.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_csi_K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i64, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i32, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @csi_K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_K(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %111 [
    i32 0, label %8
    i32 1, label %45
    i32 2, label %79
  ]

8:                                                ; preds = %2
  %9 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i16*
  store i16* %19, i16** %6, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %21 = call i32 @DO_UPDATE(%struct.vc_data* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %8
  %24 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32)** %27, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %38, %41
  %43 = call i32 %28(%struct.vc_data* %29, i32 %32, i32 %35, i32 1, i32 %42)
  br label %44

44:                                               ; preds = %23, %8
  br label %112

45:                                               ; preds = %2
  %46 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = sub nsw i64 %48, %53
  %55 = inttoptr i64 %54 to i16*
  store i16* %55, i16** %6, align 8
  %56 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %61 = call i32 @DO_UPDATE(%struct.vc_data* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %45
  %64 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %65 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %64, i32 0, i32 5
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32)** %67, align 8
  %69 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %70 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %74 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, 1
  %77 = call i32 %68(%struct.vc_data* %69, i32 %72, i32 0, i32 1, i32 %76)
  br label %78

78:                                               ; preds = %63, %45
  br label %112

79:                                               ; preds = %2
  %80 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = sub nsw i64 %82, %87
  %89 = inttoptr i64 %88 to i16*
  store i16* %89, i16** %6, align 8
  %90 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %91 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %5, align 4
  %93 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %94 = call i32 @DO_UPDATE(%struct.vc_data* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %79
  %97 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %98 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %97, i32 0, i32 5
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32)** %100, align 8
  %102 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %103 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %104 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %107 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %101(%struct.vc_data* %102, i32 %105, i32 0, i32 1, i32 %108)
  br label %110

110:                                              ; preds = %96, %79
  br label %112

111:                                              ; preds = %2
  br label %122

112:                                              ; preds = %110, %78, %44
  %113 = load i16*, i16** %6, align 8
  %114 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %115 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = mul i32 2, %117
  %119 = call i32 @scr_memsetw(i16* %113, i32 %116, i32 %118)
  %120 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %121 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %112, %111
  ret void
}

declare dso_local i32 @DO_UPDATE(%struct.vc_data*) #1

declare dso_local i32 @scr_memsetw(i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
