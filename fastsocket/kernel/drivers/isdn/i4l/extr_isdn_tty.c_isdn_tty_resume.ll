; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, i32*, i64*, i32* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_18__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32*, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@ISDN_USAGE_MODEM = common dso_local global i32 0, align 4
@REG_L2PROT = common dso_local global i64 0, align 8
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
@CAPI_FACILITY = common dso_local global i32 0, align 4
@CAPI_REQ = common dso_local global i32 0, align 4
@CAPI_PUT_MESSAGE = common dso_local global i32 0, align 4
@ISDN_TIMER_CARRIER = common dso_local global i32 0, align 4
@ISDN_PROTO_L2_FAX = common dso_local global i32 0, align 4
@ISDN_PROTO_L2_MODEM = common dso_local global i32 0, align 4
@ISDN_PROTO_L2_TRANS = common dso_local global i32 0, align 4
@ISDN_USAGE_VOICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_16__*, %struct.TYPE_18__*)* @isdn_tty_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isdn_tty_resume(i8* %0, %struct.TYPE_16__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %15 = load i32, i32* @ISDN_USAGE_MODEM, align 4
  store i32 %15, i32* %7, align 4
  store i32 7, i32* %8, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @REG_L2PROT, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %14, align 4
  store i32 7, i32* %13, align 4
  br label %24

24:                                               ; preds = %45, %3
  %25 = load i32, i32* %13, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @REG_SI1, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %13, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32*, i32** @bit2si, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %48

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %13, align 4
  br label %24

48:                                               ; preds = %38, %24
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @isdn_calc_usage(i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** @si2bit, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @REG_SI1I, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @spin_lock_irqsave(i32* %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @REG_L3PROT, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @isdn_get_free_channel(i32 %66, i32 %67, i32 %73, i32 -1, i32 -1, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %48
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i32 %83)
  %85 = load i32, i32* @RESULT_NO_DIALTONE, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = call i32 @isdn_tty_modem_result(i32 %85, %struct.TYPE_16__* %86)
  br label %281

88:                                               ; preds = %48
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 5
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  %119 = load i32, i32* @ISDN_USAGE_OUTGOING, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %119
  store i32 %127, i32* %125, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  %130 = call i32 (...) @isdn_info_update()
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dev, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i32 %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %137, i32* %138, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i64 %141, i64* %142, align 8
  %143 = load i32, i32* @ISDN_CMD_CLREAZ, align 4
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %143, i32* %144, align 8
  %145 = call i32 @isdn_command(%struct.TYPE_17__* %10)
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @isdn_map_eaz2msn(i32 %151, i32 %154)
  %156 = call i32 @strcpy(i32 %148, i32 %155)
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %159, i32* %160, align 8
  %161 = load i32, i32* @ISDN_CMD_SETEAZ, align 4
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %161, i32* %162, align 8
  %163 = call i32 @isdn_command(%struct.TYPE_17__* %10)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %166, i32* %167, align 8
  %168 = load i32, i32* @ISDN_CMD_SETL2, align 4
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %168, i32* %169, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = shl i32 %176, 8
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %175, %178
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i64 %179, i64* %180, align 8
  %181 = call i32 @isdn_command(%struct.TYPE_17__* %10)
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %184, i32* %185, align 8
  %186 = load i32, i32* @ISDN_CMD_SETL3, align 4
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %186, i32* %187, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @REG_L3PROT, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 8
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %190, %198
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i64 %199, i64* %200, align 8
  %201 = call i32 @isdn_command(%struct.TYPE_17__* %10)
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i32 %204, i32* %205, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i64 %208, i64* %209, align 8
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, 18
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  store i32 %211, i32* %214, align 8
  %215 = load i32, i32* @CAPI_FACILITY, align 4
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 4
  store i32 %215, i32* %218, align 4
  %219 = load i32, i32* @CAPI_REQ, align 4
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 3
  store i32 %219, i32* %222, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  store i64 %227, i64* %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  store i32 3, i32* %236, align 4
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  store i32 0, i32* %241, align 4
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 3
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  store i32 %243, i32* %248, align 4
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  store i32 5, i32* %253, align 4
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 4
  store i32 0, i32* %258, align 4
  %259 = load i32, i32* %14, align 4
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 5
  store i32 %259, i32* %264, align 4
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 6
  %270 = load i8*, i8** %4, align 8
  %271 = load i32, i32* %14, align 4
  %272 = call i32 @strncpy(i32* %269, i8* %270, i32 %271)
  %273 = load i32, i32* @CAPI_PUT_MESSAGE, align 4
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %273, i32* %274, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 3
  store i32 1, i32* %276, align 4
  %277 = call i32 (...) @isdn_info_update()
  %278 = call i32 @isdn_command(%struct.TYPE_17__* %10)
  %279 = load i32, i32* @ISDN_TIMER_CARRIER, align 4
  %280 = call i32 @isdn_timer_ctrl(i32 %279, i32 1)
  br label %281

281:                                              ; preds = %88, %80
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isdn_calc_usage(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @isdn_get_free_channel(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @isdn_tty_modem_result(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @isdn_info_update(...) #1

declare dso_local i32 @isdn_command(%struct.TYPE_17__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @isdn_map_eaz2msn(i32, i32) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local i32 @isdn_timer_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
