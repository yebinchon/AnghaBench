; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_req_to_bsgjob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_req_to_bsgjob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32 }
%struct.fc_rport = type { i32 }
%struct.request = type { i64, i32, i32, i64, %struct.fc_bsg_job*, %struct.request* }
%struct.fc_bsg_job = type { i32, %struct.TYPE_4__, i32*, i32, %struct.TYPE_4__, i32, i32, i32, %struct.fc_bsg_request*, i32, i8*, %struct.request*, %struct.fc_rport*, %struct.Scsi_Host* }
%struct.TYPE_4__ = type { %struct.fc_bsg_job* }
%struct.fc_bsg_request = type { i32 }
%struct.fc_internal = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@fc_bsg_jobdone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.fc_rport*, %struct.request*)* @fc_req_to_bsgjob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_req_to_bsgjob(%struct.Scsi_Host* %0, %struct.fc_rport* %1, %struct.request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.fc_rport*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.fc_internal*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.fc_bsg_job*, align 8
  %11 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.fc_rport* %1, %struct.fc_rport** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.fc_internal* @to_fc_internal(i32 %14)
  store %struct.fc_internal* %15, %struct.fc_internal** %8, align 8
  %16 = load %struct.request*, %struct.request** %7, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 5
  %18 = load %struct.request*, %struct.request** %17, align 8
  store %struct.request* %18, %struct.request** %9, align 8
  %19 = load %struct.request*, %struct.request** %7, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 4
  %21 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %20, align 8
  %22 = call i32 @BUG_ON(%struct.fc_bsg_job* %21)
  %23 = load %struct.fc_internal*, %struct.fc_internal** %8, align 8
  %24 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 104, %27
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.fc_bsg_job* @kzalloc(i64 %28, i32 %29)
  store %struct.fc_bsg_job* %30, %struct.fc_bsg_job** %10, align 8
  %31 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %32 = icmp ne %struct.fc_bsg_job* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %148

36:                                               ; preds = %3
  %37 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %38 = load %struct.request*, %struct.request** %7, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 4
  store %struct.fc_bsg_job* %37, %struct.fc_bsg_job** %39, align 8
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %41 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %42 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %41, i32 0, i32 13
  store %struct.Scsi_Host* %40, %struct.Scsi_Host** %42, align 8
  %43 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %44 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %45 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %44, i32 0, i32 12
  store %struct.fc_rport* %43, %struct.fc_rport** %45, align 8
  %46 = load %struct.request*, %struct.request** %7, align 8
  %47 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %48 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %47, i32 0, i32 11
  store %struct.request* %46, %struct.request** %48, align 8
  %49 = load %struct.fc_internal*, %struct.fc_internal** %8, align 8
  %50 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %36
  %56 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %57 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %56, i64 1
  %58 = bitcast %struct.fc_bsg_job* %57 to i8*
  %59 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %60 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %59, i32 0, i32 10
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %55, %36
  %62 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %63 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %62, i32 0, i32 9
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load %struct.request*, %struct.request** %7, align 8
  %66 = getelementptr inbounds %struct.request, %struct.request* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.fc_bsg_request*
  %69 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %70 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %69, i32 0, i32 8
  store %struct.fc_bsg_request* %68, %struct.fc_bsg_request** %70, align 8
  %71 = load %struct.request*, %struct.request** %7, align 8
  %72 = getelementptr inbounds %struct.request, %struct.request* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %75 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load %struct.request*, %struct.request** %7, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %80 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %82 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %83 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.request*, %struct.request** %7, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %61
  %89 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %90 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %89, i32 0, i32 1
  %91 = load %struct.request*, %struct.request** %7, align 8
  %92 = call i32 @fc_bsg_map_buffer(%struct.TYPE_4__* %90, %struct.request* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %143

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %61
  %98 = load %struct.request*, %struct.request** %9, align 8
  %99 = icmp ne %struct.request* %98, null
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.request*, %struct.request** %9, align 8
  %102 = getelementptr inbounds %struct.request, %struct.request* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %107 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %106, i32 0, i32 4
  %108 = load %struct.request*, %struct.request** %9, align 8
  %109 = call i32 @fc_bsg_map_buffer(%struct.TYPE_4__* %107, %struct.request* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %137

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %100, %97
  %115 = load i32, i32* @fc_bsg_jobdone, align 4
  %116 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %117 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %119 = icmp ne %struct.fc_rport* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %122 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %121, i32 0, i32 0
  %123 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %124 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %123, i32 0, i32 2
  store i32* %122, i32** %124, align 8
  br label %130

125:                                              ; preds = %114
  %126 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %127 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %126, i32 0, i32 0
  %128 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %129 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %128, i32 0, i32 2
  store i32* %127, i32** %129, align 8
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %132 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @get_device(i32* %133)
  %135 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %136 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  store i32 0, i32* %4, align 4
  br label %148

137:                                              ; preds = %112
  %138 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %139 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %140, align 8
  %142 = call i32 @kfree(%struct.fc_bsg_job* %141)
  br label %143

143:                                              ; preds = %137, %95
  %144 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %10, align 8
  %145 = call i32 @kfree(%struct.fc_bsg_job* %144)
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %143, %130, %33
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.fc_internal* @to_fc_internal(i32) #1

declare dso_local i32 @BUG_ON(%struct.fc_bsg_job*) #1

declare dso_local %struct.fc_bsg_job* @kzalloc(i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @fc_bsg_map_buffer(%struct.TYPE_4__*, %struct.request*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @kfree(%struct.fc_bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
