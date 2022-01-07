; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_initiator.c_osd_sec_init_nosec_doall_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_initiator.c_osd_sec_init_nosec_doall_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_obj_id = type { i64, i64 }
%struct.osd_capability = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i64 }
%struct.TYPE_6__ = type { i8*, i8*, i32, i64, i32 }

@OSD_SEC_OBJ_COLLECTION = common dso_local global i8* null, align 8
@OSD_SEC_OBJ_DESC_OBJ = common dso_local global i8* null, align 8
@OSD_SEC_OBJ_DESC_COL = common dso_local global i8* null, align 8
@OSD_SEC_OBJ_USER = common dso_local global i8* null, align 8
@OSD_SEC_OBJ_PARTITION = common dso_local global i8* null, align 8
@OSD_SEC_OBJ_ROOT = common dso_local global i8* null, align 8
@OSD_SEC_OBJ_DESC_PAR = common dso_local global i8* null, align 8
@OSD_SEC_CAP_FORMAT_VER1 = common dso_local global i32 0, align 4
@OSD_SEC_NOSEC = common dso_local global i32 0, align 4
@OSD_SEC_CAP_V1_ALL_CAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_sec_init_nosec_doall_caps(i8* %0, %struct.osd_obj_id* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.osd_obj_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.osd_capability*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.osd_obj_id* %1, %struct.osd_obj_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.osd_capability*
  store %struct.osd_capability* %13, %struct.osd_capability** %9, align 8
  %14 = load %struct.osd_obj_id*, %struct.osd_obj_id** %6, align 8
  %15 = getelementptr inbounds %struct.osd_obj_id, %struct.osd_obj_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @likely(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i8*, i8** @OSD_SEC_OBJ_COLLECTION, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** @OSD_SEC_OBJ_DESC_OBJ, align 8
  br label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** @OSD_SEC_OBJ_DESC_COL, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i8* [ %28, %27 ], [ %30, %29 ]
  store i8* %32, i8** %11, align 8
  br label %36

33:                                               ; preds = %19
  %34 = load i8*, i8** @OSD_SEC_OBJ_USER, align 8
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** @OSD_SEC_OBJ_DESC_OBJ, align 8
  store i8* %35, i8** %11, align 8
  br label %36

36:                                               ; preds = %33, %31
  %37 = load %struct.osd_obj_id*, %struct.osd_obj_id** %6, align 8
  %38 = getelementptr inbounds %struct.osd_obj_id, %struct.osd_obj_id* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  br label %56

44:                                               ; preds = %4
  %45 = load %struct.osd_obj_id*, %struct.osd_obj_id** %6, align 8
  %46 = getelementptr inbounds %struct.osd_obj_id, %struct.osd_obj_id* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i8*, i8** @OSD_SEC_OBJ_PARTITION, align 8
  br label %53

51:                                               ; preds = %44
  %52 = load i8*, i8** @OSD_SEC_OBJ_ROOT, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i8* [ %50, %49 ], [ %52, %51 ]
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** @OSD_SEC_OBJ_DESC_PAR, align 8
  store i8* %55, i8** %11, align 8
  br label %56

56:                                               ; preds = %53, %36
  %57 = load %struct.osd_capability*, %struct.osd_capability** %9, align 8
  %58 = call i32 @memset(%struct.osd_capability* %57, i32 0, i32 64)
  %59 = load i32, i32* @OSD_SEC_CAP_FORMAT_VER1, align 4
  %60 = load %struct.osd_capability*, %struct.osd_capability** %9, align 8
  %61 = getelementptr inbounds %struct.osd_capability, %struct.osd_capability* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 8
  %63 = load %struct.osd_capability*, %struct.osd_capability** %9, align 8
  %64 = getelementptr inbounds %struct.osd_capability, %struct.osd_capability* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @OSD_SEC_NOSEC, align 4
  %67 = load %struct.osd_capability*, %struct.osd_capability** %9, align 8
  %68 = getelementptr inbounds %struct.osd_capability, %struct.osd_capability* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load %struct.osd_capability*, %struct.osd_capability** %9, align 8
  %72 = getelementptr inbounds %struct.osd_capability, %struct.osd_capability* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.osd_capability*, %struct.osd_capability** %9, align 8
  %75 = getelementptr inbounds %struct.osd_capability, %struct.osd_capability* %74, i32 0, i32 1
  %76 = load i32, i32* @OSD_SEC_CAP_V1_ALL_CAPS, align 4
  %77 = call i32 @osd_sec_set_caps(%struct.TYPE_6__* %75, i32 %76)
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.osd_capability*, %struct.osd_capability** %9, align 8
  %80 = getelementptr inbounds %struct.osd_capability, %struct.osd_capability* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.osd_capability*, %struct.osd_capability** %9, align 8
  %83 = getelementptr inbounds %struct.osd_capability, %struct.osd_capability* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.osd_obj_id*, %struct.osd_obj_id** %6, align 8
  %87 = getelementptr inbounds %struct.osd_obj_id, %struct.osd_obj_id* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @cpu_to_be64(i64 %88)
  %90 = load %struct.osd_capability*, %struct.osd_capability** %9, align 8
  %91 = getelementptr inbounds %struct.osd_capability, %struct.osd_capability* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i8* %89, i8** %93, align 8
  %94 = load %struct.osd_obj_id*, %struct.osd_obj_id** %6, align 8
  %95 = getelementptr inbounds %struct.osd_obj_id, %struct.osd_obj_id* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @cpu_to_be64(i64 %96)
  %98 = load %struct.osd_capability*, %struct.osd_capability** %9, align 8
  %99 = getelementptr inbounds %struct.osd_capability, %struct.osd_capability* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i8* %97, i8** %101, align 8
  ret void
}

declare dso_local i64 @likely(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(%struct.osd_capability*, i32, i32) #1

declare dso_local i32 @osd_sec_set_caps(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
