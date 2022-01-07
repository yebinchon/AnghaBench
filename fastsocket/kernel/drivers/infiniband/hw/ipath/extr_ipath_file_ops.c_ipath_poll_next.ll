; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_poll_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_poll_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_portdata = type { i32, i64, i32, i64, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }

@ur_rcvhdrhead = common dso_local global i32 0, align 4
@ur_rcvhdrtail = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@IPATH_PORT_WAITING_RCV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_portdata*, %struct.file*, %struct.poll_table_struct*)* @ipath_poll_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_poll_next(%struct.ipath_portdata* %0, %struct.file* %1, %struct.poll_table_struct* %2) #0 {
  %4 = alloca %struct.ipath_portdata*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.poll_table_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipath_devdata*, align 8
  store %struct.ipath_portdata* %0, %struct.ipath_portdata** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.poll_table_struct* %2, %struct.poll_table_struct** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %12 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %11, i32 0, i32 4
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %12, align 8
  store %struct.ipath_devdata* %13, %struct.ipath_devdata** %10, align 8
  %14 = call i32 (...) @rmb()
  %15 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %16 = call i32 @ipath_poll_hdrqfull(%struct.ipath_portdata* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %18 = load i32, i32* @ur_rcvhdrhead, align 4
  %19 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %20 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ipath_read_ureg32(%struct.ipath_devdata* %17, i32 %18, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %24 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %29 = call i32 @ipath_get_rcvhdrtail(%struct.ipath_portdata* %28)
  store i32 %29, i32* %8, align 4
  br label %37

30:                                               ; preds = %3
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %32 = load i32, i32* @ur_rcvhdrtail, align 4
  %33 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %34 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ipath_read_ureg32(%struct.ipath_devdata* %31, i32 %32, i64 %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @POLLIN, align 4
  %43 = load i32, i32* @POLLRDNORM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %95

47:                                               ; preds = %37
  %48 = load i64, i64* @IPATH_PORT_WAITING_RCV, align 8
  %49 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %50 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %49, i32 0, i32 2
  %51 = call i32 @set_bit(i64 %48, i32* %50)
  %52 = call i32 (...) @wmb()
  %53 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %54 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %57 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %61 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %60, i32 0, i32 1
  %62 = call i32 @set_bit(i64 %59, i32* %61)
  %63 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %64 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %65 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %70 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %63, i32 %68, i32 %71)
  %73 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %74 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %47
  %78 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %79 = load i32, i32* @ur_rcvhdrhead, align 4
  %80 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %81 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %86 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ipath_write_ureg(%struct.ipath_devdata* %78, i32 %79, i32 %84, i64 %87)
  br label %89

89:                                               ; preds = %77, %47
  %90 = load %struct.file*, %struct.file** %5, align 8
  %91 = load %struct.ipath_portdata*, %struct.ipath_portdata** %4, align 8
  %92 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %91, i32 0, i32 0
  %93 = load %struct.poll_table_struct*, %struct.poll_table_struct** %6, align 8
  %94 = call i32 @poll_wait(%struct.file* %90, i32* %92, %struct.poll_table_struct* %93)
  br label %95

95:                                               ; preds = %89, %41
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ipath_poll_hdrqfull(%struct.ipath_portdata*) #1

declare dso_local i32 @ipath_read_ureg32(%struct.ipath_devdata*, i32, i64) #1

declare dso_local i32 @ipath_get_rcvhdrtail(%struct.ipath_portdata*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_write_ureg(%struct.ipath_devdata*, i32, i32, i64) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
