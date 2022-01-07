; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_clear_mr_refs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_clear_mr_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, i64, i64, %struct.qib_ack_entry*, %struct.TYPE_10__, i32*, i32, i32, i32 }
%struct.qib_ack_entry = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64 }
%struct.qib_swqe = type { %struct.TYPE_9__, %struct.qib_sge* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.qib_sge = type { i32* }
%struct.TYPE_12__ = type { i32 }

@QIB_R_REWIND_SGE = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QPT_SMI = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_OPCODE_RC_RDMA_READ_REQUEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_qp*, i32)* @clear_mr_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_mr_refs(%struct.qib_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qib_swqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_sge*, align 8
  %9 = alloca %struct.qib_ack_entry*, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @QIB_R_REWIND_SGE, align 4
  %11 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %12 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %11, i32 0, i32 8
  %13 = call i64 @test_and_clear_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %17 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %16, i32 0, i32 7
  %18 = call i32 @qib_put_ss(i32* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %21 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %20, i32 0, i32 6
  %22 = call i32 @qib_put_ss(i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %118

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %104, %25
  %27 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %28 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %31 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %105

34:                                               ; preds = %26
  %35 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %36 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %37 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %35, i64 %38)
  store %struct.qib_swqe* %39, %struct.qib_swqe** %6, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %58, %34
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.qib_swqe*, %struct.qib_swqe** %6, align 8
  %43 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.qib_swqe*, %struct.qib_swqe** %6, align 8
  %49 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %48, i32 0, i32 1
  %50 = load %struct.qib_sge*, %struct.qib_sge** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %50, i64 %52
  store %struct.qib_sge* %53, %struct.qib_sge** %8, align 8
  %54 = load %struct.qib_sge*, %struct.qib_sge** %8, align 8
  %55 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @qib_put_mr(i32* %56)
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %40

61:                                               ; preds = %40
  %62 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %63 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IB_QPT_UD, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %70 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IB_QPT_SMI, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %77 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IB_QPT_GSI, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %75, %68, %61
  %83 = load %struct.qib_swqe*, %struct.qib_swqe** %6, align 8
  %84 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.TYPE_12__* @to_iah(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = call i32 @atomic_dec(i32* %90)
  br label %92

92:                                               ; preds = %82, %75
  %93 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %94 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %98 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp sge i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %103 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %92
  br label %26

105:                                              ; preds = %26
  %106 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %107 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %112 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @qib_put_mr(i32* %113)
  %115 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %116 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %115, i32 0, i32 5
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %110, %105
  br label %118

118:                                              ; preds = %117, %19
  %119 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %120 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IB_QPT_RC, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %165

126:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %162, %126
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %130 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %129, i32 0, i32 3
  %131 = load %struct.qib_ack_entry*, %struct.qib_ack_entry** %130, align 8
  %132 = call i32 @ARRAY_SIZE(%struct.qib_ack_entry* %131)
  %133 = icmp ult i32 %128, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %127
  %135 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %136 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %135, i32 0, i32 3
  %137 = load %struct.qib_ack_entry*, %struct.qib_ack_entry** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.qib_ack_entry, %struct.qib_ack_entry* %137, i64 %139
  store %struct.qib_ack_entry* %140, %struct.qib_ack_entry** %9, align 8
  %141 = load %struct.qib_ack_entry*, %struct.qib_ack_entry** %9, align 8
  %142 = getelementptr inbounds %struct.qib_ack_entry, %struct.qib_ack_entry* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IB_OPCODE_RC_RDMA_READ_REQUEST, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %134
  %147 = load %struct.qib_ack_entry*, %struct.qib_ack_entry** %9, align 8
  %148 = getelementptr inbounds %struct.qib_ack_entry, %struct.qib_ack_entry* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load %struct.qib_ack_entry*, %struct.qib_ack_entry** %9, align 8
  %154 = getelementptr inbounds %struct.qib_ack_entry, %struct.qib_ack_entry* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @qib_put_mr(i32* %156)
  %158 = load %struct.qib_ack_entry*, %struct.qib_ack_entry** %9, align 8
  %159 = getelementptr inbounds %struct.qib_ack_entry, %struct.qib_ack_entry* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  store i32* null, i32** %160, align 8
  br label %161

161:                                              ; preds = %152, %146, %134
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %5, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %127

165:                                              ; preds = %125, %127
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @qib_put_ss(i32*) #1

declare dso_local %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp*, i64) #1

declare dso_local i32 @qib_put_mr(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_12__* @to_iah(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.qib_ack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
