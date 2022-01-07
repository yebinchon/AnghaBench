; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_set_pkeys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_set_pkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { %struct.TYPE_2__*, i64*, %struct.ipath_portdata** }
%struct.TYPE_2__ = type { i32 }
%struct.ipath_portdata = type { i32* }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"p0 new pkey reg %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32*)* @set_pkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pkeys(%struct.ipath_devdata* %0, i32* %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ipath_portdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %12, i32 0, i32 2
  %14 = load %struct.ipath_portdata**, %struct.ipath_portdata*** %13, align 8
  %15 = getelementptr inbounds %struct.ipath_portdata*, %struct.ipath_portdata** %14, i64 0
  %16 = load %struct.ipath_portdata*, %struct.ipath_portdata** %15, align 8
  store %struct.ipath_portdata* %16, %struct.ipath_portdata** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %75, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %20 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %31 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %75

41:                                               ; preds = %24
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 32767
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @rm_pkey(%struct.ipath_devdata* %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 32767
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @add_pkey(%struct.ipath_devdata* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %61
  br label %67

67:                                               ; preds = %66, %51
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %70 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %40
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %17

78:                                               ; preds = %17
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %124

81:                                               ; preds = %78
  %82 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %83 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %89 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = shl i32 %93, 16
  %95 = or i32 %87, %94
  %96 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %97 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 2
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = shl i32 %101, 32
  %103 = or i32 %95, %102
  %104 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %105 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 3
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = shl i32 %109, 48
  %111 = or i32 %103, %110
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* @VERBOSE, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = call i32 @ipath_cdbg(i32 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %114)
  %116 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %117 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %118 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %116, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %81, %78
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rm_pkey(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @add_pkey(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
