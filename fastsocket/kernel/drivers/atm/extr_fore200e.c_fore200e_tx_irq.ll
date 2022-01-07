; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_fore200e.c_fore200e_tx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_fore200e.c_fore200e_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { %struct.host_txq, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.host_txq = type { i64, i64, %struct.host_txq_entry* }
%struct.host_txq_entry = type { i32*, i64, i32, %struct.fore200e_vc_map*, %struct.TYPE_9__*, i32 }
%struct.fore200e_vc_map = type { i64, %struct.atm_vcc* }
%struct.atm_vcc = type { %struct.TYPE_11__*, i32 (%struct.atm_vcc*, i32)*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.fore200e*, i32, i32, i32)* }
%struct.TYPE_12__ = type { i32 }

@STATUS_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"TX COMPLETED: entry = %p [tail = %d], vc_map = %p, skb = %p\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"no ready vcc found for PDU sent on device %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"vcc closed-then-re-opened; dropping PDU sent on device %d\0A\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@STATUS_FREE = common dso_local global i32 0, align 4
@QUEUE_SIZE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fore200e*)* @fore200e_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fore200e_tx_irq(%struct.fore200e* %0) #0 {
  %2 = alloca %struct.fore200e*, align 8
  %3 = alloca %struct.host_txq*, align 8
  %4 = alloca %struct.host_txq_entry*, align 8
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca %struct.fore200e_vc_map*, align 8
  store %struct.fore200e* %0, %struct.fore200e** %2, align 8
  %7 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %8 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %7, i32 0, i32 0
  store %struct.host_txq* %8, %struct.host_txq** %3, align 8
  %9 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %10 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %197

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %182, %15
  %17 = load %struct.host_txq*, %struct.host_txq** %3, align 8
  %18 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %17, i32 0, i32 2
  %19 = load %struct.host_txq_entry*, %struct.host_txq_entry** %18, align 8
  %20 = load %struct.host_txq*, %struct.host_txq** %3, align 8
  %21 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %19, i64 %22
  store %struct.host_txq_entry* %23, %struct.host_txq_entry** %4, align 8
  %24 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %25 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STATUS_COMPLETE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %197

32:                                               ; preds = %16
  %33 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %34 = load %struct.host_txq*, %struct.host_txq** %3, align 8
  %35 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %38 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %37, i32 0, i32 3
  %39 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %38, align 8
  %40 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %41 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, %struct.host_txq_entry*, ...) @DPRINTK(i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.host_txq_entry* %33, i64 %36, %struct.fore200e_vc_map* %39, i32 %42)
  %44 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %45 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kfree(i32 %46)
  %48 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %49 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32 (%struct.fore200e*, i32, i32, i32)*, i32 (%struct.fore200e*, i32, i32, i32)** %51, align 8
  %53 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %54 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %55 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %54, i32 0, i32 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %63 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %62, i32 0, i32 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DMA_TO_DEVICE, align 4
  %71 = call i32 %52(%struct.fore200e* %53, i32 %61, i32 %69, i32 %70)
  %72 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %73 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %72, i32 0, i32 3
  %74 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %73, align 8
  store %struct.fore200e_vc_map* %74, %struct.fore200e_vc_map** %6, align 8
  %75 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %76 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %75, i32 0, i32 1
  %77 = load %struct.atm_vcc*, %struct.atm_vcc** %76, align 8
  %78 = icmp eq %struct.atm_vcc* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %32
  %80 = load i32, i32* @ATM_VF_READY, align 4
  %81 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %82 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %81, i32 0, i32 1
  %83 = load %struct.atm_vcc*, %struct.atm_vcc** %82, align 8
  %84 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %83, i32 0, i32 2
  %85 = call i64 @test_bit(i32 %80, i32* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %79, %32
  %88 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %89 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to %struct.host_txq_entry*
  %95 = call i32 (i32, i8*, %struct.host_txq_entry*, ...) @DPRINTK(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.host_txq_entry* %94)
  %96 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %97 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_kfree_skb_any(i32 %98)
  br label %182

100:                                              ; preds = %79
  %101 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %102 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %101, i32 0, i32 1
  %103 = load %struct.atm_vcc*, %struct.atm_vcc** %102, align 8
  %104 = call i32 @ASSERT(%struct.atm_vcc* %103)
  %105 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %106 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %109 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %100
  %113 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %114 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %113, i32 0, i32 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to %struct.host_txq_entry*
  %120 = call i32 (i32, i8*, %struct.host_txq_entry*, ...) @DPRINTK(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), %struct.host_txq_entry* %119)
  %121 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %122 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dev_kfree_skb_any(i32 %123)
  br label %181

