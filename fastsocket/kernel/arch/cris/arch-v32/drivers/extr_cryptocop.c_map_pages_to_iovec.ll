; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_map_pages_to_iovec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_map_pages_to_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [97 x i8] c"map_pages_to_iovec, map_length=%d, iovlen=%d, *iovix=%d, nopages=%d, *pageix=%d, *pageoffset=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"map_page_to_iovec: *iovix=%d >= iovlen=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"map_page_to_iovec: *pageix=%d >= nopages=%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"mapping %d bytes from page %d (or %d) to iovec %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"map_page_to_iovec, exit, *iovix=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iovec*, i32, i32*, %struct.page**, i32, i32*, i32*, i32)* @map_pages_to_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_pages_to_iovec(%struct.iovec* %0, i32 %1, i32* %2, %struct.page** %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.page**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iovec* %0, %struct.iovec** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store %struct.page** %3, %struct.page*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load %struct.iovec*, %struct.iovec** %10, align 8
  %20 = icmp ne %struct.iovec* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.page**, %struct.page*** %13, align 8
  %28 = icmp ne %struct.page** %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %15, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %16, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %42, i32 %43, i32 %45, i32 %47)
  %49 = call i32 @DEBUG(i32 %48)
  br label %50

50:                                               ; preds = %123, %8
  %51 = load i32, i32* %17, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %147

53:                                               ; preds = %50
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %57, i32 %58, i32 %60, i32 %62)
  %64 = call i32 @DEBUG(i32 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %53
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = call i32 @DEBUG_API(i32 %73)
  store i32 0, i32* %9, align 4
  br label %152

75:                                               ; preds = %53
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  %85 = call i32 @DEBUG_API(i32 %84)
  store i32 0, i32* %9, align 4
  br label %152

86:                                               ; preds = %75
  %87 = load %struct.page**, %struct.page*** %13, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.page*, %struct.page** %87, i64 %90
  %92 = load %struct.page*, %struct.page** %91, align 8
  %93 = call i64 @page_address(%struct.page* %92)
  %94 = inttoptr i64 %93 to i8*
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load %struct.iovec*, %struct.iovec** %10, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.iovec, %struct.iovec* %99, i64 %102
  %104 = getelementptr inbounds %struct.iovec, %struct.iovec* %103, i32 0, i32 0
  store i8* %98, i8** %104, align 8
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %105, %107
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %86
  %113 = load i32*, i32** %16, align 8
  store i32 0, i32* %113, align 4
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %123

117:                                              ; preds = %86
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32*, i32** %16, align 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %119
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %112
  %124 = load i32, i32* %18, align 4
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %15, align 8
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %126, i32 %129, i32 %131)
  %133 = call i32 @DEBUG(i32 %132)
  %134 = load i32, i32* %18, align 4
  %135 = load %struct.iovec*, %struct.iovec** %10, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.iovec, %struct.iovec* %135, i64 %138
  %140 = getelementptr inbounds %struct.iovec, %struct.iovec* %139, i32 0, i32 1
  store i32 %134, i32* %140, align 8
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %17, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %17, align 4
  %144 = load i32*, i32** %12, align 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %50

147:                                              ; preds = %50
  %148 = load i32*, i32** %12, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = call i32 @DEBUG(i32 %150)
  store i32 -1, i32* %9, align 4
  br label %152

152:                                              ; preds = %147, %80, %69
  %153 = load i32, i32* %9, align 4
  ret i32 %153
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @DEBUG_API(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
