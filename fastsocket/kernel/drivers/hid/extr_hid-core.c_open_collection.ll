; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_open_collection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_open_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { i64, i32*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.hid_collection* }
%struct.hid_collection = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32* }

@HID_COLLECTION_STACK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"collection stack overflow\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to reallocate collection array\0A\00", align 1
@HID_COLLECTION_APPLICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_parser*, i32)* @open_collection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_collection(%struct.hid_parser* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_collection*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_parser* %0, %struct.hid_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %9 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %15 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HID_COLLECTION_STACK_SIZE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @dbg_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %149

21:                                               ; preds = %2
  %22 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %23 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %28 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %21
  %34 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %35 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 16, %39
  %41 = mul i64 %40, 2
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.hid_collection* @kmalloc(i32 %42, i32 %43)
  store %struct.hid_collection* %44, %struct.hid_collection** %6, align 8
  %45 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %46 = icmp eq %struct.hid_collection* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = call i32 @dbg_hid(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %149

49:                                               ; preds = %33
  %50 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %51 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %52 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load %struct.hid_collection*, %struct.hid_collection** %54, align 8
  %56 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %57 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 16, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(%struct.hid_collection* %50, %struct.hid_collection* %55, i32 %63)
  %65 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %66 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %67 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %65, i64 %71
  %73 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %74 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 16, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(%struct.hid_collection* %72, i32 0, i32 %80)
  %82 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %83 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load %struct.hid_collection*, %struct.hid_collection** %85, align 8
  %87 = call i32 @kfree(%struct.hid_collection* %86)
  %88 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %89 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %90 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  store %struct.hid_collection* %88, %struct.hid_collection** %92, align 8
  %93 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %94 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 2
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %49, %21
  %100 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %101 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %106 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %109 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %104, i32* %112, align 4
  %113 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %114 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load %struct.hid_collection*, %struct.hid_collection** %116, align 8
  %118 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %119 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %117, i64 %124
  store %struct.hid_collection* %125, %struct.hid_collection** %6, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %128 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %131 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %133 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %134, 1
  %136 = load %struct.hid_collection*, %struct.hid_collection** %6, align 8
  %137 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @HID_COLLECTION_APPLICATION, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %99
  %142 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %143 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %141, %99
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %47, %19
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @dbg_hid(i8*) #1

declare dso_local %struct.hid_collection* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.hid_collection*, %struct.hid_collection*, i32) #1

declare dso_local i32 @memset(%struct.hid_collection*, i32, i32) #1

declare dso_local i32 @kfree(%struct.hid_collection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
