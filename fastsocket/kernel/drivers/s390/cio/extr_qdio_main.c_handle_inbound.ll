; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_handle_inbound.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_handle_inbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64 }

@inbound_call = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@SLSB_CU_INPUT_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32, i32, i32)* @handle_inbound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_inbound(%struct.qdio_q* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %13 = load i32, i32* @inbound_call, align 4
  %14 = call i32 @qperf_inc(%struct.qdio_q* %12, i32 %13)
  %15 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %16 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %105

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %28 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %32 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %105

35:                                               ; preds = %22
  %36 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %37 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @buf_in_between(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %103

45:                                               ; preds = %35
  %46 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %47 = call i64 @is_qebsm(%struct.qdio_q* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %97

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i8* @add_buf(i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %56 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @sub_buf(i32 %54, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %64 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, %62
  store i64 %68, i64* %66, align 8
  %69 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %70 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %49
  %76 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %77 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %81 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %105

84:                                               ; preds = %49
  %85 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %86 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i8* @add_buf(i32 %89, i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %94 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 8
  br label %102

97:                                               ; preds = %45
  %98 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %99 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %84
  br label %103

103:                                              ; preds = %102, %35
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %75, %26, %21
  %106 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @SLSB_CU_INPUT_EMPTY, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @set_buf_states(%struct.qdio_q* %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %113 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %112, i32 0, i32 0
  %114 = call i32 @atomic_add_return(i32 %111, i32* %113)
  %115 = load i32, i32* %9, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %121 = icmp sgt i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @BUG_ON(i32 %122)
  %124 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %125 = call i64 @need_siga_in(%struct.qdio_q* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %105
  %128 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %129 = call i32 @qdio_siga_input(%struct.qdio_q* %128)
  store i32 %129, i32* %5, align 4
  br label %131

130:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %127
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i64 @buf_in_between(i32, i32, i32) #1

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i8* @add_buf(i32, i32) #1

declare dso_local i32 @sub_buf(i32, i32) #1

declare dso_local i32 @set_buf_states(%struct.qdio_q*, i32, i32, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @need_siga_in(%struct.qdio_q*) #1

declare dso_local i32 @qdio_siga_input(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
