; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_setup_hca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_setup_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32*, i32*, i8** }
%struct.mlx4_priv = type { %struct.TYPE_15__, i32, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8** }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Failed to initialize user access region table, aborting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to allocate driver access region, aborting.\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Couldn't map kernel access region, aborting.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Failed to initialize protection domain table, aborting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Failed to initialize reliable connection domain table, aborting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Failed to initialize memory region table, aborting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Failed to initialize event queue table, aborting.\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Failed to switch to event-driven firmware commands, aborting.\0A\00", align 1
@MLX4_FLAG_MSI_X = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"NOP command failed to generate MSI-X interrupt IRQ %d).\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Trying again without MSI-X.\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"NOP command failed to generate interrupt (IRQ %d), aborting.\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"BIOS or ACPI interrupt routing problem?\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"NOP command IRQ test passed\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Failed to initialize completion queue table, aborting.\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"Failed to initialize shared receive queue table, aborting.\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Failed to initialize queue pair table, aborting.\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"Failed to initialize multicast group table, aborting.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [48 x i8] c"Failed to initialize counters table, aborting.\0A\00", align 1
@.str.18 = private unnamed_addr constant [78 x i8] c"failed to get port %d default ib capabilities (%d). Continuing with caps = 0\0A\00", align 1
@IB_MTU_2048 = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [33 x i8] c"Failed to set port %d, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_setup_hca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_setup_hca(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %10 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %9)
  store %struct.mlx4_priv* %10, %struct.mlx4_priv** %4, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %12 = call i32 @mlx4_init_uar_table(%struct.mlx4_dev* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %17 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %16, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %351

19:                                               ; preds = %1
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %21, i32 0, i32 0
  %23 = call i32 @mlx4_uar_alloc(%struct.mlx4_dev* %20, %struct.TYPE_15__* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %28 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %347

29:                                               ; preds = %19
  %30 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @ioremap(i32 %36, i32 %37)
  %39 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %29
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %47 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %342

50:                                               ; preds = %29
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %52 = call i32 @mlx4_init_pd_table(%struct.mlx4_dev* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %57 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %56, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  br label %337

58:                                               ; preds = %50
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %60 = call i32 @mlx4_init_xrcd_table(%struct.mlx4_dev* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %65 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %64, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  br label %334

66:                                               ; preds = %58
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %68 = call i32 @mlx4_init_mr_table(%struct.mlx4_dev* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %73 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %331

74:                                               ; preds = %66
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %76 = call i32 @mlx4_init_eq_table(%struct.mlx4_dev* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %81 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %328

82:                                               ; preds = %74
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %84 = call i32 @mlx4_cmd_use_events(%struct.mlx4_dev* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %89 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %88, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  br label %325

90:                                               ; preds = %82
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %92 = call i32 @mlx4_NOP(%struct.mlx4_dev* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %135

95:                                               ; preds = %90
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %95
  %103 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %104 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %105 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %109 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %103, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i32 %114)
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %117 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %134

118:                                              ; preds = %95
  %119 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %120 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %121 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %125 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %119, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 %130)
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %133 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %132, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %134

134:                                              ; preds = %118, %102
  br label %322

135:                                              ; preds = %90
  %136 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %137 = call i32 @mlx4_dbg(%struct.mlx4_dev* %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %138 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %139 = call i32 @mlx4_init_cq_table(%struct.mlx4_dev* %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %144 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %143, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  br label %322

145:                                              ; preds = %135
  %146 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %147 = call i32 @mlx4_init_srq_table(%struct.mlx4_dev* %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %152 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %151, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0))
  br label %319

153:                                              ; preds = %145
  %154 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %155 = call i32 @mlx4_init_qp_table(%struct.mlx4_dev* %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %160 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %159, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0))
  br label %316

161:                                              ; preds = %153
  %162 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %163 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %161
  %166 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %167 = call i32 @mlx4_init_mcg_table(%struct.mlx4_dev* %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %172 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %171, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0))
  br label %313

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173, %161
  %175 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %176 = call i32 @mlx4_init_counters_table(%struct.mlx4_dev* %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @ENOENT, align 4
  %182 = sub nsw i32 0, %181
  %183 = icmp ne i32 %180, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %186 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %185, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0))
  br label %310

187:                                              ; preds = %179, %174
  %188 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %189 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %306, label %191

191:                                              ; preds = %187
  store i32 1, i32* %6, align 4
  br label %192

192:                                              ; preds = %302, %191
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %195 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp sle i32 %193, %197
  br i1 %198, label %199, label %305

199:                                              ; preds = %192
  store i8* null, i8** %7, align 8
  %200 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @mlx4_get_port_ib_caps(%struct.mlx4_dev* %200, i32 %201, i8** %7)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %5, align 4
  %209 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %206, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.18, i64 0, i64 0), i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %205, %199
  %211 = load i8*, i8** %7, align 8
  %212 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %213 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 4
  %215 = load i8**, i8*** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  store i8* %211, i8** %218, align 8
  %219 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %220 = call i64 @mlx4_is_master(%struct.mlx4_dev* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %254

222:                                              ; preds = %210
  store i32 0, i32* %8, align 4
  br label %223

223:                                              ; preds = %250, %222
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %226 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %253

229:                                              ; preds = %223
  %230 = load i32, i32* %8, align 4
  %231 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %232 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %231)
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %250

235:                                              ; preds = %229
  %236 = load i8*, i8** %7, align 8
  %237 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %238 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load i8**, i8*** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  store i8* %236, i8** %249, align 8
  br label %250

250:                                              ; preds = %235, %234
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %8, align 4
  br label %223

253:                                              ; preds = %223
  br label %254

254:                                              ; preds = %253, %210
  %255 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %256 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %254
  %259 = load i32, i32* @IB_MTU_2048, align 4
  %260 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %261 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  store i32 %259, i32* %266, align 4
  br label %276

267:                                              ; preds = %254
  %268 = load i32, i32* @IB_MTU_4096, align 4
  %269 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %270 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %268, i32* %275, align 4
  br label %276

276:                                              ; preds = %267, %258
  %277 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %278 = load i32, i32* %6, align 4
  %279 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %280 = call i64 @mlx4_is_master(%struct.mlx4_dev* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %276
  %283 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %284 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  br label %292

291:                                              ; preds = %276
  br label %292

292:                                              ; preds = %291, %282
  %293 = phi i32 [ %290, %282 ], [ -1, %291 ]
  %294 = call i32 @mlx4_SET_PORT(%struct.mlx4_dev* %277, i32 %278, i32 %293)
  store i32 %294, i32* %5, align 4
  %295 = load i32, i32* %5, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %292
  %298 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %299 = load i32, i32* %6, align 4
  %300 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %298, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 %299)
  br label %307

301:                                              ; preds = %292
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %6, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %6, align 4
  br label %192

305:                                              ; preds = %192
  br label %306

306:                                              ; preds = %305, %187
  store i32 0, i32* %2, align 4
  br label %351

307:                                              ; preds = %297
  %308 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %309 = call i32 @mlx4_cleanup_counters_table(%struct.mlx4_dev* %308)
  br label %310

310:                                              ; preds = %307, %184
  %311 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %312 = call i32 @mlx4_cleanup_mcg_table(%struct.mlx4_dev* %311)
  br label %313

313:                                              ; preds = %310, %170
  %314 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %315 = call i32 @mlx4_cleanup_qp_table(%struct.mlx4_dev* %314)
  br label %316

316:                                              ; preds = %313, %158
  %317 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %318 = call i32 @mlx4_cleanup_srq_table(%struct.mlx4_dev* %317)
  br label %319

319:                                              ; preds = %316, %150
  %320 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %321 = call i32 @mlx4_cleanup_cq_table(%struct.mlx4_dev* %320)
  br label %322

322:                                              ; preds = %319, %142, %134
  %323 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %324 = call i32 @mlx4_cmd_use_polling(%struct.mlx4_dev* %323)
  br label %325

325:                                              ; preds = %322, %87
  %326 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %327 = call i32 @mlx4_cleanup_eq_table(%struct.mlx4_dev* %326)
  br label %328

328:                                              ; preds = %325, %79
  %329 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %330 = call i32 @mlx4_cleanup_mr_table(%struct.mlx4_dev* %329)
  br label %331

331:                                              ; preds = %328, %71
  %332 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %333 = call i32 @mlx4_cleanup_xrcd_table(%struct.mlx4_dev* %332)
  br label %334

334:                                              ; preds = %331, %63
  %335 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %336 = call i32 @mlx4_cleanup_pd_table(%struct.mlx4_dev* %335)
  br label %337

337:                                              ; preds = %334, %55
  %338 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %339 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @iounmap(i32 %340)
  br label %342

342:                                              ; preds = %337, %45
  %343 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %344 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %345 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %344, i32 0, i32 0
  %346 = call i32 @mlx4_uar_free(%struct.mlx4_dev* %343, %struct.TYPE_15__* %345)
  br label %347

347:                                              ; preds = %342, %26
  %348 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %349 = call i32 @mlx4_cleanup_uar_table(%struct.mlx4_dev* %348)
  %350 = load i32, i32* %5, align 4
  store i32 %350, i32* %2, align 4
  br label %351

351:                                              ; preds = %347, %306, %15
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_uar_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_uar_alloc(%struct.mlx4_dev*, %struct.TYPE_15__*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @mlx4_init_pd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_xrcd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_mr_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_use_events(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_NOP(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_init_cq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_srq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_qp_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_mcg_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_counters_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_port_ib_caps(%struct.mlx4_dev*, i32, i8**) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_SET_PORT(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_cleanup_counters_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_mcg_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_qp_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_srq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_cq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_use_polling(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_mr_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_xrcd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_pd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mlx4_uar_free(%struct.mlx4_dev*, %struct.TYPE_15__*) #1

declare dso_local i32 @mlx4_cleanup_uar_table(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
