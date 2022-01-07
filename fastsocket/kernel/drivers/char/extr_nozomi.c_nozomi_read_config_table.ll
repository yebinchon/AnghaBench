; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nozomi.c_nozomi_read_config_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nozomi.c_nozomi_read_config_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@CONFIG_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"ConfigTable Bad! 0x%08X != 0x%08X\0A\00", align 1
@TOGGLE_VALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Second phase, configuring card\00", align 1
@PORT_MDM = common dso_local global i64 0, align 8
@PORT_DIAG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"toggle ports: MDM UL:%d MDM DL:%d, DIAG DL:%d\00", align 1
@MAX_PORT = common dso_local global i32 0, align 4
@FIFO_BUFFER_SIZE_UL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CTRL_DL = common dso_local global i32 0, align 4
@NOZOMI_STATE_ALLOCATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Initialization OK!\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"First phase: pushing upload buffers, clearing download\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Version of card: %d\0A\00", align 1
@CH_A = common dso_local global i64 0, align 8
@CH_B = common dso_local global i64 0, align 8
@MDM_UL = common dso_local global i32 0, align 4
@DIAG_DL = common dso_local global i32 0, align 4
@MDM_DL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"First phase done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nozomi*)* @nozomi_read_config_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nozomi_read_config_table(%struct.nozomi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nozomi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nozomi* %0, %struct.nozomi** %3, align 8
  %6 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %7 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %6, i32 0, i32 3
  %8 = bitcast %struct.TYPE_7__* %7 to i64*
  %9 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %10 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 0
  %13 = call i32 @read_mem32(i64* %8, i64 %12, i32 4)
  %14 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %15 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CONFIG_MAGIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %22 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %21, i32 0, i32 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %26 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CONFIG_MAGIC, align 8
  %30 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  store i32 0, i32* %2, align 4
  br label %225

31:                                               ; preds = %1
  %32 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %33 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %39 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TOGGLE_VALID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %165

45:                                               ; preds = %37, %31
  %46 = call i32 (i8*, ...) @DBG1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %48 = call i32 @setup_memory(%struct.nozomi* %47)
  %49 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %50 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %55 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i64, i64* @PORT_MDM, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 5
  store i32 %53, i32* %59, align 8
  %60 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %61 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %66 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i64, i64* @PORT_MDM, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  store i32 %64, i32* %70, align 4
  %71 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %72 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %77 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i64, i64* @PORT_DIAG, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  store i32 %75, i32* %81, align 4
  %82 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %83 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i64, i64* @PORT_MDM, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %90 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i64, i64* @PORT_MDM, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %97 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %96, i32 0, i32 2
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i64, i64* @PORT_DIAG, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @DBG1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %95, i32 %102)
  %104 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %105 = call i32 @dump_table(%struct.nozomi* %104)
  %106 = load i64, i64* @PORT_MDM, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %139, %45
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @MAX_PORT, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %108
  %113 = load i32, i32* @FIFO_BUFFER_SIZE_UL, align 4
  %114 = load i32, i32* @GFP_ATOMIC, align 4
  %115 = call i32 @kfifo_alloc(i32 %113, i32 %114, i32* null)
  %116 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %117 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %116, i32 0, i32 2
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  store i32 %115, i32* %122, align 8
  %123 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %124 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %123, i32 0, i32 2
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = call i32 @memset(i32* %129, i32 0, i32 4)
  %131 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %132 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %131, i32 0, i32 2
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = call i32 @memset(i32* %137, i32 0, i32 4)
  br label %139

139:                                              ; preds = %112
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %108

142:                                              ; preds = %108
  %143 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %144 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CTRL_DL, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %149 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %151 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %154 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @writew(i32 %152, i32 %155)
  %157 = load i32, i32* @NOZOMI_STATE_ALLOCATED, align 4
  %158 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %159 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 8
  %160 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %161 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %160, i32 0, i32 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = call i32 (i32*, i8*, ...) @dev_info(i32* %163, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %225

165:                                              ; preds = %37
  %166 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %167 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %224

171:                                              ; preds = %165
  %172 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %173 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @TOGGLE_VALID, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %224

179:                                              ; preds = %171
  store i64 0, i64* %5, align 8
  %180 = call i32 (i8*, ...) @DBG1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %181 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %182 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %181, i32 0, i32 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %186 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i32 (i32*, i8*, ...) @dev_info(i32* %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %188)
  %190 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %191 = call i32 @setup_memory(%struct.nozomi* %190)
  %192 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %193 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %192, i32 0, i32 2
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i64, i64* @PORT_MDM, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @CH_A, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @write_mem32(i32 %201, i64* %5, i32 4)
  %203 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %204 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %203, i32 0, i32 2
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = load i64, i64* @PORT_MDM, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* @CH_B, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @write_mem32(i32 %212, i64* %5, i32 4)
  %214 = load i32, i32* @MDM_UL, align 4
  %215 = load i32, i32* @DIAG_DL, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @MDM_DL, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %220 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @writew(i32 %218, i32 %221)
  %223 = call i32 (i8*, ...) @DBG1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %224

224:                                              ; preds = %179, %171, %165
  store i32 1, i32* %2, align 4
  br label %225

225:                                              ; preds = %224, %142, %20
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @read_mem32(i64*, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @DBG1(i8*, ...) #1

declare dso_local i32 @setup_memory(%struct.nozomi*) #1

declare dso_local i32 @dump_table(%struct.nozomi*) #1

declare dso_local i32 @kfifo_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @write_mem32(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
