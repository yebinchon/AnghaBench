; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_add_ethtool_fdir_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_add_ethtool_fdir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i64, i32, i32, %struct.TYPE_21__**, i32, i32, %struct.ixgbe_hw }
%struct.TYPE_21__ = type { i64 }
%struct.ixgbe_hw = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.ethtool_rx_flow_spec = type { i64, i32, i32, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.ixgbe_fdir_filter = type { i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i8, i32, i32, i32, i32, i32*, i32* }
%union.ixgbe_atr_input = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i8, i32, i32, i32, i32, i32*, i32* }

@IXGBE_FLAG_FDIR_PERFECT_CAPABLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RX_CLS_FLOW_DISC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Location out of range\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unrecognized flow type\0A\00", align 1
@IXGBE_ATR_L4TYPE_IPV6_MASK = common dso_local global i32 0, align 4
@IXGBE_ATR_L4TYPE_MASK = common dso_local global i32 0, align 4
@IXGBE_ATR_FLOW_TYPE_IPV4 = common dso_local global i64 0, align 8
@FLOW_EXT = common dso_local global i32 0, align 4
@IXGBE_FDIR_DROP_QUEUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Error writing mask\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Only one mask supported per port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, %struct.ethtool_rxnfc*)* @ixgbe_add_ethtool_fdir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_add_ethtool_fdir_entry(%struct.ixgbe_adapter* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca %struct.ixgbe_fdir_filter*, align 8
  %9 = alloca %union.ixgbe_atr_input, align 8
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.ethtool_rx_flow_spec*
  store %struct.ethtool_rx_flow_spec* %13, %struct.ethtool_rx_flow_spec** %6, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 7
  store %struct.ixgbe_hw* %15, %struct.ixgbe_hw** %7, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %330

25:                                               ; preds = %2
  %26 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %27 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %33 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %330

42:                                               ; preds = %31, %25
  %43 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 1024, %48
  %50 = sub nsw i32 %49, 2
  %51 = icmp sge i32 %45, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load i32, i32* @drv, align 4
  %54 = call i32 @e_err(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %330

57:                                               ; preds = %42
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.ixgbe_fdir_filter* @kzalloc(i32 64, i32 %58)
  store %struct.ixgbe_fdir_filter* %59, %struct.ixgbe_fdir_filter** %8, align 8
  %60 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %61 = icmp ne %struct.ixgbe_fdir_filter* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %330

65:                                               ; preds = %57
  %66 = call i32 @memset(%union.ixgbe_atr_input* %9, i32 0, i32 40)
  %67 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %68 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %71 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %73 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %74 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = call i32 @ixgbe_flowspec_to_flow_type(%struct.ethtool_rx_flow_spec* %72, i64* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = load i32, i32* @drv, align 4
  %81 = call i32 @e_err(i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %325

82:                                               ; preds = %65
  %83 = load i32, i32* @IXGBE_ATR_L4TYPE_IPV6_MASK, align 4
  %84 = load i32, i32* @IXGBE_ATR_L4TYPE_MASK, align 4
  %85 = or i32 %83, %84
  %86 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_19__*
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %89 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IXGBE_ATR_FLOW_TYPE_IPV4, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %82
  %96 = load i32, i32* @IXGBE_ATR_L4TYPE_IPV6_MASK, align 4
  %97 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_19__*
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %82
  %102 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %103 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %108 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 7
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %106, i32* %112, align 4
  %113 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %114 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_19__*
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 7
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %123 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %128 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 6
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %126, i32* %132, align 4
  %133 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %134 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_19__*
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 %137, i32* %141, align 4
  %142 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %143 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %148 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 5
  store i32 %146, i32* %150, align 8
  %151 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %152 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_19__*
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %159 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %164 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 4
  store i32 %162, i32* %166, align 4
  %167 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %168 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_19__*
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %175 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @FLOW_EXT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %231

180:                                              ; preds = %101
  %181 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %182 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @ntohl(i32 %186)
  %188 = trunc i64 %187 to i8
  %189 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %190 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  store i8 %188, i8* %192, align 8
  %193 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %194 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @ntohl(i32 %198)
  %200 = trunc i64 %199 to i8
  %201 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_19__*
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  store i8 %200, i8* %202, align 4
  %203 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %204 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %208 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 3
  store i32 %206, i32* %210, align 8
  %211 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %212 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_19__*
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %218 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %222 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 2
  store i32 %220, i32* %224, align 4
  %225 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %226 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = bitcast %union.ixgbe_atr_input* %9 to %struct.TYPE_19__*
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %180, %101
  %232 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %233 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = load i64, i64* @IXGBE_FDIR_DROP_QUEUE, align 8
  %239 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %240 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %239, i32 0, i32 1
  store i64 %238, i64* %240, align 8
  br label %247

241:                                              ; preds = %231
  %242 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %243 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %246 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %245, i32 0, i32 1
  store i64 %244, i64* %246, align 8
  br label %247

247:                                              ; preds = %241, %237
  %248 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %249 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %248, i32 0, i32 3
  %250 = call i32 @spin_lock(i32* %249)
  %251 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %252 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %251, i32 0, i32 6
  %253 = call i64 @hlist_empty(i32* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %247
  %256 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %257 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %256, i32 0, i32 5
  %258 = call i32 @memcpy(i32* %257, %union.ixgbe_atr_input* %9, i32 40)
  %259 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %260 = call i32 @ixgbe_fdir_set_input_mask_82599(%struct.ixgbe_hw* %259, %union.ixgbe_atr_input* %9)
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %10, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %255
  %264 = load i32, i32* @drv, align 4
  %265 = call i32 @e_err(i32 %264, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %321

266:                                              ; preds = %255
  br label %276

267:                                              ; preds = %247
  %268 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %269 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %268, i32 0, i32 5
  %270 = call i64 @memcmp(i32* %269, %union.ixgbe_atr_input* %9, i32 40)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load i32, i32* @drv, align 4
  %274 = call i32 @e_err(i32 %273, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %321

275:                                              ; preds = %267
  br label %276

276:                                              ; preds = %275, %266
  %277 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %278 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %277, i32 0, i32 2
  %279 = call i32 @ixgbe_atr_compute_perfect_hash_82599(%struct.TYPE_12__* %278, %union.ixgbe_atr_input* %9)
  %280 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %281 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %282 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %281, i32 0, i32 2
  %283 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %284 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %287 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @IXGBE_FDIR_DROP_QUEUE, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %276
  %292 = load i64, i64* @IXGBE_FDIR_DROP_QUEUE, align 8
  br label %304

293:                                              ; preds = %276
  %294 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %295 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %294, i32 0, i32 4
  %296 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %295, align 8
  %297 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %298 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %296, i64 %299
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  br label %304

304:                                              ; preds = %293, %291
  %305 = phi i64 [ %292, %291 ], [ %303, %293 ]
  %306 = call i32 @ixgbe_fdir_write_perfect_filter_82599(%struct.ixgbe_hw* %280, %struct.TYPE_12__* %282, i32 %285, i64 %305)
  store i32 %306, i32* %10, align 4
  %307 = load i32, i32* %10, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %321

310:                                              ; preds = %304
  %311 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %312 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %313 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %314 = getelementptr inbounds %struct.ixgbe_fdir_filter, %struct.ixgbe_fdir_filter* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @ixgbe_update_ethtool_fdir_entry(%struct.ixgbe_adapter* %311, %struct.ixgbe_fdir_filter* %312, i32 %315)
  %317 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %318 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %317, i32 0, i32 3
  %319 = call i32 @spin_unlock(i32* %318)
  %320 = load i32, i32* %10, align 4
  store i32 %320, i32* %3, align 4
  br label %330

321:                                              ; preds = %309, %272, %263
  %322 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %323 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %322, i32 0, i32 3
  %324 = call i32 @spin_unlock(i32* %323)
  br label %325

325:                                              ; preds = %321, %79
  %326 = load %struct.ixgbe_fdir_filter*, %struct.ixgbe_fdir_filter** %8, align 8
  %327 = call i32 @kfree(%struct.ixgbe_fdir_filter* %326)
  %328 = load i32, i32* @EINVAL, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %3, align 4
  br label %330

330:                                              ; preds = %325, %310, %62, %52, %39, %22
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local i32 @e_err(i32, i8*) #1

declare dso_local %struct.ixgbe_fdir_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%union.ixgbe_atr_input*, i32, i32) #1

declare dso_local i32 @ixgbe_flowspec_to_flow_type(%struct.ethtool_rx_flow_spec*, i64*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i32 @memcpy(i32*, %union.ixgbe_atr_input*, i32) #1

declare dso_local i32 @ixgbe_fdir_set_input_mask_82599(%struct.ixgbe_hw*, %union.ixgbe_atr_input*) #1

declare dso_local i64 @memcmp(i32*, %union.ixgbe_atr_input*, i32) #1

declare dso_local i32 @ixgbe_atr_compute_perfect_hash_82599(%struct.TYPE_12__*, %union.ixgbe_atr_input*) #1

declare dso_local i32 @ixgbe_fdir_write_perfect_filter_82599(%struct.ixgbe_hw*, %struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @ixgbe_update_ethtool_fdir_entry(%struct.ixgbe_adapter*, %struct.ixgbe_fdir_filter*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ixgbe_fdir_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
