; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_stats.c_ipath_qcheck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_stats.c_ipath_qcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ipath_devdata = type { i64, i64, i64, i32, %struct.ipath_portdata** }
%struct.ipath_portdata = type { i64, i32, i32 }

@ipath_qcheck.last_tot_hdrqfull = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"port 0 hdrqfull %u\00", align 1
@ipath_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%srcvegrfull %llu\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ipath_debug = common dso_local global i32 0, align 4
@__IPATH_PKTDBG = common dso_local global i32 0, align 4
@__IPATH_DBG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%shdrqfull %llu (all ports)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PKT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [78 x i8] c"missing rcv interrupts? port0 hd=%x tl=%x; port0pkts %llx; write hd (w/intr)\0A\00", align 1
@ur_rcvhdrhead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @ipath_qcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_qcheck(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca %struct.ipath_portdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %7 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %7, i32 0, i32 4
  %9 = load %struct.ipath_portdata**, %struct.ipath_portdata*** %8, align 8
  %10 = getelementptr inbounds %struct.ipath_portdata*, %struct.ipath_portdata** %9, i64 0
  %11 = load %struct.ipath_portdata*, %struct.ipath_portdata** %10, align 8
  store %struct.ipath_portdata* %11, %struct.ipath_portdata** %3, align 8
  store i64 0, i64* %4, align 8
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %12, align 16
  %13 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %14 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %22 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %23 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = inttoptr i64 %28 to i8*
  %30 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i64 %30, i64* %4, align 8
  %31 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %32 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %20, %1
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 0), align 8
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %39 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %4, align 8
  %47 = sub i64 128, %46
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 0), align 8
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %45, i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %52, i64 %57)
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 0), align 8
  %62 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %63 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %42, %36
  %65 = load i32, i32* @ipath_debug, align 4
  %66 = load i32, i32* @__IPATH_PKTDBG, align 4
  %67 = load i32, i32* @__IPATH_DBG, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %64
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 1), align 8
  %73 = load i64, i64* @ipath_qcheck.last_tot_hdrqfull, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i64, i64* %4, align 8
  %80 = sub i64 128, %79
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* %4, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 1), align 8
  %87 = load i64, i64* @ipath_qcheck.last_tot_hdrqfull, align 8
  %88 = sub nsw i64 %86, %87
  %89 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %78, i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %85, i64 %88)
  %90 = load i64, i64* %4, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %4, align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 1), align 8
  store i64 %92, i64* @ipath_qcheck.last_tot_hdrqfull, align 8
  br label %93

93:                                               ; preds = %75, %71, %64
  %94 = load i64, i64* %4, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %98 = call i32 @ipath_dbg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %101 = call i32 @ipath_get_hdrqtail(%struct.ipath_portdata* %100)
  store i32 %101, i32* %6, align 4
  %102 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %103 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %99
  %108 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %109 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 2), align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %107
  %114 = load i32, i32* @PKT, align 4
  %115 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %116 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 2), align 8
  %120 = call i32 @ipath_cdbg(i32 %114, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %117, i32 %118, i64 %119)
  %121 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %122 = load i32, i32* @ur_rcvhdrhead, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %125 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %123, %126
  %128 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %129 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ipath_write_ureg(%struct.ipath_devdata* %121, i32 %122, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %113, %107
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipath_stats, i32 0, i32 2), align 8
  %134 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %135 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %132, %99
  ret void
}

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @ipath_dbg(i8*, i8*) #1

declare dso_local i32 @ipath_get_hdrqtail(%struct.ipath_portdata*) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @ipath_write_ureg(%struct.ipath_devdata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
