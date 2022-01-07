; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_copy_to_bounce_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_copy_to_bounce_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, %struct.scatterlist*, i32)* @copy_to_bounce_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_to_bounce_buffer(%struct.scatterlist* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %145, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %148

24:                                               ; preds = %20
  %25 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @sg_kmap_atomic(%struct.scatterlist* %25, i32 %26)
  %28 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i64 %30
  %32 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %27, %33
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %16, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %36, i64 %38
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  %42 = load i64, i64* %15, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %24
  %45 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @sg_kmap_atomic(%struct.scatterlist* %45, i32 %46)
  store i64 %47, i64* %15, align 8
  br label %48

48:                                               ; preds = %44, %24
  br label %49

49:                                               ; preds = %134, %48
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %135

52:                                               ; preds = %49
  %53 = load i64, i64* %15, align 8
  %54 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %54, i64 %56
  %58 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = zext i32 %59 to i64
  %61 = add i64 %53, %60
  store i64 %61, i64* %10, align 8
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i64 %65
  %67 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sub i32 %62, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @min(i32 %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i64, i64* %10, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load i64, i64* %9, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @memcpy(i8* %74, i8* %76, i32 %77)
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %83, i64 %85
  %87 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add i32 %88, %82
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sub i32 %91, %90
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %13, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %9, align 8
  %97 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %97, i64 %99
  %101 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %52
  %106 = load i64, i64* %15, align 8
  %107 = call i32 @sg_kunmap_atomic(i64 %106)
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub i32 %114, 1
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %112, %105
  %118 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i64 @sg_kmap_atomic(%struct.scatterlist* %118, i32 %119)
  store i64 %120, i64* %15, align 8
  br label %121

121:                                              ; preds = %117, %112
  br label %134

122:                                              ; preds = %52
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sub i32 %127, 1
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i64, i64* %15, align 8
  %132 = call i32 @sg_kunmap_atomic(i64 %131)
  br label %133

133:                                              ; preds = %130, %125, %122
  br label %134

134:                                              ; preds = %133, %121
  br label %49

135:                                              ; preds = %49
  %136 = load i64, i64* %16, align 8
  %137 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %137, i64 %139
  %141 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = sub i64 %136, %142
  %144 = call i32 @sg_kunmap_atomic(i64 %143)
  br label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %20

148:                                              ; preds = %20
  %149 = load i64, i64* %17, align 8
  %150 = call i32 @local_irq_restore(i64 %149)
  %151 = load i32, i32* %14, align 4
  ret i32 %151
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @sg_kmap_atomic(%struct.scatterlist*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sg_kunmap_atomic(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
