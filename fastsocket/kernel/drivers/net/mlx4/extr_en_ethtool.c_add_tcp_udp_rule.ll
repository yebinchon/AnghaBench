; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_add_tcp_udp_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_add_tcp_udp_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.ethtool_rxnfc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.ethtool_tcpip4_spec }
%struct.ethtool_tcpip4_spec = type { i64, i64, i64, i64 }
%struct.list_head = type { i32 }
%struct.mlx4_spec_list = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Fail to alloc ethtool rule.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_IPV4 = common dso_local global i32 0, align 4
@TCP_V4_FLOW = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_TCP = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_UDP = common dso_local global i32 0, align 4
@EN_ETHTOOL_WORD_MASK = common dso_local global i8* null, align 8
@EN_ETHTOOL_SHORT_MASK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.ethtool_rxnfc*, %struct.list_head*, i32)* @add_tcp_udp_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tcp_udp_rule(%struct.mlx4_en_priv* %0, %struct.ethtool_rxnfc* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.ethtool_rxnfc*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_spec_list*, align 8
  %12 = alloca %struct.mlx4_spec_list*, align 8
  %13 = alloca %struct.mlx4_spec_list*, align 8
  %14 = alloca %struct.ethtool_tcpip4_spec*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mlx4_spec_list* null, %struct.mlx4_spec_list** %11, align 8
  store %struct.mlx4_spec_list* null, %struct.mlx4_spec_list** %12, align 8
  store %struct.mlx4_spec_list* null, %struct.mlx4_spec_list** %13, align 8
  %15 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.ethtool_tcpip4_spec* %18, %struct.ethtool_tcpip4_spec** %14, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mlx4_spec_list* @kzalloc(i32 64, i32 %19)
  store %struct.mlx4_spec_list* %20, %struct.mlx4_spec_list** %11, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mlx4_spec_list* @kzalloc(i32 64, i32 %21)
  store %struct.mlx4_spec_list* %22, %struct.mlx4_spec_list** %12, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mlx4_spec_list* @kzalloc(i32 64, i32 %23)
  store %struct.mlx4_spec_list* %24, %struct.mlx4_spec_list** %13, align 8
  %25 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %11, align 8
  %26 = icmp ne %struct.mlx4_spec_list* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %29 = icmp ne %struct.mlx4_spec_list* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %32 = icmp ne %struct.mlx4_spec_list* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30, %27, %4
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %35 = call i32 @en_err(%struct.mlx4_en_priv* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %204

38:                                               ; preds = %30
  %39 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_IPV4, align 4
  %40 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %41 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @TCP_V4_FLOW, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %100

45:                                               ; preds = %38
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %47 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %48 = load %struct.list_head*, %struct.list_head** %8, align 8
  %49 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %11, align 8
  %50 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %51 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mlx4_en_ethtool_add_mac_rule_by_ipv4(%struct.mlx4_en_priv* %46, %struct.ethtool_rxnfc* %47, %struct.list_head* %48, %struct.mlx4_spec_list* %49, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %204

60:                                               ; preds = %45
  %61 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_TCP, align 4
  %62 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %63 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %65 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %71 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  %73 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %74 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %80 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  %82 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %83 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %89 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %92 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %98 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  br label %155

100:                                              ; preds = %38
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %102 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %103 = load %struct.list_head*, %struct.list_head** %8, align 8
  %104 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %11, align 8
  %105 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %106 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @mlx4_en_ethtool_add_mac_rule_by_ipv4(%struct.mlx4_en_priv* %101, %struct.ethtool_rxnfc* %102, %struct.list_head* %103, %struct.mlx4_spec_list* %104, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %204

115:                                              ; preds = %100
  %116 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_UDP, align 4
  %117 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %118 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %120 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %126 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 4
  %128 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %129 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %135 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 8
  %137 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %138 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %144 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 3
  store i32 %142, i32* %145, align 4
  %146 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %147 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %153 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  br label %155

155:                                              ; preds = %115, %60
  %156 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %14, align 8
  %157 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i8*, i8** @EN_ETHTOOL_WORD_MASK, align 8
  %162 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %163 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  store i8* %161, i8** %164, align 8
  br label %165

165:                                              ; preds = %160, %155
  %166 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %14, align 8
  %167 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load i8*, i8** @EN_ETHTOOL_WORD_MASK, align 8
  %172 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %173 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  store i8* %171, i8** %174, align 8
  br label %175

175:                                              ; preds = %170, %165
  %176 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %14, align 8
  %177 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i8*, i8** @EN_ETHTOOL_SHORT_MASK, align 8
  %182 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %183 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  store i8* %181, i8** %184, align 8
  br label %185

185:                                              ; preds = %180, %175
  %186 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %14, align 8
  %187 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i8*, i8** @EN_ETHTOOL_SHORT_MASK, align 8
  %192 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %193 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  br label %195

195:                                              ; preds = %190, %185
  %196 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %197 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %196, i32 0, i32 0
  %198 = load %struct.list_head*, %struct.list_head** %8, align 8
  %199 = call i32 @list_add_tail(i32* %197, %struct.list_head* %198)
  %200 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %201 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %200, i32 0, i32 0
  %202 = load %struct.list_head*, %struct.list_head** %8, align 8
  %203 = call i32 @list_add_tail(i32* %201, %struct.list_head* %202)
  store i32 0, i32* %5, align 4
  br label %212

204:                                              ; preds = %114, %59, %33
  %205 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %11, align 8
  %206 = call i32 @kfree(%struct.mlx4_spec_list* %205)
  %207 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %208 = call i32 @kfree(%struct.mlx4_spec_list* %207)
  %209 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %210 = call i32 @kfree(%struct.mlx4_spec_list* %209)
  %211 = load i32, i32* %10, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %204, %195
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local %struct.mlx4_spec_list* @kzalloc(i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_ethtool_add_mac_rule_by_ipv4(%struct.mlx4_en_priv*, %struct.ethtool_rxnfc*, %struct.list_head*, %struct.mlx4_spec_list*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.mlx4_spec_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
