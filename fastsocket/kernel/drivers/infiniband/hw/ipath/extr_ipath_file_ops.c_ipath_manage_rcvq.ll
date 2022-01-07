; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_manage_rcvq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_manage_rcvq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_portdata = type { i64, i64, %struct.ipath_devdata* }
%struct.ipath_devdata = type { %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%sabling rcv for unit %u port %u:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@ur_rcvhdrtail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_portdata*, i32, i32)* @ipath_manage_rcvq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_manage_rcvq(%struct.ipath_portdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipath_portdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipath_devdata*, align 8
  store %struct.ipath_portdata* %0, %struct.ipath_portdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %9 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %8, i32 0, i32 2
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  store %struct.ipath_devdata* %10, %struct.ipath_devdata** %7, align 8
  %11 = load i32, i32* @PROC, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %16 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %17 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %20 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ipath_cdbg(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18, i64 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %88

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %32 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %37 = call i32 @ipath_clear_rcvhdrtail(%struct.ipath_portdata* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %40 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %43 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %47 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %46, i32 0, i32 1
  %48 = call i32 @set_bit(i64 %45, i32* %47)
  br label %60

49:                                               ; preds = %27
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %51 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %54 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %58 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %57, i32 0, i32 1
  %59 = call i32 @clear_bit(i64 %56, i32* %58)
  br label %60

60:                                               ; preds = %49, %38
  %61 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %62 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %63 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %68 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %61, i32 %66, i32 %69)
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %72 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %73 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %71, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %60
  %81 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %82 = load i32, i32* @ur_rcvhdrtail, align 4
  %83 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %84 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ipath_read_ureg32(%struct.ipath_devdata* %81, i32 %82, i64 %85)
  br label %87

87:                                               ; preds = %80, %60
  br label %88

88:                                               ; preds = %87, %26
  ret i32 0
}

declare dso_local i32 @ipath_cdbg(i32, i8*, i8*, i32, i64, i32) #1

declare dso_local i32 @ipath_clear_rcvhdrtail(%struct.ipath_portdata*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_read_ureg32(%struct.ipath_devdata*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
