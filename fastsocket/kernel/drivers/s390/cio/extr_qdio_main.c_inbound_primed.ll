; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_inbound_primed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_inbound_primed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"in prim: %02x\00", align 1
@SLSB_P_INPUT_NOT_INIT = common dso_local global i32 0, align 4
@SLSB_P_INPUT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, i32)* @inbound_primed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inbound_primed(%struct.qdio_q* %0, i32 %1) #0 {
  %3 = alloca %struct.qdio_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @DBF_INFO, align 4
  %7 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %8 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @DBF_DEV_EVENT(i32 %6, i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %13 = call i64 @is_qebsm(%struct.qdio_q* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %2
  %16 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %17 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %15
  %23 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %24 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %29 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %33 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %36 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 %34, i32* %38, align 4
  br label %119

39:                                               ; preds = %15
  %40 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %41 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %42 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SLSB_P_INPUT_NOT_INIT, align 4
  %47 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %48 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_buf_states(%struct.qdio_q* %40, i32 %45, i32 %46, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %55 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %59 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %62 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %60, i32* %64, align 4
  br label %119

65:                                               ; preds = %2
  %66 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %67 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @add_buf(i32 %68, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %73 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %65
  %79 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SLSB_P_INPUT_ACK, align 4
  %82 = call i32 @set_buf_state(%struct.qdio_q* %79, i32 %80, i32 %81)
  %83 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %84 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %85 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SLSB_P_INPUT_NOT_INIT, align 4
  %90 = call i32 @set_buf_state(%struct.qdio_q* %83, i32 %88, i32 %89)
  br label %100

91:                                               ; preds = %65
  %92 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %93 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SLSB_P_INPUT_ACK, align 4
  %99 = call i32 @set_buf_state(%struct.qdio_q* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %91, %78
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %103 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  br label %119

111:                                              ; preds = %100
  %112 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %113 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %114 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SLSB_P_INPUT_NOT_INIT, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @set_buf_states(%struct.qdio_q* %112, i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %110, %39, %22
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, i32, i8*, i32) #1

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @set_buf_states(%struct.qdio_q*, i32, i32, i32) #1

declare dso_local i32 @add_buf(i32, i32) #1

declare dso_local i32 @set_buf_state(%struct.qdio_q*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
