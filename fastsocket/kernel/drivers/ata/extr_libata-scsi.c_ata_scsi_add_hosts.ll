; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_add_hosts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_add_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.ata_port** }
%struct.ata_port = type { %struct.Scsi_Host*, %struct.TYPE_2__*, i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_host_template = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ata_scsi_transport_template = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_scsi_add_hosts(%struct.ata_host* %0, %struct.scsi_host_template* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.scsi_host_template*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %4, align 8
  store %struct.scsi_host_template* %1, %struct.scsi_host_template** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %72, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %14 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %11
  %18 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %19 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %18, i32 0, i32 1
  %20 = load %struct.ata_port**, %struct.ata_port*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %20, i64 %22
  %24 = load %struct.ata_port*, %struct.ata_port** %23, align 8
  store %struct.ata_port* %24, %struct.ata_port** %8, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %28 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %27, i32 8)
  store %struct.Scsi_Host* %28, %struct.Scsi_Host** %9, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %30 = icmp ne %struct.Scsi_Host* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %17
  br label %87

32:                                               ; preds = %17
  %33 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = bitcast i32* %37 to %struct.ata_port**
  store %struct.ata_port* %33, %struct.ata_port** %38, align 8
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %40 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 0
  store %struct.Scsi_Host* %39, %struct.Scsi_Host** %41, align 8
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 6
  store i32* @ata_scsi_transport_template, i32** %43, align 8
  %44 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %45 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 0
  store i32 16, i32* %50, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %54 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 3
  store i32 16, i32* %56, align 4
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %58 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %57, i32 0, i32 4
  store i32 1, i32* %58, align 8
  %59 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %60 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %59, i32 0, i32 0
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %60, align 8
  %62 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %63 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @scsi_add_host(%struct.Scsi_Host* %61, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %32
  br label %76

71:                                               ; preds = %32
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %11

75:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %108

76:                                               ; preds = %70
  %77 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %78 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %77, i32 0, i32 1
  %79 = load %struct.ata_port**, %struct.ata_port*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %79, i64 %81
  %83 = load %struct.ata_port*, %struct.ata_port** %82, align 8
  %84 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %83, i32 0, i32 0
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %84, align 8
  %86 = call i32 @scsi_host_put(%struct.Scsi_Host* %85)
  br label %87

87:                                               ; preds = %76, %31
  br label %88

88:                                               ; preds = %92, %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %6, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %94 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %93, i32 0, i32 1
  %95 = load %struct.ata_port**, %struct.ata_port*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %95, i64 %97
  %99 = load %struct.ata_port*, %struct.ata_port** %98, align 8
  %100 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %99, i32 0, i32 0
  %101 = load %struct.Scsi_Host*, %struct.Scsi_Host** %100, align 8
  store %struct.Scsi_Host* %101, %struct.Scsi_Host** %10, align 8
  %102 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %103 = call i32 @scsi_remove_host(%struct.Scsi_Host* %102)
  %104 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %105 = call i32 @scsi_host_put(%struct.Scsi_Host* %104)
  br label %88

106:                                              ; preds = %88
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %75
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
