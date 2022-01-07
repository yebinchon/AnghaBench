; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i8* }

@isac_l1cmd = common dso_local global i32 0, align 4
@dbusy_timer_handler = common dso_local global i64 0, align 8
@IPAC_TYPE_ISACX = common dso_local global i32 0, align 4
@ISACX_MASK = common dso_local global i32 0, align 4
@ISACX_STARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: ISACX STARD %x\0A\00", align 1
@ISACX_ISTAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: ISACX ISTAD %x\0A\00", align 1
@ISACX_ISTA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: ISACX ISTA %x\0A\00", align 1
@ISACX_TR_CONF0 = common dso_local global i32 0, align 4
@ISACX_TR_CONF2 = common dso_local global i32 0, align 4
@ISACX_MODED = common dso_local global i32 0, align 4
@ISACX_ID = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: ISACX Design ID %x\0A\00", align 1
@ISACX_CIR0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: ISACX CIR0 %02X\0A\00", align 1
@ISAC_CMD_RS = common dso_local global i32 0, align 4
@IPACX__ON = common dso_local global i32 0, align 4
@ISACX_MASKD = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@ISAC_STAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"%s: ISAC STAR %x\0A\00", align 1
@ISAC_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"%s: ISAC MODE %x\0A\00", align 1
@ISAC_ADF2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"%s: ISAC ADF2 %x\0A\00", align 1
@ISAC_ISTA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"%s: ISAC ISTA %x\0A\00", align 1
@ISAC_EXIR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"%s: ISAC EXIR %x\0A\00", align 1
@ISAC_RBCH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"%s: ISAC version (%x): %s\0A\00", align 1
@ISACVer = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"%s: only support IOM2 mode but adf2=%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ISAC_SQXR = common dso_local global i32 0, align 4
@ISAC_SPCR = common dso_local global i32 0, align 4
@ISAC_STCR = common dso_local global i32 0, align 4
@ISAC_TIMR = common dso_local global i32 0, align 4
@ISAC_ADF1 = common dso_local global i32 0, align 4
@ISAC_CIR0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"%s: ISAC CIR0 %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isac_hw*)* @isac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isac_init(%struct.isac_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isac_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isac_hw* %0, %struct.isac_hw** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %7 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %13 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %12, i32 0, i32 5
  %14 = load i32, i32* @isac_l1cmd, align 4
  %15 = call i32 @create_l1(%struct.TYPE_4__* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %282

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %23 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %22, i32 0, i32 7
  store i32* null, i32** %23, align 8
  %24 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %25 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %24, i32 0, i32 6
  store i32* null, i32** %25, align 8
  %26 = load i64, i64* @dbusy_timer_handler, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %29 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i8* %27, i8** %31, align 8
  %32 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %33 = ptrtoint %struct.isac_hw* %32 to i64
  %34 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %35 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %33, i64* %37, align 8
  %38 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %39 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = call i32 @init_timer(%struct.TYPE_3__* %40)
  %42 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %43 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %42, i32 0, i32 0
  store i32 170, i32* %43, align 8
  %44 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %45 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IPAC_TYPE_ISACX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %129

50:                                               ; preds = %21
  %51 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %52 = load i32, i32* @ISACX_MASK, align 4
  %53 = call i32 @WriteISAC(%struct.isac_hw* %51, i32 %52, i32 255)
  %54 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %55 = load i32, i32* @ISACX_STARD, align 4
  %56 = call i32 @ReadISAC(%struct.isac_hw* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %58 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %63 = load i32, i32* @ISACX_ISTAD, align 4
  %64 = call i32 @ReadISAC(%struct.isac_hw* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %66 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %71 = load i32, i32* @ISACX_ISTA, align 4
  %72 = call i32 @ReadISAC(%struct.isac_hw* %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %74 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %79 = load i32, i32* @ISACX_TR_CONF0, align 4
  %80 = call i32 @WriteISAC(%struct.isac_hw* %78, i32 %79, i32 0)
  %81 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %82 = load i32, i32* @ISACX_TR_CONF2, align 4
  %83 = call i32 @WriteISAC(%struct.isac_hw* %81, i32 %82, i32 0)
  %84 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %85 = load i32, i32* @ISACX_MODED, align 4
  %86 = call i32 @WriteISAC(%struct.isac_hw* %84, i32 %85, i32 201)
  %87 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %88 = load i32, i32* @ISACX_ID, align 4
  %89 = call i32 @ReadISAC(%struct.isac_hw* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %91 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DEBUG_HW, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %50
  %98 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %99 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = and i32 %101, 63
  %103 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %97, %50
  %105 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %106 = load i32, i32* @ISACX_CIR0, align 4
  %107 = call i32 @ReadISAC(%struct.isac_hw* %105, i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %109 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = ashr i32 %113, 4
  %115 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %116 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %118 = call i32 @isac_ph_state_change(%struct.isac_hw* %117)
  %119 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %120 = load i32, i32* @ISAC_CMD_RS, align 4
  %121 = call i32 @ph_command(%struct.isac_hw* %119, i32 %120)
  %122 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %123 = load i32, i32* @ISACX_MASK, align 4
  %124 = load i32, i32* @IPACX__ON, align 4
  %125 = call i32 @WriteISAC(%struct.isac_hw* %122, i32 %123, i32 %124)
  %126 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %127 = load i32, i32* @ISACX_MASKD, align 4
  %128 = call i32 @WriteISAC(%struct.isac_hw* %126, i32 %127, i32 0)
  br label %280

129:                                              ; preds = %21
  %130 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %131 = load i32, i32* @ISAC_MASK, align 4
  %132 = call i32 @WriteISAC(%struct.isac_hw* %130, i32 %131, i32 255)
  %133 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %134 = load i32, i32* @ISAC_STAR, align 4
  %135 = call i32 @ReadISAC(%struct.isac_hw* %133, i32 %134)
  store i32 %135, i32* %4, align 4
  %136 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %137 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %142 = load i32, i32* @ISAC_MODE, align 4
  %143 = call i32 @ReadISAC(%struct.isac_hw* %141, i32 %142)
  store i32 %143, i32* %4, align 4
  %144 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %145 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %150 = load i32, i32* @ISAC_ADF2, align 4
  %151 = call i32 @ReadISAC(%struct.isac_hw* %149, i32 %150)
  store i32 %151, i32* %4, align 4
  %152 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %153 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %158 = load i32, i32* @ISAC_ISTA, align 4
  %159 = call i32 @ReadISAC(%struct.isac_hw* %157, i32 %158)
  store i32 %159, i32* %4, align 4
  %160 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %161 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load i32, i32* %4, align 4
  %166 = and i32 %165, 1
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %129
  %169 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %170 = load i32, i32* @ISAC_EXIR, align 4
  %171 = call i32 @ReadISAC(%struct.isac_hw* %169, i32 %170)
  store i32 %171, i32* %4, align 4
  %172 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %173 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %168, %129
  %178 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %179 = load i32, i32* @ISAC_RBCH, align 4
  %180 = call i32 @ReadISAC(%struct.isac_hw* %178, i32 %179)
  store i32 %180, i32* %4, align 4
  %181 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %182 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @DEBUG_HW, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %177
  %189 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %190 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = load i32*, i32** @ISACVer, align 8
  %194 = load i32, i32* %4, align 4
  %195 = ashr i32 %194, 5
  %196 = and i32 %195, 3
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %191, i32 %192, i32 %199)
  br label %201

201:                                              ; preds = %188, %177
  %202 = load i32, i32* %4, align 4
  %203 = ashr i32 %202, 5
  %204 = and i32 %203, 3
  %205 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %206 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %210 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %201
  %214 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %215 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %214, i32 0, i32 3
  store i32 128, i32* %215, align 4
  br label %216

216:                                              ; preds = %213, %201
  %217 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %218 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, 128
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %234, label %222

222:                                              ; preds = %216
  %223 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %224 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %227 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %225, i32 %228)
  %230 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %231 = call i32 @isac_release(%struct.isac_hw* %230)
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %2, align 4
  br label %282

234:                                              ; preds = %216
  %235 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %236 = load i32, i32* @ISAC_ADF2, align 4
  %237 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %238 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @WriteISAC(%struct.isac_hw* %235, i32 %236, i32 %239)
  %241 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %242 = load i32, i32* @ISAC_SQXR, align 4
  %243 = call i32 @WriteISAC(%struct.isac_hw* %241, i32 %242, i32 47)
  %244 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %245 = load i32, i32* @ISAC_SPCR, align 4
  %246 = call i32 @WriteISAC(%struct.isac_hw* %244, i32 %245, i32 0)
  %247 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %248 = load i32, i32* @ISAC_STCR, align 4
  %249 = call i32 @WriteISAC(%struct.isac_hw* %247, i32 %248, i32 112)
  %250 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %251 = load i32, i32* @ISAC_MODE, align 4
  %252 = call i32 @WriteISAC(%struct.isac_hw* %250, i32 %251, i32 201)
  %253 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %254 = load i32, i32* @ISAC_TIMR, align 4
  %255 = call i32 @WriteISAC(%struct.isac_hw* %253, i32 %254, i32 0)
  %256 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %257 = load i32, i32* @ISAC_ADF1, align 4
  %258 = call i32 @WriteISAC(%struct.isac_hw* %256, i32 %257, i32 0)
  %259 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %260 = load i32, i32* @ISAC_CIR0, align 4
  %261 = call i32 @ReadISAC(%struct.isac_hw* %259, i32 %260)
  store i32 %261, i32* %4, align 4
  %262 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %263 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %4, align 4
  %266 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %264, i32 %265)
  %267 = load i32, i32* %4, align 4
  %268 = ashr i32 %267, 2
  %269 = and i32 %268, 15
  %270 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %271 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  %272 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %273 = call i32 @isac_ph_state_change(%struct.isac_hw* %272)
  %274 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %275 = load i32, i32* @ISAC_CMD_RS, align 4
  %276 = call i32 @ph_command(%struct.isac_hw* %274, i32 %275)
  %277 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %278 = load i32, i32* @ISAC_MASK, align 4
  %279 = call i32 @WriteISAC(%struct.isac_hw* %277, i32 %278, i32 0)
  br label %280

280:                                              ; preds = %234, %104
  %281 = load i32, i32* %5, align 4
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %280, %222, %18
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local i32 @create_l1(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @WriteISAC(%struct.isac_hw*, i32, i32) #1

declare dso_local i32 @ReadISAC(%struct.isac_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, ...) #1

declare dso_local i32 @isac_ph_state_change(%struct.isac_hw*) #1

declare dso_local i32 @ph_command(%struct.isac_hw*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @isac_release(%struct.isac_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
