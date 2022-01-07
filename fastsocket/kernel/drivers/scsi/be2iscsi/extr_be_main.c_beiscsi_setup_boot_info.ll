; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_setup_boot_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_setup_boot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_boot_kobj = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@beiscsi_show_boot_tgt_info = common dso_local global i32 0, align 4
@beiscsi_tgt_get_attr_visibility = common dso_local global i32 0, align 4
@beiscsi_boot_release = common dso_local global i32 0, align 4
@beiscsi_show_boot_ini_info = common dso_local global i32 0, align 4
@beiscsi_ini_get_attr_visibility = common dso_local global i32 0, align 4
@beiscsi_show_boot_eth_info = common dso_local global i32 0, align 4
@beiscsi_eth_get_attr_visibility = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_setup_boot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_setup_boot_info(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.iscsi_boot_kobj*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %6 = call i64 @beiscsi_get_boot_info(%struct.beiscsi_hba* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

9:                                                ; preds = %1
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @iscsi_boot_create_host_kset(i32 %14)
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %19 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %9
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %95

25:                                               ; preds = %9
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %27 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @scsi_host_get(%struct.TYPE_3__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %88

32:                                               ; preds = %25
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %34 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %37 = load i32, i32* @beiscsi_show_boot_tgt_info, align 4
  %38 = load i32, i32* @beiscsi_tgt_get_attr_visibility, align 4
  %39 = load i32, i32* @beiscsi_boot_release, align 4
  %40 = call %struct.iscsi_boot_kobj* @iscsi_boot_create_target(i32 %35, i32 0, %struct.beiscsi_hba* %36, i32 %37, i32 %38, i32 %39)
  store %struct.iscsi_boot_kobj* %40, %struct.iscsi_boot_kobj** %4, align 8
  %41 = load %struct.iscsi_boot_kobj*, %struct.iscsi_boot_kobj** %4, align 8
  %42 = icmp ne %struct.iscsi_boot_kobj* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %83

44:                                               ; preds = %32
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %46 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 @scsi_host_get(%struct.TYPE_3__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %88

51:                                               ; preds = %44
  %52 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %53 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %56 = load i32, i32* @beiscsi_show_boot_ini_info, align 4
  %57 = load i32, i32* @beiscsi_ini_get_attr_visibility, align 4
  %58 = load i32, i32* @beiscsi_boot_release, align 4
  %59 = call %struct.iscsi_boot_kobj* @iscsi_boot_create_initiator(i32 %54, i32 0, %struct.beiscsi_hba* %55, i32 %56, i32 %57, i32 %58)
  store %struct.iscsi_boot_kobj* %59, %struct.iscsi_boot_kobj** %4, align 8
  %60 = load %struct.iscsi_boot_kobj*, %struct.iscsi_boot_kobj** %4, align 8
  %61 = icmp ne %struct.iscsi_boot_kobj* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %51
  br label %83

63:                                               ; preds = %51
  %64 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %65 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = call i32 @scsi_host_get(%struct.TYPE_3__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %88

70:                                               ; preds = %63
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %72 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %75 = load i32, i32* @beiscsi_show_boot_eth_info, align 4
  %76 = load i32, i32* @beiscsi_eth_get_attr_visibility, align 4
  %77 = load i32, i32* @beiscsi_boot_release, align 4
  %78 = call %struct.iscsi_boot_kobj* @iscsi_boot_create_ethernet(i32 %73, i32 0, %struct.beiscsi_hba* %74, i32 %75, i32 %76, i32 %77)
  store %struct.iscsi_boot_kobj* %78, %struct.iscsi_boot_kobj** %4, align 8
  %79 = load %struct.iscsi_boot_kobj*, %struct.iscsi_boot_kobj** %4, align 8
  %80 = icmp ne %struct.iscsi_boot_kobj* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  br label %83

82:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %95

83:                                               ; preds = %81, %62, %43
  %84 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %85 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = call i32 @scsi_host_put(%struct.TYPE_3__* %86)
  br label %88

88:                                               ; preds = %83, %69, %50, %31
  %89 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %90 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @iscsi_boot_destroy_kset(i32 %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %88, %82, %22, %8
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @beiscsi_get_boot_info(%struct.beiscsi_hba*) #1

declare dso_local i32 @iscsi_boot_create_host_kset(i32) #1

declare dso_local i32 @scsi_host_get(%struct.TYPE_3__*) #1

declare dso_local %struct.iscsi_boot_kobj* @iscsi_boot_create_target(i32, i32, %struct.beiscsi_hba*, i32, i32, i32) #1

declare dso_local %struct.iscsi_boot_kobj* @iscsi_boot_create_initiator(i32, i32, %struct.beiscsi_hba*, i32, i32, i32) #1

declare dso_local %struct.iscsi_boot_kobj* @iscsi_boot_create_ethernet(i32, i32, %struct.beiscsi_hba*, i32, i32, i32) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_3__*) #1

declare dso_local i32 @iscsi_boot_destroy_kset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
