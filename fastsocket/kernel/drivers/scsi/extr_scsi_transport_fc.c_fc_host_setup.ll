; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_host_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_host_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport_container = type { i32 }
%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_host_attrs = type { i32, i32, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i32, i32 }

@FC_COS_UNSPECIFIED = common dso_local global i32 0, align 4
@FC_PORTSPEED_UNKNOWN = common dso_local global i8* null, align 8
@FC_PORTTYPE_UNKNOWN = common dso_local global i32 0, align 4
@FC_PORTSTATE_UNKNOWN = common dso_local global i32 0, align 4
@FC_TGTID_BIND_BY_WWPN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fc_wq_%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fc_dev_loss_tmo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fc_dl_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport_container*, %struct.device*, %struct.device*)* @fc_host_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_host_setup(%struct.transport_container* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.transport_container*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.fc_host_attrs*, align 8
  store %struct.transport_container* %0, %struct.transport_container** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %8, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %13 = call %struct.fc_host_attrs* @shost_to_fc_host(%struct.Scsi_Host* %12)
  store %struct.fc_host_attrs* %13, %struct.fc_host_attrs** %9, align 8
  %14 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %15 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %17 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %19 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %18, i32 0, i32 2
  store i32 -1, i32* %19, align 8
  %20 = load i32, i32* @FC_COS_UNSPECIFIED, align 4
  %21 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %22 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %21, i32 0, i32 36
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %24 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %23, i32 0, i32 35
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @memset(i32 %25, i32 0, i32 4)
  %27 = load i8*, i8** @FC_PORTSPEED_UNKNOWN, align 8
  %28 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %29 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %28, i32 0, i32 34
  store i8* %27, i8** %29, align 8
  %30 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %31 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %30, i32 0, i32 3
  store i32 -1, i32* %31, align 4
  %32 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %33 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %32, i32 0, i32 33
  store i64 0, i64* %33, align 8
  %34 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %35 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %34, i32 0, i32 32
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memset(i32 %36, i32 0, i32 4)
  %38 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %39 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %38, i32 0, i32 31
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memset(i32 %40, i32 0, i32 4)
  %42 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %43 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %42, i32 0, i32 30
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memset(i32 %44, i32 0, i32 4)
  %46 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %47 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %46, i32 0, i32 29
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(i32 %48, i32 0, i32 4)
  %50 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %51 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %50, i32 0, i32 28
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memset(i32 %52, i32 0, i32 4)
  %54 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %55 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %54, i32 0, i32 27
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memset(i32 %56, i32 0, i32 4)
  %58 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %59 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %58, i32 0, i32 26
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memset(i32 %60, i32 0, i32 4)
  %62 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %63 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %62, i32 0, i32 25
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memset(i32 %64, i32 0, i32 4)
  %66 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %67 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %66, i32 0, i32 4
  store i32 -1, i32* %67, align 8
  %68 = load i32, i32* @FC_PORTTYPE_UNKNOWN, align 4
  %69 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %70 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %69, i32 0, i32 24
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @FC_PORTSTATE_UNKNOWN, align 4
  %72 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %73 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %72, i32 0, i32 23
  store i32 %71, i32* %73, align 4
  %74 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %75 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %74, i32 0, i32 22
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memset(i32 %76, i32 0, i32 4)
  %78 = load i8*, i8** @FC_PORTSPEED_UNKNOWN, align 8
  %79 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %80 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %79, i32 0, i32 21
  store i8* %78, i8** %80, align 8
  %81 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %82 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %81, i32 0, i32 5
  store i32 -1, i32* %82, align 4
  %83 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %84 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %83, i32 0, i32 20
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memset(i32 %85, i32 0, i32 4)
  %87 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %88 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %87, i32 0, i32 19
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @memset(i32 %89, i32 0, i32 4)
  %91 = load i32, i32* @FC_TGTID_BIND_BY_WWPN, align 4
  %92 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %93 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %92, i32 0, i32 18
  store i32 %91, i32* %93, align 4
  %94 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %95 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %94, i32 0, i32 17
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %98 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %97, i32 0, i32 16
  %99 = call i32 @INIT_LIST_HEAD(i32* %98)
  %100 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %101 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %100, i32 0, i32 15
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %104 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %103, i32 0, i32 14
  store i64 0, i64* %104, align 8
  %105 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %106 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %105, i32 0, i32 13
  store i64 0, i64* %106, align 8
  %107 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %108 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %107, i32 0, i32 12
  store i64 0, i64* %108, align 8
  %109 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %110 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %109, i32 0, i32 11
  store i64 0, i64* %110, align 8
  %111 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %112 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %115 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @snprintf(i32 %113, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %119 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @create_singlethread_workqueue(i32 %120)
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %124 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %123, i32 0, i32 6
  store i32* %122, i32** %124, align 8
  %125 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %126 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %125, i32 0, i32 6
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %3
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %166

132:                                              ; preds = %3
  %133 = load i32, i32* @fc_dev_loss_tmo, align 4
  %134 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %135 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 4
  %136 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %137 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %140 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @snprintf(i32 %138, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  %143 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %144 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @create_singlethread_workqueue(i32 %145)
  %147 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %148 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %147, i32 0, i32 7
  store i8* %146, i8** %148, align 8
  %149 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %150 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %149, i32 0, i32 7
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %162, label %153

153:                                              ; preds = %132
  %154 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %155 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @destroy_workqueue(i32* %156)
  %158 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %159 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %158, i32 0, i32 6
  store i32* null, i32** %159, align 8
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %166

162:                                              ; preds = %132
  %163 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %164 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %9, align 8
  %165 = call i32 @fc_bsg_hostadd(%struct.Scsi_Host* %163, %struct.fc_host_attrs* %164)
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %162, %153, %129
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.fc_host_attrs* @shost_to_fc_host(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i8* @create_singlethread_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @fc_bsg_hostadd(%struct.Scsi_Host*, %struct.fc_host_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
