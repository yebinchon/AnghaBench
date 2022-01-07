; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_insert_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_insert_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32)* }
%struct.agp_memory = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i32, i32)* @uninorth_insert_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_insert_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = call %struct.TYPE_7__* @A_SIZE_32(i8* %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %22 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %143

28:                                               ; preds = %3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %33(%struct.TYPE_6__* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %143

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %45 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %143

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %75, %53
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %59 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = icmp slt i32 %56, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %55
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %143

75:                                               ; preds = %63
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %55

78:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %126, %78
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %83 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %131

86:                                               ; preds = %80
  %87 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %88 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @page_to_phys(i32 %93)
  %95 = sext i32 %94 to i64
  %96 = and i64 %95, 4294963200
  %97 = or i64 %96, 1
  %98 = trunc i64 %97 to i32
  %99 = call i64 @cpu_to_le32(i32 %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %99, i64* %105, align 8
  %106 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %107 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @page_to_phys(i32 %112)
  %114 = call i64 @__va(i32 %113)
  %115 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %116 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @page_to_phys(i32 %121)
  %123 = call i64 @__va(i32 %122)
  %124 = add i64 %123, 4096
  %125 = call i32 @flush_dcache_range(i64 %114, i64 %124)
  br label %126

126:                                              ; preds = %86
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %80

131:                                              ; preds = %80
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = bitcast i64* %137 to i32*
  %139 = call i32 @in_le32(i32* %138)
  %140 = call i32 (...) @mb()
  %141 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %142 = call i32 @uninorth_tlbflush(%struct.agp_memory* %141)
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %131, %72, %50, %39, %25
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_7__* @A_SIZE_32(i8*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @page_to_phys(i32) #1

declare dso_local i32 @flush_dcache_range(i64, i64) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @uninorth_tlbflush(%struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
