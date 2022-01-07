; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_dial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_dial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i32*, i32*, i64*, i32* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_17__, i32, i64, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }

@ISDN_USAGE_MODEM = common dso_local global i32 0, align 4
@REG_L2PROT = common dso_local global i64 0, align 8
@REG_SI1 = common dso_local global i64 0, align 8
@bit2si = common dso_local global i32* null, align 8
@si2bit = common dso_local global i32* null, align 8
@REG_SI1I = common dso_local global i64 0, align 8
@dev = common dso_local global %struct.TYPE_13__* null, align 8
@REG_L3PROT = common dso_local global i64 0, align 8
@RESULT_NO_DIALTONE = common dso_local global i32 0, align 4
@ISDN_USAGE_OUTGOING = common dso_local global i32 0, align 4
@ISDN_CMD_CLREAZ = common dso_local global i32 0, align 4
@ISDN_CMD_SETEAZ = common dso_local global i32 0, align 4
@ISDN_CMD_SETL2 = common dso_local global i32 0, align 4
@ISDN_CMD_SETL3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@REG_SI2 = common dso_local global i64 0, align 8
@ISDN_CMD_DIAL = common dso_local global i32 0, align 4
@ISDN_TIMER_CARRIER = common dso_local global i32 0, align 4
@ISDN_PROTO_L2_FAX = common dso_local global i32 0, align 4
@ISDN_PROTO_L2_MODEM = common dso_local global i32 0, align 4
@ISDN_PROTO_L2_TRANS = common dso_local global i32 0, align 4
@ISDN_TTY_FAX_CONN_OUT = common dso_local global i32 0, align 4
@ISDN_USAGE_VOICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_18__*, %struct.TYPE_20__*)* @isdn_tty_dial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isdn_tty_dial(i8* %0, %struct.TYPE_18__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %14 = load i32, i32* @ISDN_USAGE_MODEM, align 4
  store i32 %14, i32* %7, align 4
  store i32 7, i32* %8, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @REG_L2PROT, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  store i32 7, i32* %13, align 4
  br label %21

21:                                               ; preds = %42, %3
  %22 = load i32, i32* %13, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @REG_SI1, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load i32*, i32** @bit2si, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %45

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %13, align 4
  br label %21

45:                                               ; preds = %35, %21
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @isdn_calc_usage(i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** @si2bit, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @REG_SI1I, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @spin_lock_irqsave(i32* %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @REG_L3PROT, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @isdn_get_free_channel(i32 %63, i32 %64, i32 %70, i32 -1, i32 -1, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %45
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i32 %80)
  %82 = load i32, i32* @RESULT_NO_DIALTONE, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = call i32 @isdn_tty_modem_result(i32 %82, %struct.TYPE_18__* %83)
  br label %263

85:                                               ; preds = %45
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 4
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 6
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load i32, i32* @ISDN_USAGE_OUTGOING, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %116
  store i32 %124, i32* %122, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 @strcpy(i32 %129, i8* %130)
  %132 = call i32 (...) @isdn_info_update()
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i32 %135)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  store i32 %139, i32* %140, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i64 %143, i64* %144, align 8
  %145 = load i32, i32* @ISDN_CMD_CLREAZ, align 4
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %145, i32* %146, align 8
  %147 = call i32 @isdn_command(%struct.TYPE_19__* %11)
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @isdn_map_eaz2msn(i32 %153, i32 %156)
  %158 = call i32 @strcpy(i32 %150, i8* %157)
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  store i32 %161, i32* %162, align 8
  %163 = load i32, i32* @ISDN_CMD_SETEAZ, align 4
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %163, i32* %164, align 8
  %165 = call i32 @isdn_command(%struct.TYPE_19__* %11)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  store i32 %168, i32* %169, align 8
  %170 = load i32, i32* @ISDN_CMD_SETL2, align 4
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %170, i32* %171, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = shl i32 %178, 8
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %177, %180
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i64 %181, i64* %182, align 8
  %183 = call i32 @isdn_command(%struct.TYPE_19__* %11)
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  store i32 %186, i32* %187, align 8
  %188 = load i32, i32* @ISDN_CMD_SETL3, align 4
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %188, i32* %189, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @REG_L3PROT, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = shl i32 %198, 8
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %192, %200
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i64 %201, i64* %202, align 8
  %203 = call i32 @isdn_command(%struct.TYPE_19__* %11)
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  store i32 %206, i32* %207, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i64 %210, i64* %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load i8*, i8** %4, align 8
  %217 = call i32 @sprintf(i32 %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %216)
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = call i8* @isdn_map_eaz2msn(i32 %224, i32 %227)
  %229 = call i32 @sprintf(i32 %221, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %228)
  %230 = load i32, i32* %8, align 4
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @REG_SI2, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  store i32 %239, i32* %242, align 4
  %243 = load i32, i32* @ISDN_CMD_DIAL, align 4
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %243, i32* %244, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 3
  store i32 1, i32* %246, align 4
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  store i64 0, i64* %249, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dev, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i8*, i8** %4, align 8
  %258 = call i32 @strcpy(i32 %256, i8* %257)
  %259 = call i32 (...) @isdn_info_update()
  %260 = call i32 @isdn_command(%struct.TYPE_19__* %11)
  %261 = load i32, i32* @ISDN_TIMER_CARRIER, align 4
  %262 = call i32 @isdn_timer_ctrl(i32 %261, i32 1)
  br label %263

263:                                              ; preds = %85, %77
  ret void
}

declare dso_local i32 @isdn_calc_usage(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @isdn_get_free_channel(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @isdn_tty_modem_result(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @isdn_info_update(...) #1

declare dso_local i32 @isdn_command(%struct.TYPE_19__*) #1

declare dso_local i8* @isdn_map_eaz2msn(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @isdn_timer_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
