; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@.str = private unnamed_addr constant [27 x i8] c"=== TDA18271 REG DUMP ===\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ID_BYTE            = 0x%02x\0A\00", align 1
@R_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"THERMO_BYTE        = 0x%02x\0A\00", align 1
@R_TM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"POWER_LEVEL_BYTE   = 0x%02x\0A\00", align 1
@R_PL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_1   = 0x%02x\0A\00", align 1
@R_EP1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_2   = 0x%02x\0A\00", align 1
@R_EP2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_3   = 0x%02x\0A\00", align 1
@R_EP3 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_4   = 0x%02x\0A\00", align 1
@R_EP4 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_5   = 0x%02x\0A\00", align 1
@R_EP5 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"CAL_POST_DIV_BYTE  = 0x%02x\0A\00", align 1
@R_CPD = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"CAL_DIV_BYTE_1     = 0x%02x\0A\00", align 1
@R_CD1 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [29 x i8] c"CAL_DIV_BYTE_2     = 0x%02x\0A\00", align 1
@R_CD2 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [29 x i8] c"CAL_DIV_BYTE_3     = 0x%02x\0A\00", align 1
@R_CD3 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [29 x i8] c"MAIN_POST_DIV_BYTE = 0x%02x\0A\00", align 1
@R_MPD = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"MAIN_DIV_BYTE_1    = 0x%02x\0A\00", align 1
@R_MD1 = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"MAIN_DIV_BYTE_2    = 0x%02x\0A\00", align 1
@R_MD2 = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [29 x i8] c"MAIN_DIV_BYTE_3    = 0x%02x\0A\00", align 1
@R_MD3 = common dso_local global i64 0, align 8
@tda18271_debug = common dso_local global i32 0, align 4
@DBG_ADV = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_1    = 0x%02x\0A\00", align 1
@R_EB1 = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_2    = 0x%02x\0A\00", align 1
@R_EB2 = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_3    = 0x%02x\0A\00", align 1
@R_EB3 = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_4    = 0x%02x\0A\00", align 1
@R_EB4 = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_5    = 0x%02x\0A\00", align 1
@R_EB5 = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_6    = 0x%02x\0A\00", align 1
@R_EB6 = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_7    = 0x%02x\0A\00", align 1
@R_EB7 = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_8    = 0x%02x\0A\00", align 1
@R_EB8 = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_9  W = 0x%02x\0A\00", align 1
@R_EB9 = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_10   = 0x%02x\0A\00", align 1
@R_EB10 = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_11   = 0x%02x\0A\00", align 1
@R_EB11 = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_12   = 0x%02x\0A\00", align 1
@R_EB12 = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_13   = 0x%02x\0A\00", align 1
@R_EB13 = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_14   = 0x%02x\0A\00", align 1
@R_EB14 = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_15   = 0x%02x\0A\00", align 1
@R_EB15 = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_16 W = 0x%02x\0A\00", align 1
@R_EB16 = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_17 W = 0x%02x\0A\00", align 1
@R_EB17 = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_18   = 0x%02x\0A\00", align 1
@R_EB18 = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_19 W = 0x%02x\0A\00", align 1
@R_EB19 = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_20 W = 0x%02x\0A\00", align 1
@R_EB20 = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_21   = 0x%02x\0A\00", align 1
@R_EB21 = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_22   = 0x%02x\0A\00", align 1
@R_EB22 = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_23   = 0x%02x\0A\00", align 1
@R_EB23 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i32)* @tda18271_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda18271_dump_regs(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda18271_priv*, align 8
  %6 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  store %struct.tda18271_priv* %9, %struct.tda18271_priv** %5, align 8
  %10 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %11 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* @R_ID, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 255, %18
  %20 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* @R_TM, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 255, %25
  %27 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* @R_PL, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 255, %32
  %34 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* @R_EP1, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 255, %39
  %41 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* @R_EP2, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 255, %46
  %48 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* @R_EP3, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 255, %53
  %55 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* @R_EP4, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 255, %60
  %62 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* @R_EP5, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 255, %67
  %69 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* @R_CPD, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 255, %74
  %76 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* @R_CD1, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 255, %81
  %83 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %82)
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* @R_CD2, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 255, %88
  %90 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* @R_CD3, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 255, %95
  %97 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %96)
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* @R_MPD, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 255, %102
  %104 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %103)
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* @R_MD1, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 255, %109
  %111 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %110)
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* @R_MD2, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 255, %116
  %118 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %117)
  %119 = load i8*, i8** %6, align 8
  %120 = load i64, i64* @R_MD3, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 255, %123
  %125 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @tda18271_debug, align 4
  %127 = load i32, i32* @DBG_ADV, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %2
  br label %293

