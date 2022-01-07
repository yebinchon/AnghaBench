; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_send_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, i32*, i64*, i32* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_18__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32*, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@ISDN_USAGE_MODEM = common dso_local global i32 0, align 4
@REG_L2PROT = common dso_local global i64 0, align 8
@RESULT_ERROR = common dso_local global i32 0, align 4
@REG_SI1 = common dso_local global i64 0, align 8
@bit2si = common dso_local global i32* null, align 8
@si2bit = common dso_local global i32* null, align 8
@REG_SI1I = common dso_local global i64 0, align 8
@dev = common dso_local global %struct.TYPE_12__* null, align 8
@REG_L3PROT = common dso_local global i64 0, align 8
@RESULT_NO_DIALTONE = common dso_local global i32 0, align 4
@ISDN_USAGE_OUTGOING = common dso_local global i32 0, align 4
@ISDN_CMD_CLREAZ = common dso_local global i32 0, align 4
@ISDN_CMD_SETEAZ = common dso_local global i32 0, align 4
@ISDN_CMD_SETL2 = common dso_local global i32 0, align 4
@ISDN_CMD_SETL3 = common dso_local global i32 0, align 4
@CAPI_MANUFACTURER = common dso_local global i32 0, align 4
@CAPI_REQ = common dso_local global i32 0, align 4
@CAPI_PUT_MESSAGE = common dso_local global i32 0, align 4
@ISDN_PROTO_L2_FAX = common dso_local global i32 0, align 4
@ISDN_PROTO_L2_MODEM = common dso_local global i32 0, align 4
@ISDN_PROTO_L2_TRANS = common dso_local global i32 0, align 4
@ISDN_USAGE_VOICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_18__*, i8*)* @isdn_tty_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isdn_tty_send_msg(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i32, i32* @ISDN_USAGE_MODEM, align 4
  store i32 %15, i32* %7, align 4
  store i32 7, i32* %8, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @REG_L2PROT, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @RESULT_ERROR, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = call i32 @isdn_tty_modem_result(i32 %27, %struct.TYPE_16__* %28)
  br label %265

30:                                               ; preds = %3
  store i32 7, i32* %13, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i32, i32* %13, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @REG_SI1, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %13, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load i32*, i32** @bit2si, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %55

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %13, align 4
  br label %31

55:                                               ; preds = %45, %31
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @isdn_calc_usage(i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32*, i32** @si2bit, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @REG_SI1I, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @spin_lock_irqsave(i32* %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @REG_L3PROT, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @isdn_get_free_channel(i32 %73, i32 %74, i32 %80, i32 -1, i32 -1, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %55
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i32 %90)
  %92 = load i32, i32* @RESULT_NO_DIALTONE, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = call i32 @isdn_tty_modem_result(i32 %92, %struct.TYPE_16__* %93)
  br label %265

95:                                               ; preds = %55
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load i32, i32* @ISDN_USAGE_OUTGOING, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %126
  store i32 %134, i32* %132, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = call i32 (...) @isdn_info_update()
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i32 %140)
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %144, i32* %145, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i64 %148, i64* %149, align 8
  %150 = load i32, i32* @ISDN_CMD_CLREAZ, align 4
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %150, i32* %151, align 8
  %152 = call i32 @isdn_command(%struct.TYPE_17__* %10)
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @isdn_map_eaz2msn(i32 %158, i32 %161)
  %163 = call i32 @strcpy(i32 %155, i32 %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %166, i32* %167, align 8
  %168 = load i32, i32* @ISDN_CMD_SETEAZ, align 4
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %168, i32* %169, align 8
  %170 = call i32 @isdn_command(%struct.TYPE_17__* %10)
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %173, i32* %174, align 8
  %175 = load i32, i32* @ISDN_CMD_SETL2, align 4
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %175, i32* %176, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = shl i32 %183, 8
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %182, %185
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i64 %186, i64* %187, align 8
  %188 = call i32 @isdn_command(%struct.TYPE_17__* %10)
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %191, i32* %192, align 8
  %193 = load i32, i32* @ISDN_CMD_SETL3, align 4
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %193, i32* %194, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @REG_L3PROT, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 8
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %197, %205
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i64 %206, i64* %207, align 8
  %208 = call i32 @isdn_command(%struct.TYPE_17__* %10)
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %211, i32* %212, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i64 %215, i64* %216, align 8
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 14
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 8
  %222 = load i32, i32* @CAPI_MANUFACTURER, align 4
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 4
  store i32 %222, i32* %225, align 4
  %226 = load i32, i32* @CAPI_REQ, align 4
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 3
  store i32 %226, i32* %229, align 8
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  store i64 %234, i64* %238, align 8
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %239, 1
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  store i32 %240, i32* %245, align 4
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  %251 = load i8*, i8** %6, align 8
  %252 = load i32, i32* %14, align 4
  %253 = call i32 @strncpy(i32* %250, i8* %251, i32 %252)
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %14, align 4
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  store i32 13, i32* %261, align 4
  %262 = load i32, i32* @CAPI_PUT_MESSAGE, align 4
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %262, i32* %263, align 8
  %264 = call i32 @isdn_command(%struct.TYPE_17__* %10)
  br label %265

265:                                              ; preds = %26, %95, %87
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isdn_tty_modem_result(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @isdn_calc_usage(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @isdn_get_free_channel(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @isdn_info_update(...) #1

declare dso_local i32 @isdn_command(%struct.TYPE_17__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @isdn_map_eaz2msn(i32, i32) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
