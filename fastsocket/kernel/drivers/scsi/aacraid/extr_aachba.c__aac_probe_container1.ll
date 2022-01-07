; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c__aac_probe_container1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c__aac_probe_container1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.aac_mount = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i64 }
%struct.aac_query_mount = type { i8*, i8*, i8* }

@ST_OK = common dso_local global i64 0, align 8
@CT_NONE = common dso_local global i64 0, align 8
@VM_NameServe64 = common dso_local global i64 0, align 8
@FT_FILESYS = common dso_local global i64 0, align 8
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AAC_OWNER_FIRMWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fib*)* @_aac_probe_container1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_aac_probe_container1(i8* %0, %struct.fib* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.aac_mount*, align 8
  %7 = alloca %struct.aac_query_mount*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fib* %1, %struct.fib** %4, align 8
  %9 = load %struct.fib*, %struct.fib** %4, align 8
  %10 = call i64 @fib_data(%struct.fib* %9)
  %11 = inttoptr i64 %10 to %struct.aac_mount*
  store %struct.aac_mount* %11, %struct.aac_mount** %6, align 8
  %12 = load %struct.aac_mount*, %struct.aac_mount** %6, align 8
  %13 = getelementptr inbounds %struct.aac_mount, %struct.aac_mount* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.aac_mount*, %struct.aac_mount** %6, align 8
  %18 = getelementptr inbounds %struct.aac_mount, %struct.aac_mount* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @le32_to_cpu(i8* %19)
  %21 = load i64, i64* @ST_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %2
  %24 = load %struct.aac_mount*, %struct.aac_mount** %6, align 8
  %25 = getelementptr inbounds %struct.aac_mount, %struct.aac_mount* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @le32_to_cpu(i8* %29)
  %31 = load i64, i64* @CT_NONE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23, %2
  %34 = load i8*, i8** %3, align 8
  %35 = load %struct.fib*, %struct.fib** %4, align 8
  %36 = call i32 @_aac_probe_container2(i8* %34, %struct.fib* %35)
  br label %91

37:                                               ; preds = %23
  %38 = load i8*, i8** %3, align 8
  %39 = bitcast i8* %38 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %39, %struct.scsi_cmnd** %5, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = load %struct.fib*, %struct.fib** %4, align 8
  %42 = call i32 @aac_valid_context(%struct.scsi_cmnd* %40, %struct.fib* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %91

45:                                               ; preds = %37
  %46 = load %struct.fib*, %struct.fib** %4, align 8
  %47 = call i32 @aac_fib_init(%struct.fib* %46)
  %48 = load %struct.fib*, %struct.fib** %4, align 8
  %49 = call i64 @fib_data(%struct.fib* %48)
  %50 = inttoptr i64 %49 to %struct.aac_query_mount*
  store %struct.aac_query_mount* %50, %struct.aac_query_mount** %7, align 8
  %51 = load i64, i64* @VM_NameServe64, align 8
  %52 = call i8* @cpu_to_le32(i64 %51)
  %53 = load %struct.aac_query_mount*, %struct.aac_query_mount** %7, align 8
  %54 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %56 = call i64 @scmd_id(%struct.scsi_cmnd* %55)
  %57 = call i8* @cpu_to_le32(i64 %56)
  %58 = load %struct.aac_query_mount*, %struct.aac_query_mount** %7, align 8
  %59 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* @FT_FILESYS, align 8
  %61 = call i8* @cpu_to_le32(i64 %60)
  %62 = load %struct.aac_query_mount*, %struct.aac_query_mount** %7, align 8
  %63 = getelementptr inbounds %struct.aac_query_mount, %struct.aac_query_mount* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @ContainerCommand, align 4
  %65 = load %struct.fib*, %struct.fib** %4, align 8
  %66 = load i32, i32* @FsaNormal, align 4
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %68 = bitcast %struct.scsi_cmnd* %67 to i8*
  %69 = call i32 @aac_fib_send(i32 %64, %struct.fib* %65, i32 24, i32 %66, i32 0, i32 1, i32 (i8*, %struct.fib*)* @_aac_probe_container2, i8* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @EINPROGRESS, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %45
  %75 = load i32, i32* @AAC_OWNER_FIRMWARE, align 4
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  br label %91

79:                                               ; preds = %45
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i64, i64* @ST_OK, align 8
  %84 = call i8* @cpu_to_le32(i64 %83)
  %85 = load %struct.aac_mount*, %struct.aac_mount** %6, align 8
  %86 = getelementptr inbounds %struct.aac_mount, %struct.aac_mount* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = load %struct.fib*, %struct.fib** %4, align 8
  %89 = call i32 @_aac_probe_container2(i8* %87, %struct.fib* %88)
  br label %90

90:                                               ; preds = %82, %79
  br label %91

91:                                               ; preds = %33, %44, %90, %74
  ret void
}

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i32 @_aac_probe_container2(i8*, %struct.fib*) #1

declare dso_local i32 @aac_valid_context(%struct.scsi_cmnd*, %struct.fib*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32 (i8*, %struct.fib*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
