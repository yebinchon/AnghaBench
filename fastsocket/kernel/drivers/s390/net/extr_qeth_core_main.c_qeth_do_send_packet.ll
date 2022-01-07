; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_do_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_do_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_qdio_out_q = type { i32, %struct.TYPE_6__*, i32, i32, %struct.qeth_qdio_out_buffer**, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.qeth_qdio_out_buffer = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.qeth_hdr = type { i32 }

@QETH_OUT_Q_UNLOCKED = common dso_local global i64 0, align 8
@QETH_OUT_Q_LOCKED = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_EMPTY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_PRIMED = common dso_local global i64 0, align 8
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@QETH_OUT_Q_LOCKED_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_do_send_packet(%struct.qeth_card* %0, %struct.qeth_qdio_out_q* %1, %struct.sk_buff* %2, %struct.qeth_hdr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca %struct.qeth_qdio_out_q*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.qeth_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %7, align 8
  store %struct.qeth_qdio_out_q* %1, %struct.qeth_qdio_out_q** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store %struct.qeth_hdr* %3, %struct.qeth_hdr** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %26, %5
  %19 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %20 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %19, i32 0, i32 3
  %21 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %22 = load i32, i32* @QETH_OUT_Q_LOCKED, align 4
  %23 = call i64 @atomic_cmpxchg(i32* %20, i64 %21, i32 %22)
  %24 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %18

27:                                               ; preds = %18
  %28 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %29 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %32 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %31, i32 0, i32 4
  %33 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %32, align 8
  %34 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %35 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %33, i64 %37
  %39 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %38, align 8
  store %struct.qeth_qdio_out_buffer* %39, %struct.qeth_qdio_out_buffer** %12, align 8
  %40 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %12, align 8
  %41 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %40, i32 0, i32 1
  %42 = call i64 @atomic_read(i32* %41)
  %43 = load i64, i64* @QETH_QDIO_BUF_EMPTY, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %47 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %46, i32 0, i32 3
  %48 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %49 = call i32 @atomic_set(i32* %47, i64 %48)
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %207

52:                                               ; preds = %27
  %53 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %54 = call i32 @qeth_switch_to_packing_if_needed(%struct.qeth_qdio_out_q* %53)
  %55 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %56 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %110

59:                                               ; preds = %52
  store i32 1, i32* %15, align 4
  %60 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %61 = call i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card* %60)
  %62 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %12, align 8
  %63 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %109

68:                                               ; preds = %59
  %69 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %12, align 8
  %70 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %69, i32 0, i32 1
  %71 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %72 = call i32 @atomic_set(i32* %70, i64 %71)
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  %75 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %76 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %80 = srem i32 %78, %79
  %81 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %82 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %84 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %83, i32 0, i32 4
  %85 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %84, align 8
  %86 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %87 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %85, i64 %89
  %91 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %90, align 8
  store %struct.qeth_qdio_out_buffer* %91, %struct.qeth_qdio_out_buffer** %12, align 8
  %92 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %12, align 8
  %93 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %92, i32 0, i32 1
  %94 = call i64 @atomic_read(i32* %93)
  %95 = load i64, i64* @QETH_QDIO_BUF_EMPTY, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %68
  %98 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q* %98, i32 %99, i32 %100)
  %102 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %103 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %102, i32 0, i32 3
  %104 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %105 = call i32 @atomic_set(i32* %103, i64 %104)
  %106 = load i32, i32* @EBUSY, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %207

108:                                              ; preds = %68
  br label %109

109:                                              ; preds = %108, %59
  br label %110

110:                                              ; preds = %109, %52
  %111 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %112 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %12, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = load %struct.qeth_hdr*, %struct.qeth_hdr** %10, align 8
  %115 = call i32 @qeth_fill_buffer(%struct.qeth_qdio_out_q* %111, %struct.qeth_qdio_out_buffer* %112, %struct.sk_buff* %113, %struct.qeth_hdr* %114, i32 -1, i32 0)
  store i32 %115, i32* %16, align 4
  %116 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %117 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %122 = srem i32 %120, %121
  %123 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %124 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %110
  %131 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q* %131, i32 %132, i32 %133)
  br label %146

135:                                              ; preds = %110
  %136 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %137 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %136, i32 0, i32 2
  %138 = call i64 @atomic_read(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %142 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %141, i32 0, i32 3
  %143 = load i32, i32* @QETH_OUT_Q_LOCKED_FLUSH, align 4
  %144 = call i32 @atomic_xchg(i32* %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %135
  br label %146

146:                                              ; preds = %145, %130
  br label %147

147:                                              ; preds = %184, %146
  %148 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %149 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %148, i32 0, i32 3
  %150 = call i64 @atomic_dec_return(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %147
  store i32 0, i32* %14, align 4
  %153 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %154 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %13, align 4
  %156 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %157 = call i64 @qeth_switch_to_nonpacking_if_needed(%struct.qeth_qdio_out_q* %156)
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %176, label %164

164:                                              ; preds = %152
  %165 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %166 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %165, i32 0, i32 2
  %167 = call i64 @atomic_read(i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %164
  %170 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %171 = call i64 @qeth_flush_buffers_on_no_pci(%struct.qeth_qdio_out_q* %170)
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %169, %164, %152
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q* %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %179, %176
  br label %147

185:                                              ; preds = %147
  %186 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %187 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %185
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load i32, i32* %14, align 4
  %198 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %8, align 8
  %199 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, %197
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %196, %193, %185
  %206 = load i32, i32* %17, align 4
  store i32 %206, i32* %6, align 4
  br label %207

207:                                              ; preds = %205, %97, %45
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @qeth_switch_to_packing_if_needed(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card*) #1

declare dso_local i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @qeth_fill_buffer(%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, %struct.sk_buff*, %struct.qeth_hdr*, i32, i32) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i64 @qeth_switch_to_nonpacking_if_needed(%struct.qeth_qdio_out_q*) #1

declare dso_local i64 @qeth_flush_buffers_on_no_pci(%struct.qeth_qdio_out_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
