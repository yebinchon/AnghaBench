; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)*, %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_24__ = type { i64*, i32, %struct.TYPE_15__, %struct.TYPE_16__, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32*, %struct.scsi_cmnd* }

@.str = private unnamed_addr constant [10 x i8] c"ips_queue\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@IPS_MAX_IOCTL_QUEUE = common dso_local global i64 0, align 8
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@IPS_MAX_QUEUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"(%s%d): ips_queue: cmd 0x%X (%d %d %d)\00", align 1
@ips_name = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@IPS_CMD_RESET_CHANNEL = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPS_INTR_IORL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @ips_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_queue(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %9 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1)
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %6, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %19 = icmp ne %struct.TYPE_24__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %193

21:                                               ; preds = %2
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @DID_ERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %193

28:                                               ; preds = %21
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = call i64 @ips_is_passthru(%struct.scsi_cmnd* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPS_MAX_IOCTL_QUEUE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i32, i32* @DID_BUS_BUSY, align 4
  %41 = shl i32 %40, 16
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %44(%struct.scsi_cmnd* %45)
  store i32 0, i32* %3, align 4
  br label %193

46:                                               ; preds = %32
  br label %62

47:                                               ; preds = %28
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPS_MAX_QUEUE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i32, i32* @DID_BUS_BUSY, align 4
  %56 = shl i32 %55, 16
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %59(%struct.scsi_cmnd* %60)
  store i32 0, i32* %3, align 4
  br label %193

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %46
  %63 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %63, void (%struct.scsi_cmnd*)** %65, align 8
  %66 = load i32, i32* @ips_name, align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 2
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 2
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 2
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @DEBUG_VAR(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %74, i32 %79, i32 %84, i32 %89)
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %92 = call i64 @scmd_channel(%struct.scsi_cmnd* %91)
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %62
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %96 = call i64 @scmd_id(%struct.scsi_cmnd* %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %101 = call i64 @scmd_channel(%struct.scsi_cmnd* %100)
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %96, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %94
  %106 = load i32, i32* @DID_NO_CONNECT, align 4
  %107 = shl i32 %106, 16
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %110(%struct.scsi_cmnd* %111)
  store i32 0, i32* %3, align 4
  br label %193

112:                                              ; preds = %94, %62
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %114 = call i64 @ips_is_passthru(%struct.scsi_cmnd* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %184

116:                                              ; preds = %112
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %118 = call i64 @scsi_sglist(%struct.scsi_cmnd* %117)
  %119 = inttoptr i64 %118 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %119, %struct.TYPE_23__** %7, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IPS_CMD_RESET_CHANNEL, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %162

128:                                              ; preds = %116
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %162

136:                                              ; preds = %128
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load i32, i32* @DID_BUS_BUSY, align 4
  %144 = shl i32 %143, 16
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %146 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %148 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %147(%struct.scsi_cmnd* %148)
  store i32 0, i32* %3, align 4
  br label %193

149:                                              ; preds = %136
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 1
  store i32 1, i32* %151, align 8
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %153 = call i32 @__ips_eh_reset(%struct.scsi_cmnd* %152)
  %154 = load i32, i32* @DID_OK, align 4
  %155 = shl i32 %154, 16
  %156 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %157 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %159 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %158, i32 0, i32 1
  %160 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %159, align 8
  %161 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %160(%struct.scsi_cmnd* %161)
  store i32 0, i32* %3, align 4
  br label %193

162:                                              ; preds = %128, %116
  %163 = load i32, i32* @GFP_ATOMIC, align 4
  %164 = call %struct.TYPE_25__* @kmalloc(i32 16, i32 %163)
  store %struct.TYPE_25__* %164, %struct.TYPE_25__** %8, align 8
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %166 = icmp ne %struct.TYPE_25__* %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* @DID_ERROR, align 4
  %169 = shl i32 %168, 16
  %170 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %171 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %173 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %172(%struct.scsi_cmnd* %173)
  store i32 0, i32* %3, align 4
  br label %193

174:                                              ; preds = %162
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 1
  store %struct.scsi_cmnd* %175, %struct.scsi_cmnd** %177, align 8
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  store i32* null, i32** %179, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %183 = call i32 @ips_putq_copp_tail(%struct.TYPE_16__* %181, %struct.TYPE_25__* %182)
  br label %189

184:                                              ; preds = %112
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 2
  %187 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %188 = call i32 @ips_putq_wait_tail(%struct.TYPE_15__* %186, %struct.scsi_cmnd* %187)
  br label %189

189:                                              ; preds = %184, %174
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %191 = load i32, i32* @IPS_INTR_IORL, align 4
  %192 = call i32 @ips_next(%struct.TYPE_24__* %190, i32 %191)
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %189, %167, %149, %142, %105, %54, %39, %26, %20
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i64 @ips_is_passthru(%struct.scsi_cmnd*) #1

declare dso_local i32 @DEBUG_VAR(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @__ips_eh_reset(%struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_25__* @kmalloc(i32, i32) #1

declare dso_local i32 @ips_putq_copp_tail(%struct.TYPE_16__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ips_putq_wait_tail(%struct.TYPE_15__*, %struct.scsi_cmnd*) #1

declare dso_local i32 @ips_next(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
