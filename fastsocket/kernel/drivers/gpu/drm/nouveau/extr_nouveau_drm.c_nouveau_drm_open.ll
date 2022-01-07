; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.drm_file = type { i32, %struct.nouveau_cli* }
%struct.nouveau_cli = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@NV_50 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @nouveau_drm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_drm_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_cli*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %17)
  store %struct.nouveau_drm* %18, %struct.nouveau_drm** %7, align 8
  %19 = load i32, i32* @TASK_COMM_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @current, align 4
  %24 = call i32 @get_task_comm(i8* %22, i32 %23)
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %26 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %27 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snprintf(i8* %25, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %32 = bitcast %struct.nouveau_cli** %8 to i8**
  %33 = call i32 @nouveau_cli_create(%struct.pci_dev* %30, i8* %31, i32 8, i8** %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %80

38:                                               ; preds = %2
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %40 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_7__* @nv_device(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NV_50, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %38
  %48 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %49 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_7__* @nv_device(i32 %50)
  %52 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %53 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @nouveau_vm_new(%struct.TYPE_7__* %51, i32 0, i64 1099511627776, i32 4096, i32* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %60 = call i32 @nouveau_cli_destroy(%struct.nouveau_cli* %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %80

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %38
  %64 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %65 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %66 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %65, i32 0, i32 1
  store %struct.nouveau_cli* %64, %struct.nouveau_cli** %66, align 8
  %67 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %68 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %72 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %71, i32 0, i32 0
  %73 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %74 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %73, i32 0, i32 1
  %75 = call i32 @list_add(i32* %72, i32* %74)
  %76 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %77 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %80

80:                                               ; preds = %63, %58, %36
  %81 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_task_comm(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @nouveau_cli_create(%struct.pci_dev*, i8*, i32, i8**) #1

declare dso_local %struct.TYPE_7__* @nv_device(i32) #1

declare dso_local i32 @nouveau_vm_new(%struct.TYPE_7__*, i32, i64, i32, i32*) #1

declare dso_local i32 @nouveau_cli_destroy(%struct.nouveau_cli*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
