; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_handle_outbound.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_handle_outbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@outbound_call = common dso_local global i32 0, align 4
@SLSB_CU_OUTPUT_PRIMED = common dso_local global i8 0, align 1
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@QDIO_FLAG_PCI_OUT = common dso_local global i32 0, align 4
@pci_request_int = common dso_local global i32 0, align 4
@QDIO_IQDIO_QFMT = common dso_local global i64 0, align 8
@fast_requeue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32, i32, i32)* @handle_outbound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_outbound(%struct.qdio_q* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qdio_q*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %15 = load i32, i32* @outbound_call, align 4
  %16 = call i32 @qperf_inc(%struct.qdio_q* %14, i32 %15)
  %17 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i8, i8* @SLSB_CU_OUTPUT_PRIMED, align 1
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @set_buf_states(%struct.qdio_q* %17, i32 %18, i8 zeroext %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %24 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %23, i32 0, i32 3
  %25 = call i32 @atomic_add_return(i32 %22, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %28 = icmp sgt i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @QDIO_FLAG_PCI_OUT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %37 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %41 = load i32, i32* @pci_request_int, align 4
  %42 = call i32 @qperf_inc(%struct.qdio_q* %40, i32 %41)
  br label %48

43:                                               ; preds = %4
  %44 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %45 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %35
  %49 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %50 = call i64 @queue_type(%struct.qdio_q* %49)
  %51 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %115

53:                                               ; preds = %48
  %54 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %55 = call i64 @multicast_outbound(%struct.qdio_q* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %59 = call i32 @qdio_kick_outbound_q(%struct.qdio_q* %58, i64 0)
  store i32 %59, i32* %11, align 4
  br label %114

60:                                               ; preds = %53
  %61 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %62 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %87

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %74 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %72, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %82 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %86 = call i32 @qdio_kick_outbound_q(%struct.qdio_q* %85, i64 0)
  store i32 %86, i32* %11, align 4
  br label %113

87:                                               ; preds = %71, %68, %60
  %88 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %89 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %109, %87
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %8, align 4
  %96 = icmp ne i32 %94, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %99 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %12, align 4
  %102 = call i64 @qdio_aob_for_buffer(%struct.TYPE_8__* %100, i32 %101)
  store i64 %102, i64* %13, align 8
  %103 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i32 @qdio_kick_outbound_q(%struct.qdio_q* %103, i64 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %140

109:                                              ; preds = %97
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @next_buf(i32 %110)
  store i32 %111, i32* %12, align 4
  br label %93

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112, %80
  br label %114

114:                                              ; preds = %113, %57
  br label %140

115:                                              ; preds = %48
  %116 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %117 = call i64 @need_siga_sync(%struct.qdio_q* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %121 = call i32 @qdio_siga_sync_q(%struct.qdio_q* %120)
  br label %140

122:                                              ; preds = %115
  %123 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @prev_buf(i32 %124)
  %126 = call i32 @get_buf_state(%struct.qdio_q* %123, i32 %125, i8* %9, i32 0)
  %127 = load i8, i8* %9, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @SLSB_CU_OUTPUT_PRIMED, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %134 = call i32 @qdio_kick_outbound_q(%struct.qdio_q* %133, i64 0)
  store i32 %134, i32* %11, align 4
  br label %139

135:                                              ; preds = %122
  %136 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %137 = load i32, i32* @fast_requeue, align 4
  %138 = call i32 @qperf_inc(%struct.qdio_q* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %132
  br label %140

140:                                              ; preds = %139, %119, %114, %108
  %141 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %142 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %141, i32 0, i32 0
  %143 = call i32 @tasklet_schedule(i32* %142)
  %144 = load i32, i32* %11, align 4
  ret i32 %144
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @set_buf_states(%struct.qdio_q*, i32, i8 zeroext, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @queue_type(%struct.qdio_q*) #1

declare dso_local i64 @multicast_outbound(%struct.qdio_q*) #1

declare dso_local i32 @qdio_kick_outbound_q(%struct.qdio_q*, i64) #1

declare dso_local i64 @qdio_aob_for_buffer(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @next_buf(i32) #1

declare dso_local i64 @need_siga_sync(%struct.qdio_q*) #1

declare dso_local i32 @qdio_siga_sync_q(%struct.qdio_q*) #1

declare dso_local i32 @get_buf_state(%struct.qdio_q*, i32, i8*, i32) #1

declare dso_local i32 @prev_buf(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
