; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_hcmd_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_hcmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_device_cmd = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.iwl_cmd_meta = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.iwl_rx_packet* }
%struct.iwl_trans_pcie = type { i64, i32, i32, i32, %struct.iwl_txq* }
%struct.iwl_txq = type { i32, i32*, %struct.TYPE_7__*, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { %struct.iwl_cmd_meta, %struct.iwl_device_cmd* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"wrong command queue %d (should be %d), sequence 0x%X readp=%d writep=%d\0A\00", align 1
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@STATUS_HCMD_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"HCMD_ACTIVE already clear for command %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Clearing HCMD_ACTIVE for command %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_hcmd_complete(%struct.iwl_trans* %0, %struct.iwl_rx_cmd_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_device_cmd*, align 8
  %13 = alloca %struct.iwl_cmd_meta*, align 8
  %14 = alloca %struct.iwl_trans_pcie*, align 8
  %15 = alloca %struct.iwl_txq*, align 8
  %16 = alloca %struct.page*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %18 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %17)
  store %struct.iwl_rx_packet* %18, %struct.iwl_rx_packet** %7, align 8
  %19 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @SEQ_TO_QUEUE(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @SEQ_TO_INDEX(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %29 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %28)
  store %struct.iwl_trans_pcie* %29, %struct.iwl_trans_pcie** %14, align 8
  %30 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %31 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %30, i32 0, i32 4
  %32 = load %struct.iwl_txq*, %struct.iwl_txq** %31, align 8
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %32, i64 %35
  store %struct.iwl_txq* %36, %struct.iwl_txq** %15, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %40 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %46 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %51 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %50, i32 0, i32 4
  %52 = load %struct.iwl_txq*, %struct.iwl_txq** %51, align 8
  %53 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %54 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %52, i64 %55
  %57 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %61 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %60, i32 0, i32 4
  %62 = load %struct.iwl_txq*, %struct.iwl_txq** %61, align 8
  %63 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %64 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %62, i64 %65
  %67 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @WARN(i32 %43, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48, i32 %49, i32 %59, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %3
  %73 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %74 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %75 = call i32 @iwl_print_hex_error(%struct.iwl_trans* %73, %struct.iwl_rx_packet* %74, i32 32)
  br label %188

76:                                               ; preds = %3
  %77 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %78 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %77, i32 0, i32 0
  %79 = call i32 @spin_lock_bh(i32* %78)
  %80 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %81 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %80, i32 0, i32 3
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @get_cmd_index(%struct.TYPE_10__* %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %85 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %90, align 8
  store %struct.iwl_device_cmd* %91, %struct.iwl_device_cmd** %12, align 8
  %92 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %93 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store %struct.iwl_cmd_meta* %98, %struct.iwl_cmd_meta** %13, align 8
  %99 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %100 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %101 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %102 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i32 @iwl_pcie_tfd_unmap(%struct.iwl_trans* %99, %struct.iwl_cmd_meta* %100, i32* %106)
  %108 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %109 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CMD_WANT_SKB, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %76
  %115 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %5, align 8
  %116 = call %struct.page* @rxb_steal_page(%struct.iwl_rx_cmd_buffer* %115)
  store %struct.page* %116, %struct.page** %16, align 8
  %117 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %118 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %119 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  store %struct.iwl_rx_packet* %117, %struct.iwl_rx_packet** %121, align 8
  %122 = load %struct.page*, %struct.page** %16, align 8
  %123 = call i64 @page_address(%struct.page* %122)
  %124 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %125 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i64 %123, i64* %127, align 8
  %128 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %129 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %132 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %137 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 8
  br label %140

140:                                              ; preds = %114, %76
  %141 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @iwl_pcie_cmdq_reclaim(%struct.iwl_trans* %141, i32 %142, i32 %143)
  %145 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %146 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CMD_ASYNC, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %182, label %151

151:                                              ; preds = %140
  %152 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %153 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %154 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %153, i32 0, i32 2
  %155 = call i32 @test_bit(i32 %152, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %151
  %158 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %159 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %160 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %161 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %159, i32 %163)
  %165 = call i32 @IWL_WARN(%struct.iwl_trans* %158, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %157, %151
  %167 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %168 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %169 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %168, i32 0, i32 2
  %170 = call i32 @clear_bit(i32 %167, i32* %169)
  %171 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %172 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %173 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %174 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @get_cmd_string(%struct.iwl_trans_pcie* %172, i32 %176)
  %178 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %171, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %177)
  %179 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %180 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %179, i32 0, i32 1
  %181 = call i32 @wake_up(i32* %180)
  br label %182

182:                                              ; preds = %166, %140
  %183 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %184 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %183, i32 0, i32 0
  store i32 0, i32* %184, align 8
  %185 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %186 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %185, i32 0, i32 0
  %187 = call i32 @spin_unlock_bh(i32* %186)
  br label %188

188:                                              ; preds = %182, %72
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SEQ_TO_QUEUE(i32) #1

declare dso_local i32 @SEQ_TO_INDEX(i32) #1

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_print_hex_error(%struct.iwl_trans*, %struct.iwl_rx_packet*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @get_cmd_index(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @iwl_pcie_tfd_unmap(%struct.iwl_trans*, %struct.iwl_cmd_meta*, i32*) #1

declare dso_local %struct.page* @rxb_steal_page(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @iwl_pcie_cmdq_reclaim(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @get_cmd_string(%struct.iwl_trans_pcie*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
