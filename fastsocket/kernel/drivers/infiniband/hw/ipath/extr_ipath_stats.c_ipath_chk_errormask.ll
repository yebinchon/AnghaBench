; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_stats.c_ipath_chk_errormask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_stats.c_ipath_chk_errormask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i64, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@ipath_chk_errormask.fixed = internal global i32 0, align 4
@IPATH_INITTED = common dso_local global i32 0, align 4
@INFINIPATH_C_FREEZEMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"errormask fixed(%u) %lx -> %lx, ctrl %x hwerr %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"errormask fixed(%u) %lx -> %lx, no freeze\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @ipath_chk_errormask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_chk_errormask(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %6 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IPATH_INITTED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  br label %111

18:                                               ; preds = %10
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %19, i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %111

32:                                               ; preds = %18
  %33 = load i32, i32* @ipath_chk_errormask.fixed, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @ipath_chk_errormask.fixed, align 4
  %35 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %36 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %37 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %35, i32 %40)
  store i64 %41, i64* %5, align 8
  %42 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ipath_read_kreg32(%struct.ipath_devdata* %42, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %56 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %49, i32 %54, i64 %57)
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %61 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %59, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %32
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @INFINIPATH_C_FREEZEMODE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %65, %32
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %72 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %73 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %72, i32 0, i32 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %71, i32 %76, i64 0)
  %78 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %79 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %80 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %79, i32 0, i32 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %78, i32 %83, i64 0)
  %85 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %86 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %87 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %86, i32 0, i32 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %85, i32 %90, i64 0)
  %92 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %93 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* @ipath_chk_errormask.fixed, align 4
  %97 = load i64, i64* %4, align 8
  %98 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %99 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @dev_info(i32* %95, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %96, i64 %97, i64 %100, i32 %101, i64 %102)
  br label %111

104:                                              ; preds = %65
  %105 = load i32, i32* @ipath_chk_errormask.fixed, align 4
  %106 = load i64, i64* %4, align 8
  %107 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %108 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @ipath_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %105, i64 %106, i64 %109)
  br label %111

111:                                              ; preds = %17, %31, %104, %70
  ret void
}

declare dso_local i64 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_read_kreg32(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64, i64, i32, i64) #1

declare dso_local i32 @ipath_dbg(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
