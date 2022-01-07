; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid_run_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid_run_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i64, %struct.r5conf*, %struct.r5dev*, %struct.TYPE_2__ }
%struct.r5conf = type { i32, i32, i32 }
%struct.r5dev = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.raid5_percpu = type { i32 }

@STRIPE_OP_BIOFILL = common dso_local global i32 0, align 4
@STRIPE_OP_COMPUTE_BLK = common dso_local global i32 0, align 4
@STRIPE_OP_RECONSTRUCT = common dso_local global i32 0, align 4
@STRIPE_OP_PREXOR = common dso_local global i32 0, align 4
@STRIPE_OP_BIODRAIN = common dso_local global i32 0, align 4
@STRIPE_OP_CHECK = common dso_local global i32 0, align 4
@check_state_run = common dso_local global i64 0, align 8
@check_state_run_q = common dso_local global i64 0, align 8
@check_state_run_pq = common dso_local global i64 0, align 8
@R5_Overlap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*, i64)* @raid_run_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid_run_ops(%struct.stripe_head* %0, i64 %1) #0 {
  %3 = alloca %struct.stripe_head*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca %struct.r5conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.raid5_percpu*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.r5dev*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %15 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %8, align 8
  %17 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %18 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %17, i32 0, i32 2
  %19 = load %struct.r5conf*, %struct.r5conf** %18, align 8
  store %struct.r5conf* %19, %struct.r5conf** %9, align 8
  %20 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %21 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = call i64 (...) @get_cpu()
  store i64 %23, i64* %12, align 8
  %24 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %25 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call %struct.raid5_percpu* @per_cpu_ptr(i32 %26, i64 %27)
  store %struct.raid5_percpu* %28, %struct.raid5_percpu** %11, align 8
  %29 = load i32, i32* @STRIPE_OP_BIOFILL, align 4
  %30 = call i64 @test_bit(i32 %29, i64* %4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %34 = call i32 @ops_run_biofill(%struct.stripe_head* %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %2
  %38 = load i32, i32* @STRIPE_OP_COMPUTE_BLK, align 4
  %39 = call i64 @test_bit(i32 %38, i64* %4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 6
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %46 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %47 = call %struct.dma_async_tx_descriptor* @ops_run_compute5(%struct.stripe_head* %45, %struct.raid5_percpu* %46)
  store %struct.dma_async_tx_descriptor* %47, %struct.dma_async_tx_descriptor** %8, align 8
  br label %69

48:                                               ; preds = %41
  %49 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %50 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %56 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %48
  %61 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %62 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %63 = call %struct.dma_async_tx_descriptor* @ops_run_compute6_1(%struct.stripe_head* %61, %struct.raid5_percpu* %62)
  store %struct.dma_async_tx_descriptor* %63, %struct.dma_async_tx_descriptor** %8, align 8
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %66 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %67 = call %struct.dma_async_tx_descriptor* @ops_run_compute6_2(%struct.stripe_head* %65, %struct.raid5_percpu* %66)
  store %struct.dma_async_tx_descriptor* %67, %struct.dma_async_tx_descriptor** %8, align 8
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %44
  %70 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %71 = icmp ne %struct.dma_async_tx_descriptor* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* @STRIPE_OP_RECONSTRUCT, align 4
  %74 = call i64 @test_bit(i32 %73, i64* %4)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %78 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %77)
  br label %79

79:                                               ; preds = %76, %72, %69
  br label %80

80:                                               ; preds = %79, %37
  %81 = load i32, i32* @STRIPE_OP_PREXOR, align 4
  %82 = call i64 @test_bit(i32 %81, i64* %4)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %86 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %87 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %88 = call %struct.dma_async_tx_descriptor* @ops_run_prexor(%struct.stripe_head* %85, %struct.raid5_percpu* %86, %struct.dma_async_tx_descriptor* %87)
  store %struct.dma_async_tx_descriptor* %88, %struct.dma_async_tx_descriptor** %8, align 8
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* @STRIPE_OP_BIODRAIN, align 4
  %91 = call i64 @test_bit(i32 %90, i64* %4)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %95 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %96 = call %struct.dma_async_tx_descriptor* @ops_run_biodrain(%struct.stripe_head* %94, %struct.dma_async_tx_descriptor* %95)
  store %struct.dma_async_tx_descriptor* %96, %struct.dma_async_tx_descriptor** %8, align 8
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %89
  %100 = load i32, i32* @STRIPE_OP_RECONSTRUCT, align 4
  %101 = call i64 @test_bit(i32 %100, i64* %4)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 6
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %108 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %109 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %110 = call i32 @ops_run_reconstruct5(%struct.stripe_head* %107, %struct.raid5_percpu* %108, %struct.dma_async_tx_descriptor* %109)
  br label %116

111:                                              ; preds = %103
  %112 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %113 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %114 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %115 = call i32 @ops_run_reconstruct6(%struct.stripe_head* %112, %struct.raid5_percpu* %113, %struct.dma_async_tx_descriptor* %114)
  br label %116

116:                                              ; preds = %111, %106
  br label %117

117:                                              ; preds = %116, %99
  %118 = load i32, i32* @STRIPE_OP_CHECK, align 4
  %119 = call i64 @test_bit(i32 %118, i64* %4)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %156

121:                                              ; preds = %117
  %122 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %123 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @check_state_run, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %129 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %130 = call i32 @ops_run_check_p(%struct.stripe_head* %128, %struct.raid5_percpu* %129)
  br label %155

131:                                              ; preds = %121
  %132 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %133 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @check_state_run_q, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %139 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %140 = call i32 @ops_run_check_pq(%struct.stripe_head* %138, %struct.raid5_percpu* %139, i32 0)
  br label %154

141:                                              ; preds = %131
  %142 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %143 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @check_state_run_pq, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %149 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %150 = call i32 @ops_run_check_pq(%struct.stripe_head* %148, %struct.raid5_percpu* %149, i32 1)
  br label %153

151:                                              ; preds = %141
  %152 = call i32 (...) @BUG()
  br label %153

153:                                              ; preds = %151, %147
  br label %154

154:                                              ; preds = %153, %137
  br label %155

155:                                              ; preds = %154, %127
  br label %156

156:                                              ; preds = %155, %117
  %157 = load i32, i32* %5, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %185

159:                                              ; preds = %156
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %183, %159
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %6, align 4
  %164 = icmp ne i32 %162, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %161
  %166 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %167 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %166, i32 0, i32 3
  %168 = load %struct.r5dev*, %struct.r5dev** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %168, i64 %170
  store %struct.r5dev* %171, %struct.r5dev** %13, align 8
  %172 = load i32, i32* @R5_Overlap, align 4
  %173 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %174 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %173, i32 0, i32 0
  %175 = call i64 @test_and_clear_bit(i32 %172, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %165
  %178 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %179 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %178, i32 0, i32 2
  %180 = load %struct.r5conf*, %struct.r5conf** %179, align 8
  %181 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %180, i32 0, i32 1
  %182 = call i32 @wake_up(i32* %181)
  br label %183

183:                                              ; preds = %177, %165
  br label %161

184:                                              ; preds = %161
  br label %185

185:                                              ; preds = %184, %156
  %186 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i64 @get_cpu(...) #1

declare dso_local %struct.raid5_percpu* @per_cpu_ptr(i32, i64) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @ops_run_biofill(%struct.stripe_head*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_compute5(%struct.stripe_head*, %struct.raid5_percpu*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_compute6_1(%struct.stripe_head*, %struct.raid5_percpu*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_compute6_2(%struct.stripe_head*, %struct.raid5_percpu*) #1

declare dso_local i32 @async_tx_ack(%struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_prexor(%struct.stripe_head*, %struct.raid5_percpu*, %struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_biodrain(%struct.stripe_head*, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @ops_run_reconstruct5(%struct.stripe_head*, %struct.raid5_percpu*, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @ops_run_reconstruct6(%struct.stripe_head*, %struct.raid5_percpu*, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @ops_run_check_p(%struct.stripe_head*, %struct.raid5_percpu*) #1

declare dso_local i32 @ops_run_check_pq(%struct.stripe_head*, %struct.raid5_percpu*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
