; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3270.c_con3270_cline_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3270.c_con3270_cline_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64* }
%struct.string = type { i32, i32, i32, i64* }

@TO_RA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.con3270*)* @con3270_cline_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_cline_end(%struct.con3270* %0) #0 {
  %2 = alloca %struct.con3270*, align 8
  %3 = alloca %struct.string*, align 8
  %4 = alloca i32, align 4
  store %struct.con3270* %0, %struct.con3270** %2, align 8
  %5 = load %struct.con3270*, %struct.con3270** %2, align 8
  %6 = getelementptr inbounds %struct.con3270, %struct.con3270* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.con3270*, %struct.con3270** %2, align 8
  %11 = getelementptr inbounds %struct.con3270, %struct.con3270* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 5
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.con3270*, %struct.con3270** %2, align 8
  %18 = getelementptr inbounds %struct.con3270, %struct.con3270* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 4
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.con3270*, %struct.con3270** %2, align 8
  %25 = getelementptr inbounds %struct.con3270, %struct.con3270* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %28

28:                                               ; preds = %23, %16
  %29 = phi i32 [ %22, %16 ], [ %27, %23 ]
  store i32 %29, i32* %4, align 4
  %30 = load %struct.con3270*, %struct.con3270** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call %struct.string* @con3270_alloc_string(%struct.con3270* %30, i32 %31)
  store %struct.string* %32, %struct.string** %3, align 8
  %33 = load %struct.string*, %struct.string** %3, align 8
  %34 = getelementptr inbounds %struct.string, %struct.string* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.con3270*, %struct.con3270** %2, align 8
  %37 = getelementptr inbounds %struct.con3270, %struct.con3270* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.con3270*, %struct.con3270** %2, align 8
  %42 = getelementptr inbounds %struct.con3270, %struct.con3270* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i64* %35, i32 %40, i32 %45)
  %47 = load %struct.string*, %struct.string** %3, align 8
  %48 = getelementptr inbounds %struct.string, %struct.string* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.con3270*, %struct.con3270** %2, align 8
  %51 = getelementptr inbounds %struct.con3270, %struct.con3270* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 5
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %28
  %57 = load i64, i64* @TO_RA, align 8
  %58 = load %struct.string*, %struct.string** %3, align 8
  %59 = getelementptr inbounds %struct.string, %struct.string* %58, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.string*, %struct.string** %3, align 8
  %62 = getelementptr inbounds %struct.string, %struct.string* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %60, i64 %65
  store i64 %57, i64* %66, align 8
  %67 = load %struct.string*, %struct.string** %3, align 8
  %68 = getelementptr inbounds %struct.string, %struct.string* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.string*, %struct.string** %3, align 8
  %71 = getelementptr inbounds %struct.string, %struct.string* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %69, i64 %74
  store i64 0, i64* %75, align 8
  br label %100

76:                                               ; preds = %28
  br label %77

77:                                               ; preds = %86, %76
  %78 = load i32, i32* %4, align 4
  %79 = add i32 %78, -1
  store i32 %79, i32* %4, align 4
  %80 = load %struct.con3270*, %struct.con3270** %2, align 8
  %81 = getelementptr inbounds %struct.con3270, %struct.con3270* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ugt i32 %79, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %77
  %87 = load %struct.con3270*, %struct.con3270** %2, align 8
  %88 = getelementptr inbounds %struct.con3270, %struct.con3270* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 32
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.string*, %struct.string** %3, align 8
  %94 = getelementptr inbounds %struct.string, %struct.string* %93, i32 0, i32 3
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %92, i64* %98, align 8
  br label %77

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99, %56
  %101 = load %struct.string*, %struct.string** %3, align 8
  %102 = getelementptr inbounds %struct.string, %struct.string* %101, i32 0, i32 2
  %103 = load %struct.con3270*, %struct.con3270** %2, align 8
  %104 = getelementptr inbounds %struct.con3270, %struct.con3270* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = call i32 @list_add(i32* %102, i32* %106)
  %108 = load %struct.con3270*, %struct.con3270** %2, align 8
  %109 = getelementptr inbounds %struct.con3270, %struct.con3270* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = call i32 @list_del_init(i32* %111)
  %113 = load %struct.con3270*, %struct.con3270** %2, align 8
  %114 = getelementptr inbounds %struct.con3270, %struct.con3270* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = call i32 @list_empty(i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %100
  %120 = load %struct.string*, %struct.string** %3, align 8
  %121 = getelementptr inbounds %struct.string, %struct.string* %120, i32 0, i32 1
  %122 = load %struct.con3270*, %struct.con3270** %2, align 8
  %123 = getelementptr inbounds %struct.con3270, %struct.con3270* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = call i32 @list_add(i32* %121, i32* %125)
  %127 = load %struct.con3270*, %struct.con3270** %2, align 8
  %128 = getelementptr inbounds %struct.con3270, %struct.con3270* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = call i32 @list_del_init(i32* %130)
  br label %132

132:                                              ; preds = %119, %100
  %133 = load %struct.con3270*, %struct.con3270** %2, align 8
  %134 = getelementptr inbounds %struct.con3270, %struct.con3270* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 4
  ret void
}

declare dso_local %struct.string* @con3270_alloc_string(%struct.con3270*, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
