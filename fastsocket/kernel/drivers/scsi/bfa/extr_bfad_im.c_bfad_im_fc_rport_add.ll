; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_fc_rport_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_fc_rport_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_im_port_s = type { i32 }
%struct.bfad_itnim_s = type { i32, i32, %struct.fc_rport* }
%struct.fc_rport = type { i32, %struct.bfad_itnim_data_s*, i32, i32 }
%struct.bfad_itnim_data_s = type { %struct.bfad_itnim_s* }
%struct.fc_rport_identifiers = type { i32, i32, i8*, i8* }

@FC_RPORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@MAX_FCP_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfad_im_port_s*, %struct.bfad_itnim_s*)* @bfad_im_fc_rport_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfad_im_fc_rport_add(%struct.bfad_im_port_s* %0, %struct.bfad_itnim_s* %1) #0 {
  %3 = alloca %struct.bfad_im_port_s*, align 8
  %4 = alloca %struct.bfad_itnim_s*, align 8
  %5 = alloca %struct.fc_rport_identifiers, align 8
  %6 = alloca %struct.fc_rport*, align 8
  %7 = alloca %struct.bfad_itnim_data_s*, align 8
  store %struct.bfad_im_port_s* %0, %struct.bfad_im_port_s** %3, align 8
  store %struct.bfad_itnim_s* %1, %struct.bfad_itnim_s** %4, align 8
  %8 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %9 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %8, i32 0, i32 1
  %10 = call i32 @bfa_fcs_itnim_get_nwwn(i32* %9)
  %11 = call i8* @cpu_to_be64(i32 %10)
  %12 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 3
  store i8* %11, i8** %12, align 8
  %13 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %14 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %13, i32 0, i32 1
  %15 = call i32 @bfa_fcs_itnim_get_pwwn(i32* %14)
  %16 = call i8* @cpu_to_be64(i32 %15)
  %17 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %18, i32 0, i32 1
  %20 = call i32 @bfa_fcs_itnim_get_fcid(i32* %19)
  %21 = call i32 @bfa_hton3b(i32 %20)
  %22 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %24 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.fc_rport* @fc_remote_port_add(i32 %27, i32 0, %struct.fc_rport_identifiers* %5)
  store %struct.fc_rport* %28, %struct.fc_rport** %6, align 8
  %29 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %29, i32 0, i32 2
  store %struct.fc_rport* %28, %struct.fc_rport** %30, align 8
  %31 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %32 = icmp ne %struct.fc_rport* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %82

34:                                               ; preds = %2
  %35 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %35, i32 0, i32 1
  %37 = call i32 @bfa_fcs_itnim_get_maxfrsize(i32* %36)
  %38 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %39 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %41 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %40, i32 0, i32 1
  %42 = call i32 @bfa_fcs_itnim_get_cos(i32* %41)
  %43 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %44 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %46 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %45, i32 0, i32 1
  %47 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %46, align 8
  store %struct.bfad_itnim_data_s* %47, %struct.bfad_itnim_data_s** %7, align 8
  %48 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %49 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %7, align 8
  %50 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %49, i32 0, i32 0
  store %struct.bfad_itnim_s* %48, %struct.bfad_itnim_s** %50, align 8
  %51 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %52 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 8
  %55 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %34
  %60 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %61 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @fc_remote_port_rolechg(%struct.fc_rport* %60, i32 %62)
  br label %64

64:                                               ; preds = %59, %34
  %65 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %66 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %71 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MAX_FCP_TARGET, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %77 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %4, align 8
  %80 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %69, %64
  br label %82

82:                                               ; preds = %81, %33
  ret void
}

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @bfa_fcs_itnim_get_nwwn(i32*) #1

declare dso_local i32 @bfa_fcs_itnim_get_pwwn(i32*) #1

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @bfa_fcs_itnim_get_fcid(i32*) #1

declare dso_local %struct.fc_rport* @fc_remote_port_add(i32, i32, %struct.fc_rport_identifiers*) #1

declare dso_local i32 @bfa_fcs_itnim_get_maxfrsize(i32*) #1

declare dso_local i32 @bfa_fcs_itnim_get_cos(i32*) #1

declare dso_local i32 @fc_remote_port_rolechg(%struct.fc_rport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
