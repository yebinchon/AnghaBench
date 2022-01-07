; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_mISDNipac_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_mISDNipac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipac_hw = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_13__, i32, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.ipac_hw*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DEBUG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: ipac type %x\0A\00", align 1
@IPAC_TYPE_HSCX = common dso_local global i32 0, align 4
@IPAC_TYPE_ISAC = common dso_local global i32 0, align 4
@IPAC_TYPE_IPAC = common dso_local global i32 0, align 4
@IPAC_TYPE_IPACX = common dso_local global i32 0, align 4
@IPAC_TYPE_ISACX = common dso_local global i32 0, align 4
@IPACX_OFF_ICA = common dso_local global i32 0, align 4
@IPACX_OFF_ICB = common dso_local global i32 0, align 4
@ipac_dctrl = common dso_local global i32 0, align 4
@MAX_DATA_MEM = common dso_local global i32 0, align 4
@hscx_l2l1 = common dso_local global i32 0, align 4
@hscx_bctrl = common dso_local global i32 0, align 4
@ipac_init = common dso_local global i32 0, align 4
@free_ipac = common dso_local global i32 0, align 4
@ISDN_P_B_RAW = common dso_local global i32 0, align 4
@ISDN_P_B_MASK = common dso_local global i32 0, align 4
@ISDN_P_B_HDLC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mISDNipac_init(%struct.ipac_hw* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipac_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipac_hw* %0, %struct.ipac_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %9, i32 0, i32 6
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DEBUG_HW, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pr_notice(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IPAC_TYPE_HSCX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %27
  %35 = load i32, i32* @IPAC_TYPE_ISAC, align 4
  %36 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %37 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %39, i32 0, i32 3
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %45 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %44, i32 0, i32 3
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 64, i32* %48, align 8
  %49 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %50 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %49, i32 0, i32 3
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i32 32, i32* %53, align 4
  %54 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %54, i32 0, i32 3
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32 32, i32* %58, align 4
  br label %132

59:                                               ; preds = %27
  %60 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %61 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IPAC_TYPE_IPAC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %59
  %67 = load i32, i32* @IPAC_TYPE_IPAC, align 4
  %68 = load i32, i32* @IPAC_TYPE_ISAC, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %71 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %74 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %73, i32 0, i32 3
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %79 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %78, i32 0, i32 3
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 64, i32* %82, align 8
  %83 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %84 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i32 64, i32* %87, align 4
  %88 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %89 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %88, i32 0, i32 3
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i32 64, i32* %92, align 4
  br label %131

93:                                               ; preds = %59
  %94 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %95 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %93
  %101 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %102 = load i32, i32* @IPAC_TYPE_ISACX, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %105 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @IPACX_OFF_ICA, align 4
  %108 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %109 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %108, i32 0, i32 3
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i32 %107, i32* %112, align 8
  %113 = load i32, i32* @IPACX_OFF_ICB, align 4
  %114 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %115 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %114, i32 0, i32 3
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  store i32 %113, i32* %118, align 8
  %119 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %120 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %119, i32 0, i32 3
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  store i32 64, i32* %123, align 4
  %124 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %125 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %124, i32 0, i32 3
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  store i32 64, i32* %128, align 4
  br label %130

129:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %269

130:                                              ; preds = %100
  br label %131

131:                                              ; preds = %130, %66
  br label %132

132:                                              ; preds = %131, %34
  %133 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %134 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %133, i32 0, i32 4
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @mISDNisac_init(%struct.TYPE_13__* %134, i8* %135)
  %137 = load i32, i32* @ipac_dctrl, align 4
  %138 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %139 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 %137, i32* %143, align 4
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %249, %132
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %252

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  %150 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %151 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %150, i32 0, i32 3
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  store i32 %149, i32* %157, align 8
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  %160 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %161 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @set_channelmap(i32 %159, i32 %165)
  %167 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %168 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %167, i32 0, i32 3
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  %176 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %177 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = call i32 @list_add(i32* %175, i32* %180)
  %182 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %183 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %182, i32 0, i32 3
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 4
  %189 = load i32, i32* @MAX_DATA_MEM, align 4
  %190 = call i32 @mISDN_initbchannel(%struct.TYPE_14__* %188, i32 %189)
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  %193 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %194 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %193, i32 0, i32 3
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  store i32 %192, i32* %201, align 8
  %202 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %203 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %202, i32 0, i32 3
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  store i32* @hscx_l2l1, i32** %210, align 8
  %211 = load i32, i32* @hscx_bctrl, align 4
  %212 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %213 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %212, i32 0, i32 3
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  store i32 %211, i32* %220, align 4
  %221 = load i8*, i8** %5, align 8
  %222 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %223 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %222, i32 0, i32 3
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  store i8* %221, i8** %229, align 8
  %230 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %231 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %232 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %231, i32 0, i32 3
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 3
  store %struct.ipac_hw* %230, %struct.ipac_hw** %237, align 8
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 47, i32 3
  %242 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %243 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %242, i32 0, i32 3
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 2
  store i32 %241, i32* %248, align 8
  br label %249

249:                                              ; preds = %147
  %250 = load i32, i32* %7, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %7, align 4
  br label %144

252:                                              ; preds = %144
  %253 = load i32, i32* @ipac_init, align 4
  %254 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %255 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %254, i32 0, i32 2
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* @free_ipac, align 4
  %257 = load %struct.ipac_hw*, %struct.ipac_hw** %4, align 8
  %258 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* @ISDN_P_B_RAW, align 4
  %260 = load i32, i32* @ISDN_P_B_MASK, align 4
  %261 = and i32 %259, %260
  %262 = shl i32 1, %261
  %263 = load i32, i32* @ISDN_P_B_HDLC, align 4
  %264 = load i32, i32* @ISDN_P_B_MASK, align 4
  %265 = and i32 %263, %264
  %266 = shl i32 1, %265
  %267 = or i32 %262, %266
  store i32 %267, i32* %6, align 4
  %268 = load i32, i32* %6, align 4
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %252, %129
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local i32 @mISDNisac_init(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @set_channelmap(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mISDN_initbchannel(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
