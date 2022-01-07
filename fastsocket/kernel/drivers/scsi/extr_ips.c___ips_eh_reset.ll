; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c___ips_eh_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c___ips_eh_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, {}*, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_37__ = type { i64, i32, i32, i64, i64*, i32, i32, i32, i32, %struct.TYPE_35__*, i8*, i32, i32, %struct.TYPE_34__, %struct.TYPE_36__*, %struct.TYPE_29__ }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_34__ = type { i32 (%struct.TYPE_37__*)* }
%struct.TYPE_36__ = type { %struct.TYPE_28__*, %struct.TYPE_33__, i8**, i32 }
%struct.TYPE_28__ = type { i32, i32 (%struct.TYPE_28__*)* }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, i64, i64, i64, i32, i32, i8* }
%struct.TYPE_29__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_38__*, %struct.scsi_cmnd* }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"ips_eh_reset\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Reset called with NULL scsi command\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Reset called with NULL ha struct\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@ips_cmd_timeout = common dso_local global i32 0, align 4
@IPS_CMD_FLUSH = common dso_local global i8* null, align 8
@IPS_NORM_STATE = common dso_local global i32 0, align 4
@IPS_INTR_IORL = common dso_local global i32 0, align 4
@IPS_SUCCESS = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Reset Request - Flushed Cache\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Resetting controller.\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Controller reset failed - controller now offline.\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"(%s%d) Failing active commands\00", align 1
@ips_name = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"(%s%d) Failing pending commands\00", align 1
@FALSE = common dso_local global i8* null, align 8
@DID_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @__ips_eh_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ips_eh_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca %struct.timeval, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %12 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = icmp ne %struct.scsi_cmnd* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @FAILED, align 4
  store i32 %17, i32* %2, align 4
  br label %374

18:                                               ; preds = %1
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %26, %struct.TYPE_37__** %6, align 8
  %27 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %28 = icmp ne %struct.TYPE_37__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @FAILED, align 4
  store i32 %31, i32* %2, align 4
  br label %374

32:                                               ; preds = %18
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 10
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @FAILED, align 4
  store i32 %38, i32* %2, align 4
  br label %374

39:                                               ; preds = %32
  %40 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %40, i32 0, i32 15
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_38__*, %struct.TYPE_38__** %42, align 8
  store %struct.TYPE_38__* %43, %struct.TYPE_38__** %8, align 8
  br label %44

