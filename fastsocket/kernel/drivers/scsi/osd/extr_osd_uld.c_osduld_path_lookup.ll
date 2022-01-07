; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_uld.c_osduld_path_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_uld.c_osduld_path_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_dev = type { %struct.file* }
%struct.file = type { %struct.osd_uld_device*, i32* }
%struct.osd_uld_device = type { %struct.osd_dev }

@.str = private unnamed_addr constant [28 x i8] c"Mount with !path || !*path\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@osd_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.osd_dev* @osduld_path_lookup(i8* %0) #0 {
  %2 = alloca %struct.osd_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.osd_uld_device*, align 8
  %5 = alloca %struct.osd_dev*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10, %1
  %15 = call i32 @OSD_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.osd_dev* @ERR_PTR(i32 %17)
  store %struct.osd_dev* %18, %struct.osd_dev** %2, align 8
  br label %67

19:                                               ; preds = %10
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.osd_dev* @kzalloc(i32 8, i32 %20)
  store %struct.osd_dev* %21, %struct.osd_dev** %5, align 8
  %22 = load %struct.osd_dev*, %struct.osd_dev** %5, align 8
  %23 = icmp ne %struct.osd_dev* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.osd_dev* @ERR_PTR(i32 %26)
  store %struct.osd_dev* %27, %struct.osd_dev** %2, align 8
  br label %67

28:                                               ; preds = %19
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @O_RDWR, align 4
  %31 = call %struct.file* @filp_open(i8* %29, i32 %30, i32 0)
  store %struct.file* %31, %struct.file** %6, align 8
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = call i64 @IS_ERR(%struct.file* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.file*, %struct.file** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.file* %36)
  store i32 %37, i32* %7, align 4
  br label %62

38:                                               ; preds = %28
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, @osd_fops
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %59

46:                                               ; preds = %38
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load %struct.osd_uld_device*, %struct.osd_uld_device** %48, align 8
  store %struct.osd_uld_device* %49, %struct.osd_uld_device** %4, align 8
  %50 = load %struct.osd_dev*, %struct.osd_dev** %5, align 8
  %51 = load %struct.osd_uld_device*, %struct.osd_uld_device** %4, align 8
  %52 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %51, i32 0, i32 0
  %53 = bitcast %struct.osd_dev* %50 to i8*
  %54 = bitcast %struct.osd_dev* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = load %struct.file*, %struct.file** %6, align 8
  %56 = load %struct.osd_dev*, %struct.osd_dev** %5, align 8
  %57 = getelementptr inbounds %struct.osd_dev, %struct.osd_dev* %56, i32 0, i32 0
  store %struct.file* %55, %struct.file** %57, align 8
  %58 = load %struct.osd_dev*, %struct.osd_dev** %5, align 8
  store %struct.osd_dev* %58, %struct.osd_dev** %2, align 8
  br label %67

59:                                               ; preds = %43
  %60 = load %struct.file*, %struct.file** %6, align 8
  %61 = call i32 @fput(%struct.file* %60)
  br label %62

62:                                               ; preds = %59, %35
  %63 = load %struct.osd_dev*, %struct.osd_dev** %5, align 8
  %64 = call i32 @kfree(%struct.osd_dev* %63)
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.osd_dev* @ERR_PTR(i32 %65)
  store %struct.osd_dev* %66, %struct.osd_dev** %2, align 8
  br label %67

67:                                               ; preds = %62, %46, %24, %14
  %68 = load %struct.osd_dev*, %struct.osd_dev** %2, align 8
  ret %struct.osd_dev* %68
}

declare dso_local i32 @OSD_ERR(i8*) #1

declare dso_local %struct.osd_dev* @ERR_PTR(i32) #1

declare dso_local %struct.osd_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.file* @filp_open(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @kfree(%struct.osd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