125:                                              ; preds = %100
  %126 = load %struct.fore200e_vc_map*, %struct.fore200e_vc_map** %6, align 8
  %127 = getelementptr inbounds %struct.fore200e_vc_map, %struct.fore200e_vc_map* %126, i32 0, i32 1
  %128 = load %struct.atm_vcc*, %struct.atm_vcc** %127, align 8
  store %struct.atm_vcc* %128, %struct.atm_vcc** %5, align 8
  %129 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %130 = call i32 @ASSERT(%struct.atm_vcc* %129)
  %131 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %132 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %131, i32 0, i32 1
  %133 = load i32 (%struct.atm_vcc*, i32)*, i32 (%struct.atm_vcc*, i32)** %132, align 8
  %134 = icmp ne i32 (%struct.atm_vcc*, i32)* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %137 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %136, i32 0, i32 1
  %138 = load i32 (%struct.atm_vcc*, i32)*, i32 (%struct.atm_vcc*, i32)** %137, align 8
  %139 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %140 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %141 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 %138(%struct.atm_vcc* %139, i32 %142)
  br label %149

144:                                              ; preds = %125
  %145 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %146 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @dev_kfree_skb_any(i32 %147)
  br label %149

149:                                              ; preds = %144, %135
  %150 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %151 = call %struct.TYPE_12__* @sk_atm(%struct.atm_vcc* %150)
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = call i64 @atomic_read(i32* %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %157 = call %struct.TYPE_12__* @sk_atm(%struct.atm_vcc* %156)
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = call i32 @atomic_set(i32* %158, i32 0)
  br label %160

160:                                              ; preds = %155, %149
  %161 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %162 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @STATUS_ERROR, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %160
  %169 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %170 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %169, i32 0, i32 0
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = call i32 @atomic_inc(i32* %172)
  br label %180

174:                                              ; preds = %160
  %175 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %176 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %175, i32 0, i32 0
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = call i32 @atomic_inc(i32* %178)
  br label %180

180:                                              ; preds = %174, %168
  br label %181

181:                                              ; preds = %180, %112
  br label %182

182:                                              ; preds = %181, %87
  %183 = load i32, i32* @STATUS_FREE, align 4
  %184 = load %struct.host_txq_entry*, %struct.host_txq_entry** %4, align 8
  %185 = getelementptr inbounds %struct.host_txq_entry, %struct.host_txq_entry* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  store i32 %183, i32* %186, align 4
  %187 = load %struct.fore200e*, %struct.fore200e** %2, align 8
  %188 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, -1
  store i64 %191, i64* %189, align 8
  %192 = load %struct.host_txq*, %struct.host_txq** %3, align 8
  %193 = getelementptr inbounds %struct.host_txq, %struct.host_txq* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* @QUEUE_SIZE_TX, align 4
  %196 = call i32 @FORE200E_NEXT_ENTRY(i64 %194, i32 %195)
  br label %16

197:                                              ; preds = %14, %31
  ret void
}

declare dso_local i32 @DPRINTK(i32, i8*, %struct.host_txq_entry*, ...) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @ASSERT(%struct.atm_vcc*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_12__* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @FORE200E_NEXT_ENTRY(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
