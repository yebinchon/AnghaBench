; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_read_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nandsim = type { %struct.TYPE_6__, %struct.TYPE_5__, i64, %struct.TYPE_4__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%union.ns_mem = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"read_page: page %d not written\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"read_page: page %d written, reading from %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"read_page: read error for page %d ret %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"read_page: page %d not allocated\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"read_page: page %d allocated, reading from %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nandsim*, i32)* @read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_page(%struct.nandsim* %0, i32 %1) #0 {
  %3 = alloca %struct.nandsim*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ns_mem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nandsim* %0, %struct.nandsim** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %9 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %102

12:                                               ; preds = %2
  %13 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %14 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %17 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %12
  %24 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %25 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i8*, i64, ...) @NS_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %30 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @memset(i32 %32, i32 255, i32 %33)
  br label %101

35:                                               ; preds = %12
  %36 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %37 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %41 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %45 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %43, %47
  %49 = call i32 (i8*, i64, ...) @NS_DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %39, i32 %48)
  %50 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @do_read_error(%struct.nandsim* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  br label %153

55:                                               ; preds = %35
  %56 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %57 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %62 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %60, %64
  %66 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %67 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %65, %69
  %71 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %72 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %70, %74
  store i32 %75, i32* %6, align 4
  %76 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %77 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %78 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %81 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @read_file(%struct.nandsim* %76, i64 %79, i32 %83, i32 %84, i32* %6)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %55
  %90 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %91 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = call i32 @NS_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %93, i64 %95)
  br label %153

97:                                               ; preds = %55
  %98 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @do_bit_flips(%struct.nandsim* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %23
  br label %153

102:                                              ; preds = %2
  %103 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %104 = call %union.ns_mem* @NS_GET_PAGE(%struct.nandsim* %103)
  store %union.ns_mem* %104, %union.ns_mem** %5, align 8
  %105 = load %union.ns_mem*, %union.ns_mem** %5, align 8
  %106 = bitcast %union.ns_mem* %105 to i32**
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %102
  %110 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %111 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i8*, i64, ...) @NS_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %113)
  %115 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %116 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @memset(i32 %118, i32 255, i32 %119)
  br label %153

121:                                              ; preds = %102
  %122 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %123 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %127 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %131 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %129, %133
  %135 = call i32 (i8*, i64, ...) @NS_DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %125, i32 %134)
  %136 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = call i64 @do_read_error(%struct.nandsim* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %121
  br label %153

141:                                              ; preds = %121
  %142 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %143 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %147 = call i32 @NS_PAGE_BYTE_OFF(%struct.nandsim* %146)
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @memcpy(i32 %145, i32 %147, i32 %148)
  %150 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @do_bit_flips(%struct.nandsim* %150, i32 %151)
  br label %153

153:                                              ; preds = %54, %89, %101, %140, %141, %109
  ret void
}

declare dso_local i32 @NS_DBG(i8*, i64, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @do_read_error(%struct.nandsim*, i32) #1

declare dso_local i32 @read_file(%struct.nandsim*, i64, i32, i32, i32*) #1

declare dso_local i32 @NS_ERR(i8*, i64, i64) #1

declare dso_local i32 @do_bit_flips(%struct.nandsim*, i32) #1

declare dso_local %union.ns_mem* @NS_GET_PAGE(%struct.nandsim*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @NS_PAGE_BYTE_OFF(%struct.nandsim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