44:                                               ; preds = %55, %39
  %45 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %46 = icmp ne %struct.TYPE_38__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %48, i32 0, i32 1
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %49, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %52 = icmp ne %struct.scsi_cmnd* %50, %51
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i1 [ false, %44 ], [ %52, %47 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_38__*, %struct.TYPE_38__** %57, align 8
  store %struct.TYPE_38__* %58, %struct.TYPE_38__** %8, align 8
  br label %44

59:                                               ; preds = %53
  %60 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %61 = icmp ne %struct.TYPE_38__* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %63, i32 0, i32 15
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %66 = call i32 @ips_removeq_copp(%struct.TYPE_29__* %64, %struct.TYPE_38__* %65)
  %67 = load i32, i32* @SUCCESS, align 4
  store i32 %67, i32* %2, align 4
  br label %374

68:                                               ; preds = %59
  %69 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %69, i32 0, i32 11
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %72 = call i64 @ips_removeq_wait(i32* %70, %struct.scsi_cmnd* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @SUCCESS, align 4
  store i32 %75, i32* %2, align 4
  br label %374

76:                                               ; preds = %68
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %151

81:                                               ; preds = %76
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %82, i32 0, i32 14
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %83, align 8
  %85 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i64 %89
  store %struct.TYPE_36__* %90, %struct.TYPE_36__** %7, align 8
  %91 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %93 = call i32 @ips_init_scb(%struct.TYPE_37__* %91, %struct.TYPE_36__* %92)
  %94 = load i32, i32* @ips_cmd_timeout, align 4
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load i8*, i8** @IPS_CMD_FLUSH, align 8
  %98 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %98, i32 0, i32 2
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  store i8* %97, i8** %101, align 8
  %102 = load i8*, i8** @IPS_CMD_FLUSH, align 8
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %105, i32 0, i32 6
  store i8* %102, i8** %106, align 8
  %107 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %108 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %109 = call i32 @IPS_COMMAND_ID(%struct.TYPE_37__* %107, %struct.TYPE_36__* %108)
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 5
  store i32 %109, i32* %113, align 4
  %114 = load i32, i32* @IPS_NORM_STATE, align 4
  %115 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 4
  store i32 %114, i32* %118, align 8
  %119 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %136 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %137 = load i32, i32* @ips_cmd_timeout, align 4
  %138 = load i32, i32* @IPS_INTR_IORL, align 4
  %139 = call i32 @ips_send_wait(%struct.TYPE_37__* %135, %struct.TYPE_36__* %136, i32 %137, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @IPS_SUCCESS, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %81
  %144 = load i32, i32* @KERN_NOTICE, align 4
  %145 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 12
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @IPS_PRINTK(i32 %144, i32 %147, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i32, i32* @SUCCESS, align 4
  store i32 %149, i32* %2, align 4
  br label %374

150:                                              ; preds = %81
  br label %151

151:                                              ; preds = %150, %76
  %152 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* @KERN_NOTICE, align 4
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 12
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @IPS_PRINTK(i32 %154, i32 %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %159 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %159, i32 0, i32 13
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 0
  %162 = load i32 (%struct.TYPE_37__*)*, i32 (%struct.TYPE_37__*)** %161, align 8
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %164 = call i32 %162(%struct.TYPE_37__* %163)
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* %4, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %228, label %167

167:                                              ; preds = %151
  %168 = load i32, i32* @KERN_NOTICE, align 4
  %169 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %169, i32 0, i32 12
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @IPS_PRINTK(i32 %168, i32 %171, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %173 = load i32, i32* @ips_name, align 4
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %183, %167
  %179 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %179, i32 0, i32 5
  %181 = call %struct.TYPE_36__* @ips_removeq_scb_head(i32* %180)
  store %struct.TYPE_36__* %181, %struct.TYPE_36__** %7, align 8
  %182 = icmp ne %struct.TYPE_36__* %181, null
  br i1 %182, label %183, label %202

183:                                              ; preds = %178
  %184 = load i32, i32* @DID_ERROR, align 4
  %185 = shl i32 %184, 16
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 8
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 1
  %194 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %193, align 8
  %195 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %196, align 8
  %198 = call i32 %194(%struct.TYPE_28__* %197)
  %199 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %200 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %201 = call i32 @ips_freescb(%struct.TYPE_37__* %199, %struct.TYPE_36__* %200)
  br label %178

202:                                              ; preds = %178
  %203 = load i32, i32* @ips_name, align 4
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %203, i32 %206)
  br label %208

208:                                              ; preds = %213, %202
  %209 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %209, i32 0, i32 11
  %211 = call %struct.scsi_cmnd* @ips_removeq_wait_head(i32* %210)
  store %struct.scsi_cmnd* %211, %struct.scsi_cmnd** %9, align 8
  %212 = icmp ne %struct.scsi_cmnd* %211, null
  br i1 %212, label %213, label %223

213:                                              ; preds = %208
  %214 = load i32, i32* @DID_ERROR, align 4
  %215 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %216 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %218 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %217, i32 0, i32 1
  %219 = bitcast {}** %218 to i32 (%struct.scsi_cmnd*)**
  %220 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %219, align 8
  %221 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %222 = call i32 %220(%struct.scsi_cmnd* %221)
  br label %208

223:                                              ; preds = %208
  %224 = load i8*, i8** @FALSE, align 8
  %225 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %225, i32 0, i32 10
  store i8* %224, i8** %226, align 8
  %227 = load i32, i32* @FAILED, align 4
  store i32 %227, i32* %2, align 4
  br label %374

228:                                              ; preds = %151
  %229 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %230 = load i32, i32* @IPS_INTR_IORL, align 4
  %231 = call i32 @ips_clear_adapter(%struct.TYPE_37__* %229, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %295, label %233

233:                                              ; preds = %228
  %234 = load i32, i32* @KERN_NOTICE, align 4
  %235 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %235, i32 0, i32 12
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @IPS_PRINTK(i32 %234, i32 %237, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %239 = load i32, i32* @ips_name, align 4
  %240 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %239, i32 %242)
  br label %244

244:                                              ; preds = %249, %233
  %245 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %245, i32 0, i32 5
  %247 = call %struct.TYPE_36__* @ips_removeq_scb_head(i32* %246)
  store %struct.TYPE_36__* %247, %struct.TYPE_36__** %7, align 8
  %248 = icmp ne %struct.TYPE_36__* %247, null
  br i1 %248, label %249, label %268

249:                                              ; preds = %244
  %250 = load i32, i32* @DID_ERROR, align 4
  %251 = shl i32 %250, 16
  %252 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 0
  store i32 %251, i32* %255, align 8
  %256 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 1
  %260 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %259, align 8
  %261 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %262, align 8
  %264 = call i32 %260(%struct.TYPE_28__* %263)
  %265 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %266 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %267 = call i32 @ips_freescb(%struct.TYPE_37__* %265, %struct.TYPE_36__* %266)
  br label %244

268:                                              ; preds = %244
  %269 = load i32, i32* @ips_name, align 4
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %269, i32 %272)
  br label %274

274:                                              ; preds = %279, %268
  %275 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %275, i32 0, i32 11
  %277 = call %struct.scsi_cmnd* @ips_removeq_wait_head(i32* %276)
  store %struct.scsi_cmnd* %277, %struct.scsi_cmnd** %10, align 8
  %278 = icmp ne %struct.scsi_cmnd* %277, null
  br i1 %278, label %279, label %290

279:                                              ; preds = %274
  %280 = load i32, i32* @DID_ERROR, align 4
  %281 = shl i32 %280, 16
  %282 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %283 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 8
  %284 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %285 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %284, i32 0, i32 1
  %286 = bitcast {}** %285 to i32 (%struct.scsi_cmnd*)**
  %287 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %286, align 8
  %288 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %289 = call i32 %287(%struct.scsi_cmnd* %288)
  br label %274

290:                                              ; preds = %274
  %291 = load i8*, i8** @FALSE, align 8
  %292 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %292, i32 0, i32 10
  store i8* %291, i8** %293, align 8
  %294 = load i32, i32* @FAILED, align 4
  store i32 %294, i32* %2, align 4
  br label %374

295:                                              ; preds = %228
  %296 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 9
  %298 = load %struct.TYPE_35__*, %struct.TYPE_35__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 3
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @le32_to_cpu(i32 %302)
  %304 = and i32 %303, 3145728
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %319

306:                                              ; preds = %295
  %307 = call i32 @do_gettimeofday(%struct.timeval* %11)
  %308 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %310, i32 0, i32 8
  store i32 %309, i32* %311, align 4
  %312 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %312, i32 0, i32 7
  %314 = load i32, i32* %313, align 8
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %313, align 8
  %316 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %317 = load i32, i32* @IPS_INTR_IORL, align 4
  %318 = call i32 @ips_ffdc_reset(%struct.TYPE_37__* %316, i32 %317)
  br label %319

319:                                              ; preds = %306, %295
  %320 = load i32, i32* @ips_name, align 4
  %321 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %320, i32 %323)
  br label %325

325:                                              ; preds = %330, %319
  %326 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %326, i32 0, i32 5
  %328 = call %struct.TYPE_36__* @ips_removeq_scb_head(i32* %327)
  store %struct.TYPE_36__* %328, %struct.TYPE_36__** %7, align 8
  %329 = icmp ne %struct.TYPE_36__* %328, null
  br i1 %329, label %330, label %349

330:                                              ; preds = %325
  %331 = load i32, i32* @DID_RESET, align 4
  %332 = shl i32 %331, 16
  %333 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_28__*, %struct.TYPE_28__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %335, i32 0, i32 0
  store i32 %332, i32* %336, align 8
  %337 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %339, i32 0, i32 1
  %341 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %340, align 8
  %342 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %343, align 8
  %345 = call i32 %341(%struct.TYPE_28__* %344)
  %346 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %347 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %348 = call i32 @ips_freescb(%struct.TYPE_37__* %346, %struct.TYPE_36__* %347)
  br label %325

349:                                              ; preds = %325
  store i32 1, i32* %5, align 4
  br label %350

350:                                              ; preds = %364, %349
  %351 = load i32, i32* %5, align 4
  %352 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = icmp slt i32 %351, %354
  br i1 %355, label %356, label %367

356:                                              ; preds = %350
  %357 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %357, i32 0, i32 4
  %359 = load i64*, i64** %358, align 8
  %360 = load i32, i32* %5, align 4
  %361 = sub nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %359, i64 %362
  store i64 0, i64* %363, align 8
  br label %364

364:                                              ; preds = %356
  %365 = load i32, i32* %5, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %5, align 4
  br label %350

367:                                              ; preds = %350
  %368 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %368, i32 0, i32 3
  store i64 0, i64* %369, align 8
  %370 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %371 = load i32, i32* @IPS_INTR_IORL, align 4
  %372 = call i32 @ips_next(%struct.TYPE_37__* %370, i32 %371)
  %373 = load i32, i32* @SUCCESS, align 4
  store i32 %373, i32* %2, align 4
  br label %374

374:                                              ; preds = %367, %290, %223, %143, %74, %62, %37, %29, %15
  %375 = load i32, i32* %2, align 4
  ret i32 %375
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @ips_removeq_copp(%struct.TYPE_29__*, %struct.TYPE_38__*) #1

declare dso_local i64 @ips_removeq_wait(i32*, %struct.scsi_cmnd*) #1

declare dso_local i32 @ips_init_scb(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i32 @IPS_COMMAND_ID(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i32 @ips_send_wait(%struct.TYPE_37__*, %struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @IPS_PRINTK(i32, i32, i8*) #1

declare dso_local i32 @DEBUG_VAR(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_36__* @ips_removeq_scb_head(i32*) #1

declare dso_local i32 @ips_freescb(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local %struct.scsi_cmnd* @ips_removeq_wait_head(i32*) #1

declare dso_local i32 @ips_clear_adapter(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @ips_ffdc_reset(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @ips_next(%struct.TYPE_37__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
