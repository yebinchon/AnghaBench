; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_host_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_host_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.beiscsi_hba = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"BS_%d : In beiscsi_get_host_param, param= %d\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"BS_%d : beiscsi_get_macaddr Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"BS_%d : Retreiving Initiator Name Failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"BS_%d : Retreiving Port Speed Failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_get_host_param(%struct.Scsi_Host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.beiscsi_hba*, align 8
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %11 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %10)
  store %struct.beiscsi_hba* %11, %struct.beiscsi_hba** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %67 [
    i32 131, label %18
    i32 130, label %31
    i32 128, label %44
    i32 129, label %51
  ]

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %21 = call i32 @beiscsi_get_macaddr(i8* %19, %struct.beiscsi_hba* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %28 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %74

30:                                               ; preds = %18
  br label %72

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %34 = call i32 @beiscsi_get_initname(i8* %32, %struct.beiscsi_hba* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %41 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %74

43:                                               ; preds = %31
  br label %72

44:                                               ; preds = %3
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %46 = call i32 @beiscsi_get_port_state(%struct.Scsi_Host* %45)
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %49 = call i8* @iscsi_get_port_state_name(%struct.Scsi_Host* %48)
  %50 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %9, align 4
  br label %72

51:                                               ; preds = %3
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %53 = call i32 @beiscsi_get_port_speed(%struct.Scsi_Host* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %58 = load i32, i32* @KERN_ERR, align 4
  %59 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %60 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %74

62:                                               ; preds = %51
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %65 = call i8* @iscsi_get_port_speed_name(%struct.Scsi_Host* %64)
  %66 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  store i32 %66, i32* %9, align 4
  br label %72

67:                                               ; preds = %3
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @iscsi_host_get_param(%struct.Scsi_Host* %68, i32 %69, i8* %70)
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; preds = %62, %44, %43, %30
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %67, %56, %37, %24
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @beiscsi_get_macaddr(i8*, %struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_get_initname(i8*, %struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_get_port_state(%struct.Scsi_Host*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @iscsi_get_port_state_name(%struct.Scsi_Host*) #1

declare dso_local i32 @beiscsi_get_port_speed(%struct.Scsi_Host*) #1

declare dso_local i8* @iscsi_get_port_speed_name(%struct.Scsi_Host*) #1

declare dso_local i32 @iscsi_host_get_param(%struct.Scsi_Host*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
