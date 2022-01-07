; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_setrcvhdrsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_setrcvhdrsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IPATH_RCVHDRSZ_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Error: can't set protocol header size %u, already %u\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Reuse same protocol header size %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Error: can't set protocol header size %u (> max %u)\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Set protocol header size to %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_setrcvhdrsize(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %7 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IPATH_RCVHDRSZ_SET, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %14 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %20 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_info(i32* %22, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %12
  %31 = load i32, i32* @VERBOSE, align 4
  %32 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %33 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ipath_cdbg(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %18
  br label %81

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %41 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = sub i64 %43, 0
  %45 = icmp ugt i64 %39, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %49 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, 0
  %53 = call i32 @ipath_dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %52)
  %54 = load i32, i32* @EOVERFLOW, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %80

56:                                               ; preds = %37
  %57 = load i32, i32* @IPATH_RCVHDRSZ_SET, align 4
  %58 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %59 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %64 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %66 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %67 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %72 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %65, i32 %70, i32 %73)
  %75 = load i32, i32* @VERBOSE, align 4
  %76 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %77 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ipath_cdbg(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %56, %46
  br label %81

81:                                               ; preds = %80, %36
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i32) #1

declare dso_local i32 @ipath_dbg(i8*, i32, i64) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
