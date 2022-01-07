; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_scsi.c_i2o_scsi_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_scsi.c_i2o_scsi_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2o_message = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"NULL reply received!\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Completed %ld\0A\00", align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"SCSI error %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*, i32, %struct.i2o_message*)* @i2o_scsi_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_scsi_reply(%struct.i2o_controller* %0, i32 %1, %struct.i2o_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2o_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2o_message*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.i2o_controller* %0, %struct.i2o_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2o_message* %2, %struct.i2o_message** %7, align 8
  %11 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %12 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %13 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = call %struct.scsi_cmnd* @i2o_cntxt_list_get(%struct.i2o_controller* %11, i32 %17)
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %8, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %20 = icmp ne %struct.scsi_cmnd* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 (i8*, ...) @osm_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %77

27:                                               ; preds = %3
  %28 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %29 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @osm_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %27
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %51 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %55 = call i32 @min(i32 %54, i32 40)
  %56 = call i32 @memcpy(i32 %49, i32* %53, i32 %55)
  br label %57

57:                                               ; preds = %46, %27
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i8*, ...) @osm_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %67 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store %struct.device* %69, %struct.device** %10, align 8
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %71 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %70)
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 1
  %74 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %73, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %76 = call i32 %74(%struct.scsi_cmnd* %75)
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %65, %25
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.scsi_cmnd* @i2o_cntxt_list_get(%struct.i2o_controller*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @osm_err(i8*, ...) #1

declare dso_local i32 @osm_debug(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
