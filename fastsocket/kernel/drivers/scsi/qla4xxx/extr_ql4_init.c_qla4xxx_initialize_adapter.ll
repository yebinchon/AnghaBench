; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_initialize_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_initialize_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)* }

@QLA_ERROR = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Configuring PCI space...\0A\00", align 1
@RESET_ADAPTER = common dso_local global i32 0, align 4
@AF_ONLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"scsi%ld: initialize adapter: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"SUCCEEDED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_initialize_adapter(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @QLA_ERROR, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @KERN_INFO, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = call i32 @ql4_printk(i32 %9, %struct.scsi_qla_host* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %15, align 8
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %18 = call i32 %16(%struct.scsi_qla_host* %17)
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %22, align 8
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %25 = call i32 %23(%struct.scsi_qla_host* %24)
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %29, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %32 = call i32 %30(%struct.scsi_qla_host* %31)
  %33 = load i32, i32* @QLA_ERROR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %82

36:                                               ; preds = %2
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = call i64 @is_qla8032(%struct.scsi_qla_host* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %42 = call i32 @qla4_83xx_enable_mbox_intrs(%struct.scsi_qla_host* %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %45 = call i32 @qla4xxx_about_firmware(%struct.scsi_qla_host* %44)
  %46 = load i32, i32* @QLA_ERROR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %82

49:                                               ; preds = %43
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %53, align 8
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %56 = call i32 %54(%struct.scsi_qla_host* %55)
  %57 = load i32, i32* @QLA_ERROR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %82

60:                                               ; preds = %49
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %62 = call i32 @qla4xxx_init_local_data(%struct.scsi_qla_host* %61)
  %63 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %64 = call i32 @qla4xxx_init_firmware(%struct.scsi_qla_host* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @QLA_ERROR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %82

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @RESET_ADAPTER, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @qla4xxx_build_ddb_list(%struct.scsi_qla_host* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* @AF_ONLINE, align 4
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %80 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %79, i32 0, i32 1
  %81 = call i32 @set_bit(i32 %78, i32* %80)
  br label %82

82:                                               ; preds = %77, %68, %59, %48, %35
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %84 = call i64 @is_qla80XX(%struct.scsi_qla_host* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @QLA_ERROR, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %92 = call i32 @qla4xxx_free_irqs(%struct.scsi_qla_host* %91)
  br label %93

93:                                               ; preds = %90, %86, %82
  %94 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %95 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @QLA_ERROR, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %102 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %96, i8* %101)
  %103 = call i32 @DEBUG2(i32 %102)
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_83xx_enable_mbox_intrs(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_about_firmware(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_init_local_data(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_init_firmware(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_build_ddb_list(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @is_qla80XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_free_irqs(%struct.scsi_qla_host*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @printk(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