131:                                              ; preds = %2
  %132 = load i8*, i8** %6, align 8
  %133 = load i64, i64* @R_EB1, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 255, %136
  %138 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %137)
  %139 = load i8*, i8** %6, align 8
  %140 = load i64, i64* @R_EB2, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 255, %143
  %145 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %144)
  %146 = load i8*, i8** %6, align 8
  %147 = load i64, i64* @R_EB3, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 255, %150
  %152 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 %151)
  %153 = load i8*, i8** %6, align 8
  %154 = load i64, i64* @R_EB4, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = and i32 255, %157
  %159 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 %158)
  %160 = load i8*, i8** %6, align 8
  %161 = load i64, i64* @R_EB5, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 255, %164
  %166 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %165)
  %167 = load i8*, i8** %6, align 8
  %168 = load i64, i64* @R_EB6, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = and i32 255, %171
  %173 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %172)
  %174 = load i8*, i8** %6, align 8
  %175 = load i64, i64* @R_EB7, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 255, %178
  %180 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %179)
  %181 = load i8*, i8** %6, align 8
  %182 = load i64, i64* @R_EB8, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 255, %185
  %187 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 %186)
  %188 = load i8*, i8** %6, align 8
  %189 = load i64, i64* @R_EB9, align 8
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = and i32 255, %192
  %194 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 %193)
  %195 = load i8*, i8** %6, align 8
  %196 = load i64, i64* @R_EB10, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 255, %199
  %201 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 %200)
  %202 = load i8*, i8** %6, align 8
  %203 = load i64, i64* @R_EB11, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = and i32 255, %206
  %208 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i32 %207)
  %209 = load i8*, i8** %6, align 8
  %210 = load i64, i64* @R_EB12, align 8
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = and i32 255, %213
  %215 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i32 %214)
  %216 = load i8*, i8** %6, align 8
  %217 = load i64, i64* @R_EB13, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = and i32 255, %220
  %222 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i32 %221)
  %223 = load i8*, i8** %6, align 8
  %224 = load i64, i64* @R_EB14, align 8
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = and i32 255, %227
  %229 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 %228)
  %230 = load i8*, i8** %6, align 8
  %231 = load i64, i64* @R_EB15, align 8
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = and i32 255, %234
  %236 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 %235)
  %237 = load i8*, i8** %6, align 8
  %238 = load i64, i64* @R_EB16, align 8
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = and i32 255, %241
  %243 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 %242)
  %244 = load i8*, i8** %6, align 8
  %245 = load i64, i64* @R_EB17, align 8
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = and i32 255, %248
  %250 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0), i32 %249)
  %251 = load i8*, i8** %6, align 8
  %252 = load i64, i64* @R_EB18, align 8
  %253 = getelementptr inbounds i8, i8* %251, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = and i32 255, %255
  %257 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i32 %256)
  %258 = load i8*, i8** %6, align 8
  %259 = load i64, i64* @R_EB19, align 8
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = and i32 255, %262
  %264 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i32 %263)
  %265 = load i8*, i8** %6, align 8
  %266 = load i64, i64* @R_EB20, align 8
  %267 = getelementptr inbounds i8, i8* %265, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = and i32 255, %269
  %271 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i32 %270)
  %272 = load i8*, i8** %6, align 8
  %273 = load i64, i64* @R_EB21, align 8
  %274 = getelementptr inbounds i8, i8* %272, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  %277 = and i32 255, %276
  %278 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i64 0, i64 0), i32 %277)
  %279 = load i8*, i8** %6, align 8
  %280 = load i64, i64* @R_EB22, align 8
  %281 = getelementptr inbounds i8, i8* %279, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = and i32 255, %283
  %285 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i32 %284)
  %286 = load i8*, i8** %6, align 8
  %287 = load i64, i64* @R_EB23, align 8
  %288 = getelementptr inbounds i8, i8* %286, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = and i32 255, %290
  %292 = call i32 (i8*, ...) @tda_reg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i64 0, i64 0), i32 %291)
  br label %293

293:                                              ; preds = %131, %130
  ret void
}

declare dso_local i32 @tda_reg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
