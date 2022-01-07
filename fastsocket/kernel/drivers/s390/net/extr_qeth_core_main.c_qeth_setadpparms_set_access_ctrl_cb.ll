; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_set_access_ctrl_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setadpparms_set_access_ctrl_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.qeth_reply = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.qeth_set_access_ctrl }
%struct.qeth_set_access_ctrl = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"setaccb\00", align 1
@SETUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rc=%d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERR:SET_ACCESS_CTRL(%s,%d)==%d\0A\00", align 1
@ISOLATION_MODE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"QDIO data connection isolation is deactivated\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"QDIO data connection isolation is activated\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"%s QDIO data connection isolation already deactivated\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"%s QDIO data connection isolation already activated\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Adapter does not support QDIO data connection isolation\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"Adapter is dedicated. QDIO data connection isolation not supported\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"TSO does not permit QDIO data connection isolation\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"The adjacent switch port does not support reflective relay mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"The reflective relay mode cannot be enabled at the adjacent switch port\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"Turning off reflective relay mode at the adjacent switch failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_setadpparms_set_access_ctrl_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_setadpparms_set_access_ctrl_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_reply*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qeth_ipa_cmd*, align 8
  %8 = alloca %struct.qeth_set_access_ctrl*, align 8
  %9 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.qeth_reply*, %struct.qeth_reply** %5, align 8
  %11 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @TRACE, align 4
  %16 = call i32 @QETH_DBF_TEXT(i32 %15, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* %6, align 8
  %18 = inttoptr i64 %17 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %18, %struct.qeth_ipa_cmd** %7, align 8
  %19 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store %struct.qeth_set_access_ctrl* %23, %struct.qeth_set_access_ctrl** %8, align 8
  %24 = load i32, i32* @SETUP, align 4
  %25 = call i32 (i32, i32, i8*, ...) @QETH_DBF_TEXT_(i32 %24, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @SETUP, align 4
  %27 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 1
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i32, i8*, ...) @QETH_DBF_TEXT_(i32 %26, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @SETUP, align 4
  %36 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i32, i8*, ...) @QETH_DBF_TEXT_(i32 %35, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 128
  br i1 %49, label %50, label %68

50:                                               ; preds = %3
  %51 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qeth_set_access_ctrl*, %struct.qeth_set_access_ctrl** %8, align 8
  %59 = getelementptr inbounds %struct.qeth_set_access_ctrl, %struct.qeth_set_access_ctrl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %60, i32 %66)
  br label %68

68:                                               ; preds = %50, %3
  %69 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %211 [
    i32 128, label %75
    i32 134, label %95
    i32 135, label %113
    i32 132, label %131
    i32 133, label %137
    i32 136, label %154
    i32 129, label %171
    i32 130, label %188
    i32 131, label %205
  ]

75:                                               ; preds = %68
  %76 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %77 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ISOLATION_MODE_NONE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %84 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %83, i32 0, i32 1
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = call i32 @dev_info(%struct.TYPE_19__* %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %94

88:                                               ; preds = %75
  %89 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %90 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %89, i32 0, i32 1
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = call i32 @dev_info(%struct.TYPE_19__* %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %88, %82
  br label %223

95:                                               ; preds = %68
  %96 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %97 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %96, i32 0, i32 1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = call i32 @dev_name(%struct.TYPE_19__* %99)
  %101 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %106 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %110 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %104, %95
  br label %223

113:                                              ; preds = %68
  %114 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %115 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %114, i32 0, i32 1
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = call i32 @dev_name(%struct.TYPE_19__* %117)
  %119 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %113
  %123 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %124 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %128 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %122, %113
  br label %223

131:                                              ; preds = %68
  %132 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %133 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %132, i32 0, i32 1
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = call i32 @dev_err(%struct.TYPE_19__* %135, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  br label %223

137:                                              ; preds = %68
  %138 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %139 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %138, i32 0, i32 1
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = call i32 @dev_err(%struct.TYPE_19__* %141, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0))
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %137
  %146 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %147 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %151 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  br label %153

153:                                              ; preds = %145, %137
  br label %223

154:                                              ; preds = %68
  %155 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %156 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %155, i32 0, i32 1
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = call i32 @dev_err(%struct.TYPE_19__* %158, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %154
  %163 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %164 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %168 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  br label %170

170:                                              ; preds = %162, %154
  br label %223

171:                                              ; preds = %68
  %172 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %173 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %172, i32 0, i32 1
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = call i32 @dev_err(%struct.TYPE_19__* %175, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0))
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %171
  %180 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %181 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %185 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  br label %187

187:                                              ; preds = %179, %171
  br label %223

188:                                              ; preds = %68
  %189 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %190 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %189, i32 0, i32 1
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = call i32 @dev_err(%struct.TYPE_19__* %192, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0))
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %188
  %197 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %198 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %202 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  store i32 %200, i32* %203, align 4
  br label %204

204:                                              ; preds = %196, %188
  br label %223

205:                                              ; preds = %68
  %206 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %207 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %206, i32 0, i32 1
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = call i32 @dev_warn(%struct.TYPE_19__* %209, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0))
  br label %223

211:                                              ; preds = %68
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %216 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %220 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 4
  br label %222

222:                                              ; preds = %214, %211
  br label %223

223:                                              ; preds = %222, %205, %204, %187, %170, %153, %131, %130, %112, %94
  %224 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %225 = load %struct.qeth_reply*, %struct.qeth_reply** %5, align 8
  %226 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %227 = ptrtoint %struct.qeth_ipa_cmd* %226 to i64
  %228 = call i32 @qeth_default_setadapterparms_cb(%struct.qeth_card* %224, %struct.qeth_reply* %225, i64 %227)
  ret i32 0
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, ...) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_info(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @dev_name(%struct.TYPE_19__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @qeth_default_setadapterparms_cb(%struct.qeth_card*, %struct.qeth_reply*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
