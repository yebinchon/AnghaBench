; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_handle_crq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_handle_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 (%struct.ibmvscsi_host_data*, i32, i32)* }
%struct.ibmvscsi_host_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.viosrp_crq = type { i32, i32, i64, i64 }
%struct.srp_event_struct = type { %struct.TYPE_13__*, i32, i32 (%struct.srp_event_struct*)*, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"partner initialized\0A\00", align 1
@ibmvscsi_ops = common dso_local global %struct.TYPE_14__* null, align 8
@IBMVSCSI_CRQ_INIT_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to send init rsp. rc=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"partner initialization complete\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unknown crq message type: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Re-enabling adapter!\0A\00", align 1
@DID_REQUEUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Virtual adapter failed rc %d!\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"got an invalid message type 0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"returned correlation_token 0x%p is invalid!\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"received duplicate correlation_token 0x%p!\0A\00", align 1
@VIOSRP_SRP_FORMAT = common dso_local global i64 0, align 8
@VIOSRP_OK = common dso_local global i64 0, align 8
@VIOSRP_OK2 = common dso_local global i64 0, align 8
@DID_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"returned done() is NULL; not running it!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibmvscsi_handle_crq(%struct.viosrp_crq* %0, %struct.ibmvscsi_host_data* %1) #0 {
  %3 = alloca %struct.viosrp_crq*, align 8
  %4 = alloca %struct.ibmvscsi_host_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.srp_event_struct*, align 8
  store %struct.viosrp_crq* %0, %struct.viosrp_crq** %3, align 8
  store %struct.ibmvscsi_host_data* %1, %struct.ibmvscsi_host_data** %4, align 8
  %8 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %9 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.srp_event_struct*
  store %struct.srp_event_struct* %11, %struct.srp_event_struct** %7, align 8
  %12 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %13 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %96 [
    i32 192, label %15
    i32 255, label %57
    i32 128, label %95
  ]

15:                                               ; preds = %2
  %16 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %17 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %48 [
    i32 1, label %19
    i32 2, label %41
  ]

19:                                               ; preds = %15
  %20 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %21 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ibmvscsi_ops, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64 (%struct.ibmvscsi_host_data*, i32, i32)*, i64 (%struct.ibmvscsi_host_data*, i32, i32)** %25, align 8
  %27 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %28 = load i32, i32* @IBMVSCSI_CRQ_INIT_COMPLETE, align 4
  %29 = call i64 %26(%struct.ibmvscsi_host_data* %27, i32 %28, i32 0)
  store i64 %29, i64* %5, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %33 = call i32 @init_adapter(%struct.ibmvscsi_host_data* %32)
  br label %40

34:                                               ; preds = %19
  %35 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %36 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %34, %31
  br label %56

41:                                               ; preds = %15
  %42 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %43 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_info(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %47 = call i32 @init_adapter(%struct.ibmvscsi_host_data* %46)
  br label %56

48:                                               ; preds = %15
  %49 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %50 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %53 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %41, %40
  br label %222

57:                                               ; preds = %2
  %58 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %59 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @scsi_block_requests(i32 %60)
  %62 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %63 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %62, i32 0, i32 3
  %64 = call i32 @atomic_set(i32* %63, i32 0)
  %65 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %66 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 6
  br i1 %68, label %69, label %84

69:                                               ; preds = %57
  %70 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %71 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_info(i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %75 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %77 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %79 = load i32, i32* @DID_REQUEUE, align 4
  %80 = call i32 @purge_requests(%struct.ibmvscsi_host_data* %78, i32 %79)
  %81 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %82 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %81, i32 0, i32 5
  %83 = call i32 @wake_up(i32* %82)
  br label %94

84:                                               ; preds = %57
  %85 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %86 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %89 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %93 = call i32 @ibmvscsi_reset_host(%struct.ibmvscsi_host_data* %92)
  br label %94

94:                                               ; preds = %84, %69
  br label %222

95:                                               ; preds = %2
  br label %104

96:                                               ; preds = %2
  %97 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %98 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %101 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  br label %222

104:                                              ; preds = %95
  %105 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %106 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %105, i32 0, i32 4
  %107 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %108 = call i32 @valid_event_struct(i32* %106, %struct.srp_event_struct* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %104
  %111 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %112 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %115 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %117)
  br label %222

119:                                              ; preds = %104
  %120 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %121 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %120, i32 0, i32 6
  %122 = call i64 @atomic_read(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %126 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %129 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 (i32, i8*, ...) @dev_err(i32 %127, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %131)
  br label %222

133:                                              ; preds = %119
  %134 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %135 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @VIOSRP_SRP_FORMAT, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %142 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %141, i32 0, i32 5
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %149 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %148, i32 0, i32 3
  %150 = call i32 @atomic_add(i32 %147, i32* %149)
  br label %151

151:                                              ; preds = %140, %133
  %152 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %153 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %152, i32 0, i32 4
  %154 = call i32 @del_timer(i32* %153)
  %155 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %156 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @VIOSRP_OK, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %151
  %161 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %162 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @VIOSRP_OK2, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %160
  %167 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %168 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %167, i32 0, i32 3
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = icmp ne %struct.TYPE_11__* %169, null
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load i32, i32* @DID_ERROR, align 4
  %173 = shl i32 %172, 16
  %174 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %175 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %174, i32 0, i32 3
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %171, %166, %160, %151
  %179 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %180 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %179, i32 0, i32 2
  %181 = load i32 (%struct.srp_event_struct*)*, i32 (%struct.srp_event_struct*)** %180, align 8
  %182 = icmp ne i32 (%struct.srp_event_struct*)* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %185 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %184, i32 0, i32 2
  %186 = load i32 (%struct.srp_event_struct*)*, i32 (%struct.srp_event_struct*)** %185, align 8
  %187 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %188 = call i32 %186(%struct.srp_event_struct* %187)
  br label %194

189:                                              ; preds = %178
  %190 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %191 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32, i8*, ...) @dev_err(i32 %192, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %194

194:                                              ; preds = %189, %183
  %195 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %196 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %195, i32 0, i32 0
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i64, i64* %6, align 8
  %203 = call i32 @spin_lock_irqsave(i32 %201, i64 %202)
  %204 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %205 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %204, i32 0, i32 1
  %206 = call i32 @list_del(i32* %205)
  %207 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %208 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %207, i32 0, i32 0
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %212 = call i32 @free_event_struct(i32* %210, %struct.srp_event_struct* %211)
  %213 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %214 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %213, i32 0, i32 0
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i64, i64* %6, align 8
  %221 = call i32 @spin_unlock_irqrestore(i32 %219, i64 %220)
  br label %222

222:                                              ; preds = %194, %124, %110, %96, %94, %56
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @init_adapter(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @purge_requests(%struct.ibmvscsi_host_data*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ibmvscsi_reset_host(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @valid_event_struct(i32*, %struct.srp_event_struct*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_event_struct(i32*, %struct.srp_event_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
