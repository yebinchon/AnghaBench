; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ips_info.buffer = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [9 x i8] c"ips_info\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s%s%s Build %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"IBM PCI ServeRAID \00", align 1
@IPS_VERSION_HIGH = common dso_local global i8* null, align 8
@IPS_VERSION_LOW = common dso_local global i32 0, align 4
@IPS_BUILD_IDENT = common dso_local global i32 0, align 4
@MAX_ADAPTER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@ips_adapter_name = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Scsi_Host*)* @ips_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ips_info(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %6 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = call %struct.TYPE_3__* @IPS_HA(%struct.Scsi_Host* %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %47

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ips_info.buffer, i64 0, i64 0), i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @memset(i8* %13, i32 0, i32 256)
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** @IPS_VERSION_HIGH, align 8
  %17 = load i32, i32* @IPS_VERSION_LOW, align 4
  %18 = load i32, i32* @IPS_BUILD_IDENT, align 4
  %19 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %12
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAX_ADAPTER_NAME, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcat(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i8*, i8** %4, align 8
  %34 = load i8**, i8*** @ips_adapter_name, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %34, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcat(i8* %33, i8* %41)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strcat(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %30, %24, %12
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** %2, align 8
  br label %47

47:                                               ; preds = %45, %11
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local %struct.TYPE_3__* @IPS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
