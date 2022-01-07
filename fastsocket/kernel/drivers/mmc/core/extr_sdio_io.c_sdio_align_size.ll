; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_io.c_sdio_align_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_io.c_sdio_align_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_align_size(%struct.sdio_func* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @mmc_align_data_size(%struct.TYPE_4__* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %18 = call i32 @sdio_max_byte_size(%struct.sdio_func* %17)
  %19 = icmp ule i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %129

22:                                               ; preds = %2
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %95

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %33 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = urem i32 %31, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %3, align 4
  br label %129

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %42 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add i32 %40, %43
  %45 = sub i32 %44, 1
  %46 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %47 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = udiv i32 %45, %48
  %50 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %51 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul i32 %49, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %55 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mmc_align_data_size(%struct.TYPE_4__* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %61 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = urem i32 %59, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %39
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %129

67:                                               ; preds = %39
  %68 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %69 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %73 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = urem i32 %71, %74
  %76 = call i32 @mmc_align_data_size(%struct.TYPE_4__* %70, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %79 = call i32 @sdio_max_byte_size(%struct.sdio_func* %78)
  %80 = icmp ule i32 %77, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %67
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %84 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = udiv i32 %82, %85
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %89 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul i32 %87, %90
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %91, %92
  store i32 %93, i32* %3, align 4
  br label %129

94:                                               ; preds = %67
  br label %127

95:                                               ; preds = %22
  %96 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %97 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %100 = call i32 @sdio_max_byte_size(%struct.sdio_func* %99)
  %101 = call i32 @mmc_align_data_size(%struct.TYPE_4__* %98, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %104 = call i32 @sdio_max_byte_size(%struct.sdio_func* %103)
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %95
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %9, align 4
  %109 = urem i32 %107, %108
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %114 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @mmc_align_data_size(%struct.TYPE_4__* %115, i32 %116)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %9, align 4
  %121 = udiv i32 %119, %120
  %122 = load i32, i32* %9, align 4
  %123 = mul i32 %121, %122
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %123, %124
  store i32 %125, i32* %3, align 4
  br label %129

126:                                              ; preds = %95
  br label %127

127:                                              ; preds = %126, %94
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %118, %81, %65, %37, %20
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @mmc_align_data_size(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sdio_max_byte_size(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
