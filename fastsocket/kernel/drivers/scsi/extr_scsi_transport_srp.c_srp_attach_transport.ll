; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_srp.c_srp_attach_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_srp.c_srp_attach_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.scsi_transport_template = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i32** }
%struct.srp_function_template = type { i64 }
%struct.srp_internal = type { %struct.scsi_transport_template, %struct.srp_function_template*, %struct.TYPE_6__, i32**, i32** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@srp_tsk_mgmt_response = common dso_local global i32 0, align 4
@srp_it_nexus_response = common dso_local global i32 0, align 4
@srp_host_class = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@srp_host_match = common dso_local global i32 0, align 4
@srp_rport_class = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@srp_rport_match = common dso_local global i32 0, align 4
@dev_attr_port_id = common dso_local global i32 0, align 4
@dev_attr_roles = common dso_local global i32 0, align 4
@dev_attr_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_transport_template* @srp_attach_transport(%struct.srp_function_template* %0) #0 {
  %2 = alloca %struct.scsi_transport_template*, align 8
  %3 = alloca %struct.srp_function_template*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.srp_internal*, align 8
  store %struct.srp_function_template* %0, %struct.srp_function_template** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.srp_internal* @kzalloc(i32 88, i32 %6)
  store %struct.srp_internal* %7, %struct.srp_internal** %5, align 8
  %8 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %9 = icmp ne %struct.srp_internal* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.scsi_transport_template* null, %struct.scsi_transport_template** %2, align 8
  br label %118

11:                                               ; preds = %1
  %12 = load i32, i32* @srp_tsk_mgmt_response, align 4
  %13 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %14 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @srp_it_nexus_response, align 4
  %17 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %18 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %21 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %21, i32 0, i32 0
  store i32 4, i32* %22, align 8
  %23 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %24 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %23, i32 0, i32 4
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %28 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32** %26, i32*** %31, align 8
  %32 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %33 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @srp_host_class, i32 0, i32 0), i32** %36, align 8
  %37 = load i32, i32* @srp_host_match, align 4
  %38 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %39 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 8
  %43 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %44 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %43, i32 0, i32 4
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %48 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %48, i32 0, i32 1
  %50 = call i32 @transport_container_register(%struct.TYPE_6__* %49)
  %51 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %52 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %51, i32 0, i32 3
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %56 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32** %54, i32*** %58, align 8
  %59 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %60 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @srp_rport_class, i32 0, i32 0), i32** %62, align 8
  %63 = load i32, i32* @srp_rport_match, align 4
  %64 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %65 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  store i32 0, i32* %4, align 4
  %68 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %69 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %68, i32 0, i32 3
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32*, i32** %70, i64 %73
  store i32* @dev_attr_port_id, i32** %74, align 8
  %75 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %76 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %75, i32 0, i32 3
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32*, i32** %77, i64 %80
  store i32* @dev_attr_roles, i32** %81, align 8
  %82 = load %struct.srp_function_template*, %struct.srp_function_template** %3, align 8
  %83 = getelementptr inbounds %struct.srp_function_template, %struct.srp_function_template* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %11
  %87 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %88 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %87, i32 0, i32 3
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32*, i32** %89, i64 %92
  store i32* @dev_attr_delete, i32** %93, align 8
  br label %94

94:                                               ; preds = %86, %11
  %95 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %96 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %95, i32 0, i32 3
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32*, i32** %97, i64 %100
  store i32* null, i32** %101, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %104 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %103, i32 0, i32 3
  %105 = load i32**, i32*** %104, align 8
  %106 = call i32 @ARRAY_SIZE(i32** %105)
  %107 = icmp sgt i32 %102, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @BUG_ON(i32 %108)
  %110 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %111 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %110, i32 0, i32 2
  %112 = call i32 @transport_container_register(%struct.TYPE_6__* %111)
  %113 = load %struct.srp_function_template*, %struct.srp_function_template** %3, align 8
  %114 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %115 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %114, i32 0, i32 1
  store %struct.srp_function_template* %113, %struct.srp_function_template** %115, align 8
  %116 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %117 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %116, i32 0, i32 0
  store %struct.scsi_transport_template* %117, %struct.scsi_transport_template** %2, align 8
  br label %118

118:                                              ; preds = %94, %10
  %119 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %2, align 8
  ret %struct.scsi_transport_template* %119
}

declare dso_local %struct.srp_internal* @kzalloc(i32, i32) #1

declare dso_local i32 @transport_container_register(%struct.TYPE_6__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
