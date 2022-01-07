; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c__aac_probe_container.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c__aac_probe_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.fib = type { i32 }
%struct.aac_query_mount = type { i8*, i8*, i8* }
%struct.fsa_dev_info = type { i32 }
%struct.aac_dev = type { %struct.fsa_dev_info* }

@ENOMEM = common dso_local global i32 0, align 4
@VM_NameServe = common dso_local global i32 0, align 4
@FT_FILESYS = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@_aac_probe_container1 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AAC_OWNER_FIRMWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32 (%struct.scsi_cmnd*)*)* @_aac_probe_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_aac_probe_container(%struct.scsi_cmnd* %0, i32 (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32 (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.fib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aac_query_mount*, align 8
  %9 = alloca %struct.fsa_dev_info*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 (%struct.scsi_cmnd*)* %1, i32 (%struct.scsi_cmnd*)** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.aac_dev*
  %20 = call %struct.fib* @aac_fib_alloc(%struct.aac_dev* %19)
  store %struct.fib* %20, %struct.fib** %6, align 8
  %21 = icmp ne %struct.fib* %20, null
  br i1 %21, label %22, label %74

22:                                               ; preds = %2
  %23 = load %struct.fib*, %struct.fib** %6, align 8
  %24 = call i32 @aac_fib_init(%struct.fib* %23)
  %25 = load %struct.fib*, %struct.fib** %6, align 8
  %26 = call i64 @fib_data(%struct.fib* %25)
  %27 = inttoptr i64 %26 to %struct.aac_query_mount*
  store %struct.aac_query_mount* %27, %struct.aac_query_mount** %8, align 8
  %28 = load i32, i32* @VM_NameServe, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.aac_query_mount*, %struct.aac_query_mount** %8, align 8
  %31 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = call i32 @scmd_id(%struct.scsi_cmnd* %32)
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.aac_query_mount*, %struct.aac_query_mount** %8, align 8
  %36 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @FT_FILESYS, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.aac_query_mount*, %struct.aac_query_mount** %8, align 8
  %40 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %5, align 8
  %42 = bitcast i32 (%struct.scsi_cmnd*)* %41 to i8*
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* @ContainerCommand, align 4
  %47 = load %struct.fib*, %struct.fib** %6, align 8
  %48 = load i32, i32* @FsaNormal, align 4
  %49 = load i32, i32* @_aac_probe_container1, align 4
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = bitcast %struct.scsi_cmnd* %50 to i8*
  %52 = call i32 @aac_fib_send(i32 %46, %struct.fib* %47, i32 24, i32 %48, i32 0, i32 1, i32 %49, i8* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @EINPROGRESS, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %22
  %58 = load i32, i32* @AAC_OWNER_FIRMWARE, align 4
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %111

62:                                               ; preds = %22
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i8* null, i8** %68, align 8
  %69 = load %struct.fib*, %struct.fib** %6, align 8
  %70 = call i32 @aac_fib_complete(%struct.fib* %69)
  %71 = load %struct.fib*, %struct.fib** %6, align 8
  %72 = call i32 @aac_fib_free(%struct.fib* %71)
  br label %73

73:                                               ; preds = %65, %62
  br label %74

74:                                               ; preds = %73, %2
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %74
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.aac_dev*
  %86 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %85, i32 0, i32 0
  %87 = load %struct.fsa_dev_info*, %struct.fsa_dev_info** %86, align 8
  store %struct.fsa_dev_info* %87, %struct.fsa_dev_info** %9, align 8
  %88 = load %struct.fsa_dev_info*, %struct.fsa_dev_info** %9, align 8
  %89 = icmp ne %struct.fsa_dev_info* %88, null
  br i1 %89, label %90, label %108

90:                                               ; preds = %77
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %92 = call i32 @scmd_id(%struct.scsi_cmnd* %91)
  %93 = load %struct.fsa_dev_info*, %struct.fsa_dev_info** %9, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.fsa_dev_info, %struct.fsa_dev_info* %93, i64 %94
  store %struct.fsa_dev_info* %95, %struct.fsa_dev_info** %9, align 8
  %96 = load %struct.fsa_dev_info*, %struct.fsa_dev_info** %9, align 8
  %97 = getelementptr inbounds %struct.fsa_dev_info, %struct.fsa_dev_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load %struct.fsa_dev_info*, %struct.fsa_dev_info** %9, align 8
  %103 = getelementptr inbounds %struct.fsa_dev_info, %struct.fsa_dev_info* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %5, align 8
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %106 = call i32 %104(%struct.scsi_cmnd* %105)
  store i32 %106, i32* %3, align 4
  br label %111

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %77
  br label %109

109:                                              ; preds = %108, %74
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %101, %57
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.fib* @aac_fib_alloc(%struct.aac_dev*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
