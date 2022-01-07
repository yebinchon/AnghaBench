; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_handle_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32*, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@FLAG_MPI = common dso_local global i32 0, align 4
@EV_TXEXC = common dso_local global i32 0, align 4
@FLAG_PENDING_XMIT = common dso_local global i32 0, align 4
@EVACK = common dso_local global i32 0, align 4
@EV_TX = common dso_local global i32 0, align 4
@EV_TXCPY = common dso_local global i32 0, align 4
@TXCOMPLFID = common dso_local global i32 0, align 4
@MAX_FIDS = common dso_local global i32 0, align 4
@FLAG_PENDING_XMIT11 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unallocated FID was used to xmit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*, i32)* @airo_handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_handle_tx(%struct.airo_info* %0, i32 %1) #0 {
  %3 = alloca %struct.airo_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.airo_info* %0, %struct.airo_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %10 = load i32, i32* @FLAG_MPI, align 4
  %11 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %12 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %11, i32 0, i32 3
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EV_TXEXC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %22 = call i32 @get_tx_error(%struct.airo_info* %21, i32 -1)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %25 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %24, i32 0, i32 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %29 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %28, i32 0, i32 5
  %30 = call i32 @skb_queue_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %34 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %33, i32 0, i32 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %38 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @mpi_send_packet(%struct.TYPE_3__* %39)
  br label %54

41:                                               ; preds = %23
  %42 = load i32, i32* @FLAG_PENDING_XMIT, align 4
  %43 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %44 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %43, i32 0, i32 3
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  %46 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %47 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %46, i32 0, i32 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %51 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @netif_wake_queue(%struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %41, %32
  %55 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %56 = load i32, i32* @EVACK, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @EV_TX, align 4
  %59 = load i32, i32* @EV_TXCPY, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @EV_TXEXC, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %57, %62
  %64 = call i32 @OUT4500(%struct.airo_info* %55, i32 %56, i32 %63)
  br label %173

65:                                               ; preds = %2
  %66 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %67 = load i32, i32* @TXCOMPLFID, align 4
  %68 = call i32 @IN4500(%struct.airo_info* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %95, %65
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @MAX_FIDS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %75 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 65535
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %73
  %85 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %86 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 16
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %84, %73
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %69

98:                                               ; preds = %69
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %156

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @EV_TXEXC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @get_tx_error(%struct.airo_info* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %101
  %111 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %112 = load i32, i32* @EVACK, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @EV_TX, align 4
  %115 = load i32, i32* @EV_TXEXC, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = call i32 @OUT4500(%struct.airo_info* %111, i32 %112, i32 %117)
  %119 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %120 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 65535
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @MAX_FIDS, align 4
  %129 = sdiv i32 %128, 2
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %110
  %132 = load i32, i32* @FLAG_PENDING_XMIT, align 4
  %133 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %134 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %133, i32 0, i32 3
  %135 = call i64 @test_bit(i32 %132, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %131
  %138 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %139 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = call i32 @netif_wake_queue(%struct.TYPE_3__* %140)
  br label %142

142:                                              ; preds = %137, %131
  br label %155

143:                                              ; preds = %110
  %144 = load i32, i32* @FLAG_PENDING_XMIT11, align 4
  %145 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %146 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %145, i32 0, i32 3
  %147 = call i64 @test_bit(i32 %144, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %143
  %150 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %151 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %150, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = call i32 @netif_wake_queue(%struct.TYPE_3__* %152)
  br label %154

154:                                              ; preds = %149, %143
  br label %155

155:                                              ; preds = %154, %142
  br label %173

156:                                              ; preds = %98
  %157 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %158 = load i32, i32* @EVACK, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @EV_TX, align 4
  %161 = load i32, i32* @EV_TXCPY, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @EV_TXEXC, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %159, %164
  %166 = call i32 @OUT4500(%struct.airo_info* %157, i32 %158, i32 %165)
  %167 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %168 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %167, i32 0, i32 1
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @airo_print_err(i32 %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %173

173:                                              ; preds = %54, %156, %155
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @get_tx_error(%struct.airo_info*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mpi_send_packet(%struct.TYPE_3__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_3__*) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @airo_print_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
