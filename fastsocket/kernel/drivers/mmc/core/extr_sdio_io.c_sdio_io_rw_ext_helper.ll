; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_io.c_sdio_io_rw_ext_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_io.c_sdio_io_rw_ext_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, i32, i32, i32, i32*, i32)* @sdio_io_rw_ext_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_io_rw_ext_helper(%struct.sdio_func* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdio_func*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %20 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %111

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %29 = call i32 @sdio_max_byte_size(%struct.sdio_func* %28)
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %31, label %111

31:                                               ; preds = %26
  %32 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %33 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %40 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %47 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = udiv i32 %45, %48
  %50 = call i32 @min(i32 %38, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @min(i32 %51, i32 511)
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %109, %31
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %56 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ugt i32 %54, %57
  br i1 %58, label %59, label %110

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %62 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = udiv i32 %60, %63
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %68, %59
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %73 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul i32 %71, %74
  store i32 %75, i32* %13, align 4
  %76 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %77 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %81 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %88 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mmc_io_rw_extended(%struct.TYPE_6__* %78, i32 %79, i32 %82, i32 %83, i32 %84, i32* %85, i32 %86, i32 %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %70
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %7, align 4
  br label %152

95:                                               ; preds = %70
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = sub i32 %97, %96
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %12, align 8
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %105, %95
  br label %53

110:                                              ; preds = %53
  br label %111

111:                                              ; preds = %110, %26, %6
  br label %112

112:                                              ; preds = %150, %111
  %113 = load i32, i32* %14, align 4
  %114 = icmp ugt i32 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %118 = call i32 @sdio_max_byte_size(%struct.sdio_func* %117)
  %119 = call i32 @min(i32 %116, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %121 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %120, i32 0, i32 2
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %125 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @mmc_io_rw_extended(%struct.TYPE_6__* %122, i32 %123, i32 %126, i32 %127, i32 %128, i32* %129, i32 1, i32 %130)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %115
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %7, align 4
  br label %152

136:                                              ; preds = %115
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sub i32 %138, %137
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32*, i32** %12, align 8
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %12, align 8
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %146, %136
  br label %112

151:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %151, %134, %93
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @sdio_max_byte_size(%struct.sdio_func*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mmc_io_rw_extended(%struct.TYPE_6__*, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
