; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.vio_device_id = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.srp_target = type { i32, %struct.vio_port*, %struct.Scsi_Host* }
%struct.vio_port = type { i32, i32, i32, i32, %struct.srp_target*, %struct.vio_dev* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ibmvstgt_sht = common dso_local global i32 0, align 4
@ibmvstgt_transport_template = common dso_local global i32 0, align 4
@INITIAL_SRP_LIMIT = common dso_local global i32 0, align 4
@SRP_MAX_IU_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ibm,my-dma-window\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't get window property %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@handle_crq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*, %struct.vio_device_id*)* @ibmvstgt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvstgt_probe(%struct.vio_dev* %0, %struct.vio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_device_id*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.srp_target*, align 8
  %8 = alloca %struct.vio_port*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %4, align 8
  store %struct.vio_device_id* %1, %struct.vio_device_id** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.vio_port* @kzalloc(i32 32, i32 %14)
  store %struct.vio_port* %15, %struct.vio_port** %8, align 8
  %16 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %17 = icmp ne %struct.vio_port* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %3, align 4
  br label %120

20:                                               ; preds = %2
  %21 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @ibmvstgt_sht, i32 24)
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %6, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %23 = icmp ne %struct.Scsi_Host* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %116

25:                                               ; preds = %20
  %26 = load i32, i32* @ibmvstgt_transport_template, align 4
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %30 = call %struct.srp_target* @host_to_srp_target(%struct.Scsi_Host* %29)
  store %struct.srp_target* %30, %struct.srp_target** %7, align 8
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %32 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %33 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %32, i32 0, i32 2
  store %struct.Scsi_Host* %31, %struct.Scsi_Host** %33, align 8
  %34 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %35 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %36 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %35, i32 0, i32 5
  store %struct.vio_dev* %34, %struct.vio_dev** %36, align 8
  %37 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %38 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %39 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %38, i32 0, i32 1
  store %struct.vio_port* %37, %struct.vio_port** %39, align 8
  %40 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %41 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %42 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %41, i32 0, i32 4
  store %struct.srp_target* %40, %struct.srp_target** %42, align 8
  %43 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %44 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %45 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %44, i32 0, i32 0
  %46 = load i32, i32* @INITIAL_SRP_LIMIT, align 4
  %47 = load i32, i32* @SRP_MAX_IU_LEN, align 4
  %48 = call i32 @srp_target_alloc(%struct.srp_target* %43, i32* %45, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %25
  br label %113

52:                                               ; preds = %25
  %53 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %54 = call i64 @vio_get_attribute(%struct.vio_dev* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %10)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 40
  br i1 %60, label %61, label %66

61:                                               ; preds = %58, %52
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @eprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %110

66:                                               ; preds = %58
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %71 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %76 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %78 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %77, i32 0, i32 3
  %79 = load i32, i32* @handle_crq, align 4
  %80 = call i32 @INIT_WORK(i32* %78, i32 %79)
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %82 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %83 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @scsi_add_host(%struct.Scsi_Host* %81, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %66
  br label %110

89:                                               ; preds = %66
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %91 = call i32 @scsi_tgt_alloc_queue(%struct.Scsi_Host* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %107

95:                                               ; preds = %89
  %96 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %97 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %96, i32 0, i32 2
  %98 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %99 = call i32 @crq_queue_create(i32* %97, %struct.srp_target* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %104

103:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %120

104:                                              ; preds = %102
  %105 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %106 = call i32 @scsi_tgt_free_queue(%struct.Scsi_Host* %105)
  br label %107

107:                                              ; preds = %104, %94
  %108 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %109 = call i32 @scsi_remove_host(%struct.Scsi_Host* %108)
  br label %110

110:                                              ; preds = %107, %88, %61
  %111 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %112 = call i32 @srp_target_free(%struct.srp_target* %111)
  br label %113

113:                                              ; preds = %110, %51
  %114 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %115 = call i32 @scsi_host_put(%struct.Scsi_Host* %114)
  br label %116

116:                                              ; preds = %113, %24
  %117 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %118 = call i32 @kfree(%struct.vio_port* %117)
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %103, %18
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.vio_port* @kzalloc(i32, i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.srp_target* @host_to_srp_target(%struct.Scsi_Host*) #1

declare dso_local i32 @srp_target_alloc(%struct.srp_target*, i32*, i32, i32) #1

declare dso_local i64 @vio_get_attribute(%struct.vio_dev*, i8*, i32*) #1

declare dso_local i32 @eprintk(i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scsi_tgt_alloc_queue(%struct.Scsi_Host*) #1

declare dso_local i32 @crq_queue_create(i32*, %struct.srp_target*) #1

declare dso_local i32 @scsi_tgt_free_queue(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @srp_target_free(%struct.srp_target*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @kfree(%struct.vio_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
