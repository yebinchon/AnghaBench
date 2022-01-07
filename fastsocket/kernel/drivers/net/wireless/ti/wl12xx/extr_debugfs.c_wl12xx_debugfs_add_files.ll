; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_debugfs.c_wl12xx_debugfs_add_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_debugfs.c_wl12xx_debugfs_add_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.dentry = type { i32 }

@KBUILD_MODNAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"fw_stats\00", align 1
@tx = common dso_local global i32 0, align 4
@internal_desc_overflow = common dso_local global i32 0, align 4
@rx = common dso_local global i32 0, align 4
@out_of_mem = common dso_local global i32 0, align 4
@hdr_overflow = common dso_local global i32 0, align 4
@hw_stuck = common dso_local global i32 0, align 4
@dropped = common dso_local global i32 0, align 4
@fcs_err = common dso_local global i32 0, align 4
@xfr_hint_trig = common dso_local global i32 0, align 4
@path_reset = common dso_local global i32 0, align 4
@reset_counter = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@rx_requested = common dso_local global i32 0, align 4
@rx_errors = common dso_local global i32 0, align 4
@tx_requested = common dso_local global i32 0, align 4
@tx_errors = common dso_local global i32 0, align 4
@isr = common dso_local global i32 0, align 4
@cmd_cmplt = common dso_local global i32 0, align 4
@fiqs = common dso_local global i32 0, align 4
@rx_headers = common dso_local global i32 0, align 4
@rx_mem_overflow = common dso_local global i32 0, align 4
@rx_rdys = common dso_local global i32 0, align 4
@irqs = common dso_local global i32 0, align 4
@tx_procs = common dso_local global i32 0, align 4
@decrypt_done = common dso_local global i32 0, align 4
@dma0_done = common dso_local global i32 0, align 4
@dma1_done = common dso_local global i32 0, align 4
@tx_exch_complete = common dso_local global i32 0, align 4
@commands = common dso_local global i32 0, align 4
@rx_procs = common dso_local global i32 0, align 4
@hw_pm_mode_changes = common dso_local global i32 0, align 4
@host_acknowledges = common dso_local global i32 0, align 4
@pci_pm = common dso_local global i32 0, align 4
@wakeups = common dso_local global i32 0, align 4
@low_rssi = common dso_local global i32 0, align 4
@wep = common dso_local global i32 0, align 4
@addr_key_count = common dso_local global i32 0, align 4
@default_key_count = common dso_local global i32 0, align 4
@key_not_found = common dso_local global i32 0, align 4
@decrypt_fail = common dso_local global i32 0, align 4
@packets = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@pwr = common dso_local global i32 0, align 4
@ps_enter = common dso_local global i32 0, align 4
@elp_enter = common dso_local global i32 0, align 4
@missing_bcns = common dso_local global i32 0, align 4
@wake_on_host = common dso_local global i32 0, align 4
@wake_on_timer_exp = common dso_local global i32 0, align 4
@tx_with_ps = common dso_local global i32 0, align 4
@tx_without_ps = common dso_local global i32 0, align 4
@rcvd_beacons = common dso_local global i32 0, align 4
@power_save_off = common dso_local global i32 0, align 4
@enable_ps = common dso_local global i32 0, align 4
@disable_ps = common dso_local global i32 0, align 4
@fix_tsf_ps = common dso_local global i32 0, align 4
@rcvd_awake_beacons = common dso_local global i32 0, align 4
@mic = common dso_local global i32 0, align 4
@rx_pkts = common dso_local global i32 0, align 4
@calc_failure = common dso_local global i32 0, align 4
@aes = common dso_local global i32 0, align 4
@encrypt_fail = common dso_local global i32 0, align 4
@encrypt_packets = common dso_local global i32 0, align 4
@decrypt_packets = common dso_local global i32 0, align 4
@encrypt_interrupt = common dso_local global i32 0, align 4
@decrypt_interrupt = common dso_local global i32 0, align 4
@event = common dso_local global i32 0, align 4
@heart_beat = common dso_local global i32 0, align 4
@calibration = common dso_local global i32 0, align 4
@rx_mismatch = common dso_local global i32 0, align 4
@rx_mem_empty = common dso_local global i32 0, align 4
@rx_pool = common dso_local global i32 0, align 4
@oom_late = common dso_local global i32 0, align 4
@phy_transmit_error = common dso_local global i32 0, align 4
@tx_stuck = common dso_local global i32 0, align 4
@ps = common dso_local global i32 0, align 4
@pspoll_timeouts = common dso_local global i32 0, align 4
@upsd_timeouts = common dso_local global i32 0, align 4
@upsd_max_sptime = common dso_local global i32 0, align 4
@upsd_max_apturn = common dso_local global i32 0, align 4
@pspoll_max_apturn = common dso_local global i32 0, align 4
@pspoll_utilization = common dso_local global i32 0, align 4
@upsd_utilization = common dso_local global i32 0, align 4
@rxpipe = common dso_local global i32 0, align 4
@rx_prep_beacon_drop = common dso_local global i32 0, align 4
@descr_host_int_trig_rx_data = common dso_local global i32 0, align 4
@beacon_buffer_thres_host_int_trig_rx_data = common dso_local global i32 0, align 4
@missed_beacon_host_int_trig_rx_data = common dso_local global i32 0, align 4
@tx_xfr_host_int_trig_rx_data = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_debugfs_add_files(%struct.wl1271* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** @KBUILD_MODNAME, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call %struct.dentry* @debugfs_create_dir(i8* %10, %struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %9, align 8
  %13 = load %struct.dentry*, %struct.dentry** %9, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %9, align 8
  %17 = call i64 @IS_ERR(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %2
  %20 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %20, %struct.dentry** %7, align 8
  br label %267

21:                                               ; preds = %15
  %22 = load %struct.dentry*, %struct.dentry** %9, align 8
  %23 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.dentry* %22)
  store %struct.dentry* %23, %struct.dentry** %8, align 8
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = icmp ne %struct.dentry* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = call i64 @IS_ERR(%struct.dentry* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %21
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %31, %struct.dentry** %7, align 8
  br label %267

32:                                               ; preds = %26
  %33 = load i32, i32* @tx, align 4
  %34 = load i32, i32* @internal_desc_overflow, align 4
  %35 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %33, i32 %34)
  %36 = load i32, i32* @rx, align 4
  %37 = load i32, i32* @out_of_mem, align 4
  %38 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %36, i32 %37)
  %39 = load i32, i32* @rx, align 4
  %40 = load i32, i32* @hdr_overflow, align 4
  %41 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %39, i32 %40)
  %42 = load i32, i32* @rx, align 4
  %43 = load i32, i32* @hw_stuck, align 4
  %44 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %42, i32 %43)
  %45 = load i32, i32* @rx, align 4
  %46 = load i32, i32* @dropped, align 4
  %47 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %45, i32 %46)
  %48 = load i32, i32* @rx, align 4
  %49 = load i32, i32* @fcs_err, align 4
  %50 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %48, i32 %49)
  %51 = load i32, i32* @rx, align 4
  %52 = load i32, i32* @xfr_hint_trig, align 4
  %53 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %51, i32 %52)
  %54 = load i32, i32* @rx, align 4
  %55 = load i32, i32* @path_reset, align 4
  %56 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %54, i32 %55)
  %57 = load i32, i32* @rx, align 4
  %58 = load i32, i32* @reset_counter, align 4
  %59 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %57, i32 %58)
  %60 = load i32, i32* @dma, align 4
  %61 = load i32, i32* @rx_requested, align 4
  %62 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %60, i32 %61)
  %63 = load i32, i32* @dma, align 4
  %64 = load i32, i32* @rx_errors, align 4
  %65 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %63, i32 %64)
  %66 = load i32, i32* @dma, align 4
  %67 = load i32, i32* @tx_requested, align 4
  %68 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %66, i32 %67)
  %69 = load i32, i32* @dma, align 4
  %70 = load i32, i32* @tx_errors, align 4
  %71 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %69, i32 %70)
  %72 = load i32, i32* @isr, align 4
  %73 = load i32, i32* @cmd_cmplt, align 4
  %74 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %72, i32 %73)
  %75 = load i32, i32* @isr, align 4
  %76 = load i32, i32* @fiqs, align 4
  %77 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %75, i32 %76)
  %78 = load i32, i32* @isr, align 4
  %79 = load i32, i32* @rx_headers, align 4
  %80 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %78, i32 %79)
  %81 = load i32, i32* @isr, align 4
  %82 = load i32, i32* @rx_mem_overflow, align 4
  %83 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %81, i32 %82)
  %84 = load i32, i32* @isr, align 4
  %85 = load i32, i32* @rx_rdys, align 4
  %86 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %84, i32 %85)
  %87 = load i32, i32* @isr, align 4
  %88 = load i32, i32* @irqs, align 4
  %89 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %87, i32 %88)
  %90 = load i32, i32* @isr, align 4
  %91 = load i32, i32* @tx_procs, align 4
  %92 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %90, i32 %91)
  %93 = load i32, i32* @isr, align 4
  %94 = load i32, i32* @decrypt_done, align 4
  %95 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %93, i32 %94)
  %96 = load i32, i32* @isr, align 4
  %97 = load i32, i32* @dma0_done, align 4
  %98 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %96, i32 %97)
  %99 = load i32, i32* @isr, align 4
  %100 = load i32, i32* @dma1_done, align 4
  %101 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %99, i32 %100)
  %102 = load i32, i32* @isr, align 4
  %103 = load i32, i32* @tx_exch_complete, align 4
  %104 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %102, i32 %103)
  %105 = load i32, i32* @isr, align 4
  %106 = load i32, i32* @commands, align 4
  %107 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %105, i32 %106)
  %108 = load i32, i32* @isr, align 4
  %109 = load i32, i32* @rx_procs, align 4
  %110 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %108, i32 %109)
  %111 = load i32, i32* @isr, align 4
  %112 = load i32, i32* @hw_pm_mode_changes, align 4
  %113 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %111, i32 %112)
  %114 = load i32, i32* @isr, align 4
  %115 = load i32, i32* @host_acknowledges, align 4
  %116 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %114, i32 %115)
  %117 = load i32, i32* @isr, align 4
  %118 = load i32, i32* @pci_pm, align 4
  %119 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %117, i32 %118)
  %120 = load i32, i32* @isr, align 4
  %121 = load i32, i32* @wakeups, align 4
  %122 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %120, i32 %121)
  %123 = load i32, i32* @isr, align 4
  %124 = load i32, i32* @low_rssi, align 4
  %125 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %123, i32 %124)
  %126 = load i32, i32* @wep, align 4
  %127 = load i32, i32* @addr_key_count, align 4
  %128 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %126, i32 %127)
  %129 = load i32, i32* @wep, align 4
  %130 = load i32, i32* @default_key_count, align 4
  %131 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %129, i32 %130)
  %132 = load i32, i32* @wep, align 4
  %133 = load i32, i32* @key_not_found, align 4
  %134 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %132, i32 %133)
  %135 = load i32, i32* @wep, align 4
  %136 = load i32, i32* @decrypt_fail, align 4
  %137 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %135, i32 %136)
  %138 = load i32, i32* @wep, align 4
  %139 = load i32, i32* @packets, align 4
  %140 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %138, i32 %139)
  %141 = load i32, i32* @wep, align 4
  %142 = load i32, i32* @interrupt, align 4
  %143 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %141, i32 %142)
  %144 = load i32, i32* @pwr, align 4
  %145 = load i32, i32* @ps_enter, align 4
  %146 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %144, i32 %145)
  %147 = load i32, i32* @pwr, align 4
  %148 = load i32, i32* @elp_enter, align 4
  %149 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %147, i32 %148)
  %150 = load i32, i32* @pwr, align 4
  %151 = load i32, i32* @missing_bcns, align 4
  %152 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %150, i32 %151)
  %153 = load i32, i32* @pwr, align 4
  %154 = load i32, i32* @wake_on_host, align 4
  %155 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %153, i32 %154)
  %156 = load i32, i32* @pwr, align 4
  %157 = load i32, i32* @wake_on_timer_exp, align 4
  %158 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %156, i32 %157)
  %159 = load i32, i32* @pwr, align 4
  %160 = load i32, i32* @tx_with_ps, align 4
  %161 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %159, i32 %160)
  %162 = load i32, i32* @pwr, align 4
  %163 = load i32, i32* @tx_without_ps, align 4
  %164 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %162, i32 %163)
  %165 = load i32, i32* @pwr, align 4
  %166 = load i32, i32* @rcvd_beacons, align 4
  %167 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %165, i32 %166)
  %168 = load i32, i32* @pwr, align 4
  %169 = load i32, i32* @power_save_off, align 4
  %170 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %168, i32 %169)
  %171 = load i32, i32* @pwr, align 4
  %172 = load i32, i32* @enable_ps, align 4
  %173 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %171, i32 %172)
  %174 = load i32, i32* @pwr, align 4
  %175 = load i32, i32* @disable_ps, align 4
  %176 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %174, i32 %175)
  %177 = load i32, i32* @pwr, align 4
  %178 = load i32, i32* @fix_tsf_ps, align 4
  %179 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %177, i32 %178)
  %180 = load i32, i32* @pwr, align 4
  %181 = load i32, i32* @rcvd_awake_beacons, align 4
  %182 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %180, i32 %181)
  %183 = load i32, i32* @mic, align 4
  %184 = load i32, i32* @rx_pkts, align 4
  %185 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %183, i32 %184)
  %186 = load i32, i32* @mic, align 4
  %187 = load i32, i32* @calc_failure, align 4
  %188 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %186, i32 %187)
  %189 = load i32, i32* @aes, align 4
  %190 = load i32, i32* @encrypt_fail, align 4
  %191 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %189, i32 %190)
  %192 = load i32, i32* @aes, align 4
  %193 = load i32, i32* @decrypt_fail, align 4
  %194 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %192, i32 %193)
  %195 = load i32, i32* @aes, align 4
  %196 = load i32, i32* @encrypt_packets, align 4
  %197 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %195, i32 %196)
  %198 = load i32, i32* @aes, align 4
  %199 = load i32, i32* @decrypt_packets, align 4
  %200 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %198, i32 %199)
  %201 = load i32, i32* @aes, align 4
  %202 = load i32, i32* @encrypt_interrupt, align 4
  %203 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %201, i32 %202)
  %204 = load i32, i32* @aes, align 4
  %205 = load i32, i32* @decrypt_interrupt, align 4
  %206 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %204, i32 %205)
  %207 = load i32, i32* @event, align 4
  %208 = load i32, i32* @heart_beat, align 4
  %209 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %207, i32 %208)
  %210 = load i32, i32* @event, align 4
  %211 = load i32, i32* @calibration, align 4
  %212 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %210, i32 %211)
  %213 = load i32, i32* @event, align 4
  %214 = load i32, i32* @rx_mismatch, align 4
  %215 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %213, i32 %214)
  %216 = load i32, i32* @event, align 4
  %217 = load i32, i32* @rx_mem_empty, align 4
  %218 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %216, i32 %217)
  %219 = load i32, i32* @event, align 4
  %220 = load i32, i32* @rx_pool, align 4
  %221 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %219, i32 %220)
  %222 = load i32, i32* @event, align 4
  %223 = load i32, i32* @oom_late, align 4
  %224 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %222, i32 %223)
  %225 = load i32, i32* @event, align 4
  %226 = load i32, i32* @phy_transmit_error, align 4
  %227 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %225, i32 %226)
  %228 = load i32, i32* @event, align 4
  %229 = load i32, i32* @tx_stuck, align 4
  %230 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %228, i32 %229)
  %231 = load i32, i32* @ps, align 4
  %232 = load i32, i32* @pspoll_timeouts, align 4
  %233 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %231, i32 %232)
  %234 = load i32, i32* @ps, align 4
  %235 = load i32, i32* @upsd_timeouts, align 4
  %236 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %234, i32 %235)
  %237 = load i32, i32* @ps, align 4
  %238 = load i32, i32* @upsd_max_sptime, align 4
  %239 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %237, i32 %238)
  %240 = load i32, i32* @ps, align 4
  %241 = load i32, i32* @upsd_max_apturn, align 4
  %242 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %240, i32 %241)
  %243 = load i32, i32* @ps, align 4
  %244 = load i32, i32* @pspoll_max_apturn, align 4
  %245 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %243, i32 %244)
  %246 = load i32, i32* @ps, align 4
  %247 = load i32, i32* @pspoll_utilization, align 4
  %248 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %246, i32 %247)
  %249 = load i32, i32* @ps, align 4
  %250 = load i32, i32* @upsd_utilization, align 4
  %251 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %249, i32 %250)
  %252 = load i32, i32* @rxpipe, align 4
  %253 = load i32, i32* @rx_prep_beacon_drop, align 4
  %254 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %252, i32 %253)
  %255 = load i32, i32* @rxpipe, align 4
  %256 = load i32, i32* @descr_host_int_trig_rx_data, align 4
  %257 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %255, i32 %256)
  %258 = load i32, i32* @rxpipe, align 4
  %259 = load i32, i32* @beacon_buffer_thres_host_int_trig_rx_data, align 4
  %260 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %258, i32 %259)
  %261 = load i32, i32* @rxpipe, align 4
  %262 = load i32, i32* @missed_beacon_host_int_trig_rx_data, align 4
  %263 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %261, i32 %262)
  %264 = load i32, i32* @rxpipe, align 4
  %265 = load i32, i32* @tx_xfr_host_int_trig_rx_data, align 4
  %266 = call i32 @DEBUGFS_FWSTATS_ADD(i32 %264, i32 %265)
  store i32 0, i32* %3, align 4
  br label %279

267:                                              ; preds = %30, %19
  %268 = load %struct.dentry*, %struct.dentry** %7, align 8
  %269 = call i64 @IS_ERR(%struct.dentry* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = load %struct.dentry*, %struct.dentry** %7, align 8
  %273 = call i32 @PTR_ERR(%struct.dentry* %272)
  store i32 %273, i32* %6, align 4
  br label %277

274:                                              ; preds = %267
  %275 = load i32, i32* @ENOMEM, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %274, %271
  %278 = load i32, i32* %6, align 4
  store i32 %278, i32* %3, align 4
  br label %279

279:                                              ; preds = %277, %32
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @DEBUGFS_FWSTATS_ADD(i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
