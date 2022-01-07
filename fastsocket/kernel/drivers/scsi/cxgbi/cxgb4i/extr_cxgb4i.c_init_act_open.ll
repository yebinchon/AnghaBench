; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_init_act_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_init_act_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i64, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32, %struct.cxgbi_device* }
%struct.TYPE_2__ = type { i32 }
%struct.cxgbi_device = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.cxgb4_lld_info = type { i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.port_info = type { i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s, NO atid available.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CTPF_HAS_ATID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s, cannot alloc l2t.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@cxgbi_sock_act_open_req_arp_failure = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"csk 0x%p,p%d,%s, %u,%u,%u, mss %u,%u, smac %u.\0A\00", align 1
@CTP_ACTIVE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*)* @init_act_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_act_open(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca %struct.cxgbi_device*, align 8
  %5 = alloca %struct.cxgb4_lld_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  %10 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %11 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %10, i32 0, i32 17
  %12 = load %struct.cxgbi_device*, %struct.cxgbi_device** %11, align 8
  store %struct.cxgbi_device* %12, %struct.cxgbi_device** %4, align 8
  %13 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %14 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %13)
  store %struct.cxgb4_lld_info* %14, %struct.cxgb4_lld_info** %5, align 8
  %15 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %16 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %15, i32 0, i32 0
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %19 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 %20
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %6, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call %struct.port_info* @netdev_priv(%struct.net_device* %23)
  store %struct.port_info* %24, %struct.port_info** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %25 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %31 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %32 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %35 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %34, i32 0, i32 15
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %38 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %37, i32 0, i32 14
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, %struct.cxgbi_sock*, i32, i32, i32, ...) @log_debug(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %30, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %42 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %45 = call i64 @cxgb4_alloc_atid(i32 %43, %struct.cxgbi_sock* %44)
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %47 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %49 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %1
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %228

59:                                               ; preds = %1
  %60 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %61 = load i32, i32* @CTPF_HAS_ATID, align 4
  %62 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %60, i32 %61)
  %63 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %64 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %63)
  %65 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %66 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %69 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %68, i32 0, i32 13
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = call i32 @cxgb4_l2t_get(i32 %67, i32 %72, %struct.net_device* %73, i32 0)
  %75 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %76 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %78 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %59
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %219

86:                                               ; preds = %59
  %87 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %88 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %87)
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.sk_buff* @alloc_wr(i32 4, i32 0, i32 %89)
  store %struct.sk_buff* %90, %struct.sk_buff** %8, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = icmp ne %struct.sk_buff* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %219

94:                                               ; preds = %86
  %95 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %96 = bitcast %struct.cxgbi_sock* %95 to %struct.sock*
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  store %struct.sock* %96, %struct.sock** %98, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %101 = load i32, i32* @cxgbi_sock_act_open_req_arp_failure, align 4
  %102 = call i32 @t4_set_arp_err_handler(%struct.sk_buff* %99, %struct.cxgbi_sock* %100, i32 %101)
  %103 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %104 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %94
  %108 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %109 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %108, i32 0, i32 13
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = call i64 @dst_mtu(%struct.TYPE_2__* %110)
  %112 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %113 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %112, i32 0, i32 6
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %107, %94
  %115 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %116 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %119 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %122 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %121, i32 0, i32 5
  %123 = call i32 @cxgb4_best_mtu(i32 %117, i64 %120, i32* %122)
  %124 = load %struct.net_device*, %struct.net_device** %6, align 8
  %125 = call i32 @cxgb4_port_chan(%struct.net_device* %124)
  %126 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %127 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 4
  %128 = load %struct.net_device*, %struct.net_device** %6, align 8
  %129 = call i32 @cxgb4_port_viid(%struct.net_device* %128)
  %130 = and i32 %129, 127
  %131 = shl i32 %130, 1
  %132 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %133 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %135 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %138 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = udiv i32 %136, %139
  store i32 %140, i32* %9, align 4
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = call i32 @cxgb4_port_idx(%struct.net_device* %141)
  %143 = load i32, i32* %9, align 4
  %144 = mul i32 %142, %143
  %145 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %146 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %148 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %151 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = udiv i32 %149, %152
  store i32 %153, i32* %9, align 4
  %154 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %155 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.net_device*, %struct.net_device** %6, align 8
  %158 = call i32 @cxgb4_port_idx(%struct.net_device* %157)
  %159 = load i32, i32* %9, align 4
  %160 = mul i32 %158, %159
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %156, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %165 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %164, i32 0, i32 7
  store i32 %163, i32* %165, align 8
  %166 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %167 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %170 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %169, i32 0, i32 11
  store i32 %168, i32* %170, align 8
  %171 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %172 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %171, i32 0, i32 12
  store i32 %168, i32* %172, align 4
  %173 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %174 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %173, i32 0, i32 10
  store i64 0, i64* %174, align 8
  %175 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %176 = call i32 @cxgbi_sock_reset_wr_list(%struct.cxgbi_sock* %175)
  %177 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %178 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %177, i32 0, i32 9
  store i64 0, i64* %178, align 8
  %179 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %180 = shl i32 1, %179
  %181 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %182 = shl i32 1, %181
  %183 = or i32 %180, %182
  %184 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %185 = load %struct.port_info*, %struct.port_info** %7, align 8
  %186 = getelementptr inbounds %struct.port_info, %struct.port_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.net_device*, %struct.net_device** %6, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %192 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %195 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %198 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %201 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %204 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %207 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i32, i8*, %struct.cxgbi_sock*, i32, i32, i32, ...) @log_debug(i32 %183, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_sock* %184, i32 %187, i32 %190, i32 %193, i32 %196, i32 %199, i64 %202, i32 %205, i32 %208)
  %210 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %211 = load i32, i32* @CTP_ACTIVE_OPEN, align 4
  %212 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %210, i32 %211)
  %213 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %215 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %216 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @send_act_open_req(%struct.cxgbi_sock* %213, %struct.sk_buff* %214, i32 %217)
  store i32 0, i32* %2, align 4
  br label %228

219:                                              ; preds = %93, %81
  %220 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %221 = icmp ne %struct.sk_buff* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %224 = call i32 @__kfree_skb(%struct.sk_buff* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %225, %114, %52
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32, ...) #1

declare dso_local i64 @cxgb4_alloc_atid(i32, %struct.cxgbi_sock*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgb4_l2t_get(i32, i32, %struct.net_device*, i32) #1

declare dso_local %struct.sk_buff* @alloc_wr(i32, i32, i32) #1

declare dso_local i32 @t4_set_arp_err_handler(%struct.sk_buff*, %struct.cxgbi_sock*, i32) #1

declare dso_local i64 @dst_mtu(%struct.TYPE_2__*) #1

declare dso_local i32 @cxgb4_best_mtu(i32, i64, i32*) #1

declare dso_local i32 @cxgb4_port_chan(%struct.net_device*) #1

declare dso_local i32 @cxgb4_port_viid(%struct.net_device*) #1

declare dso_local i32 @cxgb4_port_idx(%struct.net_device*) #1

declare dso_local i32 @cxgbi_sock_reset_wr_list(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @send_act_open_req(%struct.cxgbi_sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
