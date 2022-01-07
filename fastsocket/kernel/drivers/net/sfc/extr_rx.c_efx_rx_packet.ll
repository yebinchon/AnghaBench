; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_rx_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, %struct.efx_nic* }
%struct.efx_nic = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.efx_channel = type { i32, i32 }
%struct.efx_rx_buffer = type { i32, i32, i32 }

@EFX_RX_MAX_FRAGS = common dso_local global i32 0, align 4
@EFX_RX_USR_BUF_SIZE = common dso_local global i32 0, align 4
@EFX_RX_PKT_DISCARD = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RX queue %d received ids %x-%x len %d %s%s\0A\00", align 1
@EFX_RX_PKT_CSUMMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" [SUMMED]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [DISCARD]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_rx_packet(%struct.efx_rx_queue* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.efx_rx_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.efx_nic*, align 8
  %12 = alloca %struct.efx_channel*, align 8
  %13 = alloca %struct.efx_rx_buffer*, align 8
  %14 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %16 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %15, i32 0, i32 1
  %17 = load %struct.efx_nic*, %struct.efx_nic** %16, align 8
  store %struct.efx_nic* %17, %struct.efx_nic** %11, align 8
  %18 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %19 = call %struct.efx_channel* @efx_rx_queue_channel(%struct.efx_rx_queue* %18)
  store %struct.efx_channel* %19, %struct.efx_channel** %12, align 8
  %20 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue* %20, i32 %21)
  store %struct.efx_rx_buffer* %22, %struct.efx_rx_buffer** %13, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %25 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %32 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @efx_rx_packet__check_len(%struct.efx_rx_queue* %31, %struct.efx_rx_buffer* %32, i32 %33)
  br label %91

35:                                               ; preds = %5
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EFX_RX_MAX_FRAGS, align 4
  %38 = icmp ugt i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %70, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub i32 %44, 1
  %46 = load i32, i32* @EFX_RX_USR_BUF_SIZE, align 4
  %47 = mul i32 %45, %46
  %48 = icmp ule i32 %43, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @EFX_RX_USR_BUF_SIZE, align 4
  %56 = mul i32 %54, %55
  %57 = icmp ugt i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %63 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %61, %52, %42, %35
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %75 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %73, %70
  %81 = phi i1 [ false, %70 ], [ %79, %73 ]
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON(i32 %83)
  %85 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %86 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %87 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %80, %61
  br label %91

91:                                               ; preds = %90, %30
  %92 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %93 = load i32, i32* @rx_status, align 4
  %94 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %95 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %98 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %100, %101
  %103 = sub i32 %102, 1
  %104 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %105 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %103, %106
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %110 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @EFX_RX_PKT_CSUMMED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %117 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %118 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %125 = call i32 @netif_vdbg(%struct.efx_nic* %92, i32 %93, i32 %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99, i32 %107, i32 %108, i8* %116, i8* %124)
  %126 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %127 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %130 = and i32 %128, %129
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %91
  %134 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %135 = call i32 @efx_rx_flush_packet(%struct.efx_channel* %134)
  %136 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %137 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @efx_discard_rx_packet(%struct.efx_channel* %136, %struct.efx_rx_buffer* %137, i32 %138)
  br label %228

140:                                              ; preds = %91
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %146 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %140
  %148 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %149 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %150 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %151 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @efx_sync_rx_buffer(%struct.efx_nic* %148, %struct.efx_rx_buffer* %149, i32 %152)
  %154 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %155 = call i32 @efx_rx_buf_va(%struct.efx_rx_buffer* %154)
  %156 = call i32 @prefetch(i32 %155)
  %157 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %158 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %163 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %161
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 4
  %168 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %169 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %174 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  %177 = sub nsw i64 %176, %172
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ugt i32 %179, 1
  br i1 %180, label %181, label %212

181:                                              ; preds = %147
  %182 = load i32, i32* %8, align 4
  %183 = sub i32 %182, 1
  store i32 %183, i32* %14, align 4
  br label %184

184:                                              ; preds = %192, %181
  %185 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %186 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %187 = call %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.efx_rx_queue* %185, %struct.efx_rx_buffer* %186)
  store %struct.efx_rx_buffer* %187, %struct.efx_rx_buffer** %13, align 8
  %188 = load i32, i32* %14, align 4
  %189 = add i32 %188, -1
  store i32 %189, i32* %14, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %197

192:                                              ; preds = %184
  %193 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %194 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %195 = load i32, i32* @EFX_RX_USR_BUF_SIZE, align 4
  %196 = call i32 @efx_sync_rx_buffer(%struct.efx_nic* %193, %struct.efx_rx_buffer* %194, i32 %195)
  br label %184

197:                                              ; preds = %191
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %8, align 4
  %200 = sub i32 %199, 1
  %201 = load i32, i32* @EFX_RX_USR_BUF_SIZE, align 4
  %202 = mul i32 %200, %201
  %203 = sub i32 %198, %202
  %204 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %205 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %207 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %208 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %209 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @efx_sync_rx_buffer(%struct.efx_nic* %206, %struct.efx_rx_buffer* %207, i32 %210)
  br label %212

212:                                              ; preds = %197, %147
  %213 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %214 = load i32, i32* %7, align 4
  %215 = call %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue* %213, i32 %214)
  store %struct.efx_rx_buffer* %215, %struct.efx_rx_buffer** %13, align 8
  %216 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %217 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @efx_recycle_rx_pages(%struct.efx_channel* %216, %struct.efx_rx_buffer* %217, i32 %218)
  %220 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %221 = call i32 @efx_rx_flush_packet(%struct.efx_channel* %220)
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %224 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %227 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %212, %133
  ret void
}

declare dso_local %struct.efx_channel* @efx_rx_queue_channel(%struct.efx_rx_queue*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue*, i32) #1

declare dso_local i32 @efx_rx_packet__check_len(%struct.efx_rx_queue*, %struct.efx_rx_buffer*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @netif_vdbg(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @efx_rx_flush_packet(%struct.efx_channel*) #1

declare dso_local i32 @efx_discard_rx_packet(%struct.efx_channel*, %struct.efx_rx_buffer*, i32) #1

declare dso_local i32 @efx_sync_rx_buffer(%struct.efx_nic*, %struct.efx_rx_buffer*, i32) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @efx_rx_buf_va(%struct.efx_rx_buffer*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.efx_rx_queue*, %struct.efx_rx_buffer*) #1

declare dso_local i32 @efx_recycle_rx_pages(%struct.efx_channel*, %struct.efx_rx_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
