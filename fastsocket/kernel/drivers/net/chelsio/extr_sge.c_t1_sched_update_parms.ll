; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_sched_update_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_sched_update_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32, %struct.sched* }
%struct.sched = type { i32, %struct.sched_port* }
%struct.sched_port = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"t1_sched_update_params mtu=%d speed=%d\0A\00", align 1
@CHBT_BOARD_CHT204 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [96 x i8] c"t1_sched_update_parms: mtu %u speed %u max_avail %u max_avail_segs %u drain_bits_per_1024ns %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_sched_update_parms(%struct.sge* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sched*, align 8
  %10 = alloca %struct.sched_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sge* %0, %struct.sge** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sge*, %struct.sge** %5, align 8
  %14 = getelementptr inbounds %struct.sge, %struct.sge* %13, i32 0, i32 1
  %15 = load %struct.sched*, %struct.sched** %14, align 8
  store %struct.sched* %15, %struct.sched** %9, align 8
  %16 = load %struct.sched*, %struct.sched** %9, align 8
  %17 = getelementptr inbounds %struct.sched, %struct.sched* %16, i32 0, i32 1
  %18 = load %struct.sched_port*, %struct.sched_port** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %18, i64 %20
  store %struct.sched_port* %21, %struct.sched_port** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %30 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %37 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %41, %38
  %45 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %46 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 1024, %48
  %50 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %51 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %52, 40
  %54 = zext i32 %53 to i64
  %55 = mul i64 %49, %54
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %58 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, 50
  %61 = mul i32 %60, 1000
  %62 = call i32 @do_div(i64 %56, i32 %61)
  %63 = load i64, i64* %12, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %66 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %68 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ult i32 %69, 1000
  br i1 %70, label %71, label %79

71:                                               ; preds = %44
  %72 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %73 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = mul i32 90, %74
  %76 = udiv i32 %75, 100
  %77 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %78 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %44
  br label %80

80:                                               ; preds = %79, %41
  %81 = load %struct.sge*, %struct.sge** %5, align 8
  %82 = getelementptr inbounds %struct.sge, %struct.sge* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.TYPE_2__* @board_info(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CHBT_BOARD_CHT204, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %80
  %90 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %91 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sub i32 %92, 16
  store i32 %93, i32* %91, align 4
  %94 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %95 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %96, 16
  %98 = add i32 %97, 14
  %99 = add i32 %98, 4
  %100 = call i8* @max(i32 4096, i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.sched*, %struct.sched** %9, align 8
  %103 = getelementptr inbounds %struct.sched, %struct.sched* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %105 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub i32 %106, 40
  %108 = udiv i32 4096, %107
  %109 = call i8* @max(i32 1, i32 %108)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %11, align 4
  br label %121

111:                                              ; preds = %80
  %112 = load %struct.sched*, %struct.sched** %9, align 8
  %113 = getelementptr inbounds %struct.sched, %struct.sched* %112, i32 0, i32 0
  store i32 16384, i32* %113, align 8
  %114 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %115 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub i32 %116, 40
  %118 = udiv i32 9000, %117
  %119 = call i8* @max(i32 1, i32 %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %111, %89
  %122 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %123 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %126 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.sched*, %struct.sched** %9, align 8
  %129 = getelementptr inbounds %struct.sched, %struct.sched* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %133 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %127, i32 %130, i32 %131, i32 %134)
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.sched_port*, %struct.sched_port** %10, align 8
  %138 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub i32 %139, 40
  %141 = mul i32 %136, %140
  ret i32 %141
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local %struct.TYPE_2__* @board_info(i32) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
